# Repository Catalog (Workspace Snapshot)

Workspace: `/Users/zhangbin/GitHub`  
Snapshot date: **2026-03-04**

## Category Legend

- `GOV`: Governance & Control Plane
- `PROTO`: Protocols & Standards
- `APP`: Domain Applications
- `INT`: Framework Integrations
- `RND`: Research & Experiments
- `OPS`: Operations & Incubation

## Full Catalog

| Repository | Category | Primary Role | Upstream | Priority |
| --- | --- | --- | --- | --- |
| `edo-architecture-index` | GOV | Global entrypoint and classification governance | - | P0 |
| `RedRock-Constitution` | GOV | Constitution, standards registry, ecosystem governance | - | P0 |
| `aro-audit` | GOV | Post-action cryptographic replay audit and accountability | - | P0 |
| `safety-valve-spec` | GOV | Runtime action-boundary receipt and conformance spec | - | P0 |
| `god-spear` | GOV | CI trust-boundary gate before deployment | - | P0 |
| `token-governor` | GOV | Runtime token/cost policy governance | - | P1 |
| `agent-object-protocol` | PROTO | Agent interoperability artifact standard | - | P0 |
| `execution-integrity-core` | PROTO | Minimal execution integrity proof model | - | P1 |
| `fdo-kernel-mvk` | PROTO | Deterministic minimal verifiable kernel | - | P0 |
| `pFDO-Specification` | PROTO | Physical FAIR Digital Object specification suite | - | P0 |
| `DOIP-Segments-Specification` | PROTO | DOIP segment schema and interoperability assets | FDO-Implementations | P1 |
| `AASP-Core` | PROTO | Adaptive Agent Sovereignty protocol core | - | P1 |
| `ISAS-Core` | PROTO | Industrial sovereign autonomy standard core | - | P1 |
| `Kinetic-Robotics-FDO-Sovereignty` | PROTO | Robotics sovereignty model and standards | - | P1 |
| `China-Precision-Mold-FDO-Standard` | PROTO | Precision manufacturing FDO/DOIP standard | - | P1 |
| `MCP-Legal-China` | APP | Chinese legal MCP service and compliance engine | - | P0 |
| `redrock-opendpp-core` | APP | EU DPP object model for export compliance | - | P1 |
| `mcp-agent-ei` | INT | Integration fork for MCP Agent framework | lastmile-ai/mcp-agent | P1 |
| `agno-ei` | INT | Integration fork for Agno agent framework | agno-agi/agno | P2 |
| `pydantic-ai-ei` | INT | Integration fork for Pydantic AI framework | pydantic/pydantic-ai | P2 |
| `freeact-ei` | INT | Integration fork for Freeact harness | gradion-ai/freeact | P2 |
| `ToolAgents-ei` | INT | Integration fork for ToolAgents framework | Maximilian-Winter/ToolAgents | P2 |
| `gptme` | INT | Integration fork for gptme terminal agent | gptme/gptme | P2 |
| `rlcp-experiments` | RND | Reproducible RLCP retention-boundary experiments | - | P2 |
| `rlcp-scale-study` | RND | RLCP scaling study workspace | - | P2 |
| `_spear-rollout` | OPS | Local rollout scripts and execution logs | - | P1 |
| `saomiao` | OPS | Empty placeholder folder (needs decision) | - | P2 |

## Key Logic Chain

1. Pre-release control: `god-spear` blocks unsafe automation in CI.
2. Runtime control: `safety-valve-spec` defines action boundary receipts.
3. Post-action proof: `aro-audit` verifies tamper-evident replay.
4. Domain landing: `MCP-Legal-China` and `redrock-opendpp-core` consume controls.
5. Ecosystem diffusion: integration forks (`*-ei`, `gptme`) propagate approach.

## Intake Rules For New Folders

1. Any new top-level folder must be assigned one category within 24 hours.
2. Category owner must add one-sentence role description.
3. If folder has external upstream, mark it as `INT` unless there is a strong exception.
4. If folder has no `.git`, classify as `OPS` until promoted.

## Untracked Artifact Note

- File `agent-object-protocol.zip` exists at workspace root and is not a repository.
- Keep binary bundles out of this catalog unless they become a managed release artifact.
