# Maxwell–Schrödinger System

STATUS = B_TIER_HULL_INITIALIZATION

This repository develops an exact periodic Maxwell–Schrödinger system, its stationary electrostatic sector, the number-preserving profile-transfer operator, and the conditional `a_dagger` magnetic-dressing extension.

## Frozen scope

- Domain: unit three-torus `T^3`.
- Gauge: Coulomb gauge, `div A = 0`, zero-mean scalar potential.
- Matter: normalized spinless Schrödinger field.
- Charge: neutralized periodic density `q (|psi|^2 - 1)`.
- Maxwell source: the minimal-coupling matter current.
- Stationary core: prescribed positive normalized profile `chi` with an explicitly reconstructed binding potential.
- Conditional extension: smooth transverse `a_dagger` magnetic dressing with an explicit external-current defect.
- Validation: analytical identities and numerical convergence endpoints are separated from physical interpretation.

## Tier discipline

Prepared statements and derivations are B-tier until exact Lean files pass a matching external compiler and theorem-level axiom audit. No B-tier document establishes A-tier status.

## Initial layout

```text
B_TIER/
  MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt
  ENDPOINT_INDEX.md
  OBLIGATION_GRAPH.md
  VALIDATION_ENDPOINTS.md
```

The root theorem, definitions, exact derivations, and unresolved premises are recorded in the B-tier files.
