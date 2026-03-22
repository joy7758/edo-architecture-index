<!-- language-switch:start -->
[English](./README.md) | [中文](./README.zh-CN.md)
<!-- language-switch:end -->

# EDO Workspace Index

This repository is the single entry point for the local workspace at
`/Users/zhangbin/GitHub`.

Snapshot date: **2026-03-04**

Goal: replace a flat, noisy folder list with a stable navigation model:
`Governance -> Protocols -> Applications -> Integrations -> Research -> Ops`.

## Quick Entry

- If you want ecosystem governance first:
  - `RedRock-Constitution` -> `god-spear` -> `safety-valve-spec` -> `aro-audit`
- If you want protocol and standards first:
  - `agent-object-protocol` -> `execution-integrity-core` -> `fdo-kernel-mvk` -> `pFDO-Specification`
- If you want vertical business applications first:
  - `MCP-Legal-China` (LawTech) -> `redrock-opendpp-core` (EU DPP)

## Category Overview

| Category | Count | Core Purpose |
| --- | ---: | --- |
| Governance & Control Plane | 6 | Governance rules, audit chain, policy gates, cost governance |
| Protocols & Standards | 9 | Interoperability contracts, kernels, formal specifications |
| Domain Applications | 2 | Business-facing vertical implementations |
| Framework Integrations | 6 | Forks/integrations with upstream agent frameworks |
| Research & Experiments | 2 | Reproducible studies and scale validation |
| Operations & Incubation | 2 | Local rollout scripts and early-stage placeholders |

## Canonical Docs

- Full catalog: [REPO_CATALOG.md](REPO_CATALOG.md)
- Architecture rules: [ARCHITECTURE.md](ARCHITECTURE.md)
- Execution roadmap: [ROADMAP.md](ROADMAP.md)
- Workspace inventory script: [scripts/workspace_inventory.sh](scripts/workspace_inventory.sh)
- Catalog consistency check: [scripts/check_catalog_consistency.sh](scripts/check_catalog_consistency.sh)

## Maintenance Commands

```bash
# 1) Generate live workspace inventory table
bash scripts/workspace_inventory.sh /Users/zhangbin/GitHub

# 2) Verify REPO_CATALOG.md covers all top-level folders
bash scripts/check_catalog_consistency.sh /Users/zhangbin/GitHub REPO_CATALOG.md
```
