# edo-architecture-index

Research index for executable digital objects: minimal kernel, formal specification, and engineering applications.

## Layered Navigation

- Layer 0 (Kernel): `fdo-kernel-mvk`
  - Minimal Verifiable Kernel (MVK)
  - Causal closure and replay verifiability
  - Deterministic and dependency-free demonstrator
- Layer 1 (Specification): `pFDO-Specification`
  - Formal definitions, semantics, and model constraints
  - Documentation-led evolution
- Layer 2 (Applications): `aro-audit`, `safety-valve-spec`, `god-spear`
  - Domain implementations and integration-facing systems
  - Engineering variability is accepted at this layer

## Operating Principle

Layer boundaries are strict: Layer 0 is not expanded for product features, and higher layers do not modify Layer 0 semantics.
