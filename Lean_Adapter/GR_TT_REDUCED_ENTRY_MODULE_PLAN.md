# Reduced TT gravity entry — Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = QM_MAXWELL_GR_REDUCED_TT_ENTRY
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/GR/ADMCanonical.lean
MaxwellSchroedingerSystem/GR/CP1Obstruction.lean
MaxwellSchroedingerSystem/GR/LocalDarboux.lean
MaxwellSchroedingerSystem/GR/TTAction.lean
MaxwellSchroedingerSystem/GR/TTProfiles.lean
MaxwellSchroedingerSystem/GR/TTTwoMode.lean
MaxwellSchroedingerSystem/GR/HopfReduction.lean
MaxwellSchroedingerSystem/GR/TTCoefficient.lean
MaxwellSchroedingerSystem/GR/NormalizationGate.lean
MaxwellSchroedingerSystem/GR/ReductionNonselection.lean
MaxwellSchroedingerSystem/GR/GermComposition.lean
MaxwellSchroedingerSystem/GR/ReducedEntry.lean
```

## Proof spine

```text
ADM exactness
-> CP1 global obstruction
-> TT two-mode canonical form
-> Hopf reduction
-> explicit kappa_TT coefficient
-> one-quarter normalization equivalence
-> conditional root chain
```

The TT action normalization, profile scale law, frequency law, reduction level,
and same-orbit identification remain explicit hypotheses until independently
discharged. Prepared Lean code is at most `A_TIER_CANDIDATE`.
