# One-electron QM–Maxwell–GR graph-Laplacian operator Lean plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = TRISECTOR_GRAPH_LAPLACIAN_MERGED_OPERATOR
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/MergedOperator/CommonOrbit.lean
MaxwellSchroedingerSystem/MergedOperator/PushforwardReadout.lean
MaxwellSchroedingerSystem/MergedOperator/SectorKoopman.lean
MaxwellSchroedingerSystem/MergedOperator/GraphIsometry.lean
MaxwellSchroedingerSystem/MergedOperator/GraphLaplacian.lean
MaxwellSchroedingerSystem/MergedOperator/CompressedGenerator.lean
MaxwellSchroedingerSystem/MergedOperator/PenaltyGenerator.lean
MaxwellSchroedingerSystem/MergedOperator/RiggingSemigroup.lean
MaxwellSchroedingerSystem/MergedOperator/LeakageBound.lean
MaxwellSchroedingerSystem/MergedOperator/Main.lean
```

## Planned theorem spine

```text
CANONICAL_READOUT_UNITARY
CANONICAL_SECTOR_INTERTWINING
EXPLICIT_SYNCHRONIZATION_PROJECTOR
GRAPH_LAPLACIAN_DISAGREEMENT_IDENTITY
GRAPH_LAPLACIAN_PROJECTOR_IDENTITY
GRAPH_LAPLACIAN_COMMUTES_WITH_TIME_EVOLUTION
SYNCHRONIZED_COMPRESSED_GENERATOR
GRAPH_PENALTY_MASTER_GENERATOR
EXACT_GRAPH_RIGGING_FILTER
EXACT_LEAKAGE_CRITERION
FINITE_TIME_SYNCHRONIZATION_LEAKAGE_BOUND
TRISECTOR_GRAPH_LAPLACIAN_MERGED_OPERATOR
```

## Finite graph core

The finite-dimensional sector-index operator should be isolated first:

```lean
namespace MaxwellSchroedingerSystem.MergedOperator

abbrev Sector := Fin 3

-- Matrix of the complete graph K3.
def triGraphLaplacian : Matrix Sector Sector ℝ :=
  fun i j => if i = j then 2 else -1

-- The diagonal-sector projector.
def triSyncProjector : Matrix Sector Sector ℝ :=
  fun _ _ => 1 / 3

-- Target finite identity.
theorem triGraphLaplacian_eq_three_compl_projector :
  triGraphLaplacian = 3 • (1 - triSyncProjector) := ...

end MaxwellSchroedingerSystem.MergedOperator
```

The tensor-product or direct-sum lift to an observable Hilbert space follows only after the finite identity is established.

## Functional-analytic boundary

The formalization must preserve the following hypotheses explicitly:

```text
REDUCED_READOUT_EMBEDDINGS
MEASURABLE_INVERSES
PUSHFORWARD_MEASURE_REALIZATION
COMMON_COMPLETE_REDUCED_FLOW
SELF_ADJOINT_COMMON_GENERATOR
DOMAIN_PRESERVATION_FOR_P_SYNC
BOUNDED_COMMUTATOR_FOR_LEAKAGE_ESTIMATE
```

The approximate-leakage theorem must not suppress its domain and bounded-commutator assumptions.

## Promotion discipline

Prepared files establish at most `A_TIER_CANDIDATE`. Promotion requires a matching cached external compiler and theorem-level axiom audit. The physical premises

```text
DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION
DRESSED_EMD_TANGENCY_VERIFICATION
EMD_GR_PHYSICAL_SAME_ORBIT
GLOBAL_SOURCED_NONLINEAR_PERSISTENCE
```

must remain explicit.
