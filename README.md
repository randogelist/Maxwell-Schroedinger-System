# Maxwell–Schrödinger System

STATUS = B_TIER_HULL_ACTIVE

This repository develops an exact periodic Maxwell–Schrödinger system, its stationary electrostatic sector, the number-preserving profile-transfer operator, and the conditional `a_dagger` magnetic-dressing extension.

## Frozen scope

- Domain: unit three-torus `T^3`.
- Gauge: Coulomb gauge, `div A = 0`, zero-mean vector and scalar potentials.
- Matter: normalized spinless Schrödinger field.
- Charge: neutralized periodic density `q (|psi|^2 - 1)`.
- Maxwell source: the minimal-coupling matter current.
- Stationary core: positive normalized profile `chi` with an explicitly reconstructed binding potential.
- Conditional extension: smooth transverse `a_dagger` magnetic dressing with an explicit external-current defect.
- Validation: analytical identities and numerical convergence endpoints are separated from physical interpretation.

## B-tier hull

- [`MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt`](B_TIER/MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt) — exact equations, stationary theorem, energy-gap identity, profile-transfer algebra, `a_dagger` extension, and static no-go theorem.
- [`ENDPOINT_INDEX.md`](B_TIER/ENDPOINT_INDEX.md) — named endpoints and dependency status.
- [`OBLIGATION_GRAPH.md`](B_TIER/OBLIGATION_GRAPH.md) — analytic and formal proof graph.
- [`VALIDATION_ENDPOINTS.md`](B_TIER/VALIDATION_ENDPOINTS.md) — analytical, numerical, and benchmark tests.
- [`AGENTS.md`](AGENTS.md) — frozen formalization and cached-run contract.

## Current root

```text
MAXWELL_SCHROEDINGER_B_TIER_HULL
```

The strongest exact B-tier component is

```text
MS_EXACT_ENERGY_GAP
```

and the decisive conditional-extension result is

```text
STATIC_SPINLESS_MAGNETIC_NO_GO
```

which forces a nonzero static `a_dagger` magnetic dressing to retain an external-current, spin-current, additional-matter, or time-dependent premise.

## Tier discipline

Prepared statements and derivations are B-tier until exact Lean files pass a matching cached external compiler and theorem-level axiom audit. No B-tier document establishes A-tier status.
