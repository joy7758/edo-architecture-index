# Workspace Architecture

As of **2026-03-04**, the local workspace is organized by six layers.
This replaces ad-hoc grouping and gives each repository one primary owner layer.

## Layer Model

### L0: Governance & Control Plane

Purpose: define policy boundaries, auditability, and operating principles.

Representative repos:
- `RedRock-Constitution`
- `god-spear`
- `safety-valve-spec`
- `aro-audit`
- `token-governor`
- `edo-architecture-index`

### L1: Protocols & Standards

Purpose: publish stable contracts, kernels, and interoperability specs.

Representative repos:
- `agent-object-protocol`
- `execution-integrity-core`
- `fdo-kernel-mvk`
- `pFDO-Specification`
- `DOIP-Segments-Specification`
- `AASP-Core`
- `ISAS-Core`
- `Kinetic-Robotics-FDO-Sovereignty`
- `China-Precision-Mold-FDO-Standard`

### L2: Domain Applications

Purpose: convert standards into business-facing vertical value.

Representative repos:
- `MCP-Legal-China`
- `redrock-opendpp-core`

### L3: Framework Integrations

Purpose: bridge governance/protocol logic into mainstream agent frameworks.

Representative repos:
- `mcp-agent-ei`
- `agno-ei`
- `pydantic-ai-ei`
- `freeact-ei`
- `ToolAgents-ei`
- `gptme`

### L4: Research & Experiments

Purpose: run reproducible studies and scale exploration.

Representative repos:
- `rlcp-experiments`
- `rlcp-scale-study`

### L5: Operations & Incubation

Purpose: local rollout automation and early-stage placeholders.

Representative repos:
- `_spear-rollout`
- `saomiao`

## Flow Logic (From Rule to Value)

1. Governance layer defines "what is allowed" (`god-spear`, `safety-valve-spec`).
2. Protocol layer defines "how interoperability is represented" (`agent-object-protocol`, `pFDO-Specification`).
3. Domain layer delivers "where value lands" (`MCP-Legal-China`, `redrock-opendpp-core`).
4. Integration layer drives "how to connect with external ecosystems" (the `*-ei` and `gptme` repos).
5. Research layer validates edge conditions and limits (`rlcp-*` repos).
6. Ops layer supports rollout and staging.

## Classification Rules (Deterministic)

Use these rules in order. First match wins:

1. If folder is not a git repo (`.git` missing) and is mainly rollout/log/placeholder content, classify as `L5 Ops/Incubation`.
2. If folder is not a git repo but README/layout clearly marks experiment/study usage, classify as `L4 Research (provisional)`.
3. If `upstream` remote exists and points to third-party framework, classify as `L3 Integrations`.
4. If repo centers on `spec`, `standard`, `protocol`, `kernel`, classify as `L1 Protocols`.
5. If repo solves a vertical business/legal/compliance domain, classify as `L2 Domain`.
6. If repo is experiment-only or study workspace, classify as `L4 Research`.
7. Everything else that governs policy/audit/controls stays in `L0 Governance`.

## Non-Negotiable Boundaries

- L0 governance constraints cannot be bypassed by L2/L3 convenience.
- L1 protocol semantics cannot be silently altered by integration repos.
- L2 domain features can extend behavior but cannot rewrite L0/L1 definitions.
- L4 experiment outputs must never be treated as normative standards without L1 promotion.
