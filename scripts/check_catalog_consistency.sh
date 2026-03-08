#!/usr/bin/env bash
set -euo pipefail

workspace="${1:-/Users/zhangbin/GitHub}"
catalog="${2:-REPO_CATALOG.md}"

if [[ ! -d "${workspace}" ]]; then
  echo "ERROR: workspace not found: ${workspace}" >&2
  exit 1
fi

if [[ ! -f "${catalog}" ]]; then
  echo "ERROR: catalog file not found: ${catalog}" >&2
  exit 1
fi

tmpdir="$(mktemp -d)"
trap 'rm -rf "${tmpdir}"' EXIT

find "${workspace}" -mindepth 1 -maxdepth 1 -type d \
  -exec basename {} \; \
  | LC_ALL=C sort > "${tmpdir}/workspace.txt"

awk -F'`' '/^\| `[^`]+` \|/ {print $2}' "${catalog}" \
  | LC_ALL=C sort -u > "${tmpdir}/catalog.txt"

missing_in_catalog="$(comm -23 "${tmpdir}/workspace.txt" "${tmpdir}/catalog.txt" || true)"
missing_in_workspace="$(comm -13 "${tmpdir}/workspace.txt" "${tmpdir}/catalog.txt" || true)"

if [[ -z "${missing_in_catalog}" && -z "${missing_in_workspace}" ]]; then
  echo "PASS: catalog and workspace are consistent."
  exit 0
fi

echo "FAIL: catalog drift detected."

if [[ -n "${missing_in_catalog}" ]]; then
  echo
  echo "Folders present in workspace but missing in catalog:"
  echo "${missing_in_catalog}" | sed 's/^/- /'
fi

if [[ -n "${missing_in_workspace}" ]]; then
  echo
  echo "Repos listed in catalog but missing in workspace:"
  echo "${missing_in_workspace}" | sed 's/^/- /'
fi

exit 1
