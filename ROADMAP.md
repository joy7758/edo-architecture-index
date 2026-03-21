# Workspace Cleanup Roadmap

Start date: **2026-03-04**

## Phase 1 (Completed): Entry and Taxonomy Baseline

- Rebuilt `README.md` as a single navigation entry.
- Expanded architecture from 3 abstract layers to 6 practical layers.
- Created full catalog (`REPO_CATALOG.md`) for all top-level folders.
- Added inventory/check scripts to prevent future drift.

## Phase 2 (2026-03-05 to 2026-03-12): Low-Hanging Hygiene

- Add missing README for `_spear-rollout` and define operational scope.
- Decide whether `saomiao` is to be archived, renamed, or initialized.
- Normalize naming for integration forks:
  - Keep local suffix `-ei` for internal recognition.
  - Ensure remote repo descriptions explicitly state upstream lineage.

## Phase 3 (2026-03-13 to 2026-03-27): Cross-Repo Entry Consistency

- Add "Back to Index" link in each key repo README:
  - Required for: `aro-audit`, `MCP-Legal-China`, `agent-object-protocol`, `token-governor`.
- Enforce one-line "Role in ecosystem" in each core README intro.
- Maintain a single canonical category per repo (no multi-owner ambiguity).

## Phase 4 (2026-03-28 onward): Governance Automation

- Run weekly consistency check:
  - `bash scripts/check_catalog_consistency.sh <workspace-root> REPO_CATALOG.md`
- Any newly cloned folder must be categorized within 24 hours.
- Any repo removed/renamed must be reflected in catalog on the same day.

## Definition of Done

- New collaborator can identify where to start within 30 seconds.
- Every top-level folder has one clear category and one clear entry point.
- Catalog consistency script returns `PASS` continuously.
