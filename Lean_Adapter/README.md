# Lean_Adapter

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
MAIN_INSTANTIATION = MaxwellSchroedingerSystem.Main
LOCAL_LEAN_EXECUTIONS = 0
```

This folder is the unique formalization entry point for the Maxwell–Schrödinger B-tier hull.

## Planned native module graph

```text
MaxwellSchroedingerSystem/
  Geometry.lean
  Parameters.lean
  Spaces.lean
  FourierHodge.lean
  Gauge.lean
  Matter.lean
  ChargeCurrent.lean
  Maxwell.lean
  Schrodinger.lean
  CoulombReduction.lean
  Conservation.lean
  StationaryProfile.lean
  GroundStateTransform.lean
  EnergyGap.lean
  OrbitalStability.lean
  ProfileTransfer.lean
  ADagger.lean
  RegularityBridge.lean
  Validation.lean
  Main.lean
```

## Main root plan

```lean
namespace MaxwellSchroedingerSystem

def MaxwellSchroedingerBTierHull : Prop := ...

end MaxwellSchroedingerSystem
```

The final root must preserve:

\[
\mathbb T^3,\quad
\nabla\!\cdot A=0,\quad
\langle A\rangle=\langle\Phi\rangle=0,\quad
\rho_\psi=q(|\psi|^2-1),
\]

the minimal-coupling current, the stationary profile sector, the exact energy-gap theorem, and all named conditional premises of the `a_dagger` and regularity bridges.

## Proof-spine policy

```text
endpoint signatures
-> independent opaque edge theorems
-> cached native asynchronous elaboration
-> deterministic final chain
```

Scheduling may change. Statements, hypotheses, axioms, and endpoints may not change.

## Tier policy

- B-tier documents contain exact mathematical derivations.
- Prepared Lean files establish only `A_TIER_CANDIDATE`.
- `A_TIER` requires a matching external compiler and theorem-level axiom audit.
- `FORMAL_CLOSURE` preserves every unresolved analytic, semantic, certificate, witness, checker, and admission premise.
- No local Lean, Lake, elan, cache-clean, or dependency-clean command is permitted.

## Approved foundational axioms

```text
propext
Classical.choice
Quot.sound
```

No custom axiom, `sorry`, `admit`, unsafe proof construction, or `native_decide` proof axiom is approved.

## Endpoint folders

Every root checklist endpoint owns a top-level folder:

```text
derivation_of_<ENDPOINT>/
```

Each folder records the exact statement, inputs, dependencies, proof plan, validation plan, Lean signature plan, and promotion state.
