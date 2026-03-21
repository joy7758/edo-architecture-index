#!/usr/bin/env bash
set -euo pipefail

workspace="${1:-/GitHub}"

if [[ ! -d "${workspace}" ]]; then
  echo "ERROR: workspace not found: ${workspace}" >&2
  exit 1
fi

echo "# Workspace Inventory"
echo
echo "Workspace: \`${workspace}\`"
echo
echo "| Repository | Git | Branch | Origin | Upstream | README Title |"
echo "| --- | --- | --- | --- | --- | --- |"

for dir in "${workspace}"/*; do
  [[ -d "${dir}" ]] || continue

  repo="$(basename "${dir}")"
  is_git="no"
  branch="-"
  origin="-"
  upstream="-"
  readme_title="-"

  if [[ -d "${dir}/.git" ]]; then
    is_git="yes"
    branch="$(git -C "${dir}" symbolic-ref --short HEAD 2>/dev/null || echo "detached")"
    origin="$(git -C "${dir}" remote get-url origin 2>/dev/null || echo "-")"
    upstream="$(git -C "${dir}" remote get-url upstream 2>/dev/null || echo "-")"
  fi

  for candidate in \
    "${dir}/README.md" \
    "${dir}/README.MD" \
    "${dir}/README" \
    "${dir}/readme.md" \
    "${dir}/readme"; do
    if [[ -f "${candidate}" ]]; then
      snippet="$(sed -n '1,120p' "${candidate}" | tr -d '\r')"
      readme_title="$(
        printf '%s\n' "${snippet}" \
          | grep -m1 -E '^#{1,6}[[:space:]]+' || true
      )"
      if [[ -z "${readme_title}" ]]; then
        readme_title="$(
          printf '%s\n' "${snippet}" \
            | sed '/^[[:space:]]*$/d' \
            | head -n 1
        )"
      fi
      break
    fi
  done

  readme_title="${readme_title//|/\\|}"
  origin="${origin//|/\\|}"
  upstream="${upstream//|/\\|}"

  echo "| \`${repo}\` | ${is_git} | \`${branch}\` | \`${origin}\` | \`${upstream}\` | ${readme_title} |"
done
