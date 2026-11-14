# One-electron QM–Maxwell–GR merged-evolution Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = ONE_ELECTRON_QM_MAXWELL_GR_MERGED_EVOLUTION
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/Merged/Orbit.lean
MaxwellSchroedingerSystem/Merged/Readouts.lean
MaxwellSchroedingerSystem/Merged/Koopman.lean
MaxwellSchroedingerSystem/Merged/BlockOperator.lean
MaxwellSchroedingerSystem/Merged/SyncProjector.lean
MaxwellSchroedingerSystem/Merged/Leakage.lean
MaxwellSchroedingerSystem/Merged/TTMatching.lean
MaxwellSchroedingerSystem/Merged/Main.lean
```

## Planned theorem spine

```text
MERGED_GRAPH_CARRIER
MERGED_SECTOR_EVOLUTION
MERGED_OBSERVABLE_AUTOMORPHISM
TRISECTOR_KOOPMAN_UNITARY_GROUP
SECTOR_GENERATORS_ARE_UNITARILY_EQUIVALENT
TRISECTOR_SYNCHRONIZATION_PROJECTOR
MERGED_LEAKAGE_ZERO_IFF_GENERATOR_TANGENCY
MERGED_OPERATOR_SPECTRUM_ON_ANGULAR_MODES
MERGED_TT_MATCHING_CONDITIONS
ONE_ELECTRON_QM_MAXWELL_GR_MERGED_EVOLUTION
```

## Frozen algebraic core

```lean
namespace MaxwellSchroedingerSystem.Merged

structure ReducedMergedData where
  hbar : ℝ
  deltaE : ℝ
  KQR : ℝ
  deltaOmega : ℝ


def Matched (d : ReducedMergedData) : Prop :=
  d.KQR = d.hbar ∧
  d.deltaOmega = d.deltaE / d.hbar

end MaxwellSchroedingerSystem.Merged
```

## Promotion discipline

Prepared declarations establish at most `A_TIER_CANDIDATE`. Promotion requires a matching cached external compiler and theorem-level axiom audit. The premises `DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION`, `DRESSED_EMD_TANGENCY_VERIFICATION`, `EMD_GR_PHYSICAL_SAME_ORBIT`, `GLOBAL_SOURCED_NONLINEAR_PERSISTENCE`, and `SECTOR_READOUT_ISOMETRIES` may not be hidden or weakened.
