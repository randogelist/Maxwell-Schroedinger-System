# Refined QR–TT clock-synchronization Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = ONE_ELECTRON_QR_TT_CLOCKS_SYNCHRONIZED_REFINED
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/Clock/CP1Coordinates.lean
MaxwellSchroedingerSystem/Clock/QuantumTwoLevelGlobal.lean
MaxwellSchroedingerSystem/Clock/TTTwoModeNormalization.lean
MaxwellSchroedingerSystem/Clock/HopfReductionGlobal.lean
MaxwellSchroedingerSystem/Clock/MinimalPhaseSync.lean
MaxwellSchroedingerSystem/Clock/ActionMatching.lean
MaxwellSchroedingerSystem/Clock/HamiltonianMatching.lean
MaxwellSchroedingerSystem/Clock/FlowEquivalence.lean
MaxwellSchroedingerSystem/Clock/BlochObservables.lean
MaxwellSchroedingerSystem/Clock/DetuningBounds.lean
MaxwellSchroedingerSystem/Clock/TorusResonance.lean
MaxwellSchroedingerSystem/Clock/ScaleClockLocus.lean
MaxwellSchroedingerSystem/Clock/ProperTime.lean
MaxwellSchroedingerSystem/Clock/SynchronizationManifold.lean
MaxwellSchroedingerSystem/Clock/RefinedMain.lean
```

## Planned theorem spine

```text
ONE_ELECTRON_TWO_LEVEL_GLOBAL_FLOW
QR_TT_REDUCED_STRUCTURES
QR_TT_REDUCED_GLOBAL_FLOW
REDUCED_GLOBAL_SYNCHRONIZED_COMMON_INTERVAL
MINIMAL_PHASE_SYNCHRONIZATION_IFF
QR_TT_ACTION_MATCHING_IFF
QR_TT_HAMILTONIAN_MATCHING_IFF
REDUCED_CLOCK_FLOW_EQUIVALENCE_IFF
ONE_ELECTRON_QR_TT_CLOCKS_SYNCHRONIZED_REFINED
GLOBAL_BLOCH_ROTATION
OBSERVABLE_CLOCK_RECONSTRUCTION
ACTION_CLOCK_LOGICAL_INDEPENDENCE
CLOCK_DETUNING_IDENTITY
FINITE_TIME_CLOCK_ERROR_BOUND
REDUCED_SYNCHRONIZATION_IS_NEUTRAL
TORUS_TT_CLOCK_RESONANCE_REFINED
SIMULTANEOUS_SCALE_CLOCK_MATCHING_LOCUS
SAME_OBSERVER_PROPER_TIME_SYNCHRONIZATION
REDUCED_SYNCHRONIZATION_MANIFOLD_INVARIANT
```

## Frozen algebraic carrier

```lean
namespace MaxwellSchroedingerSystem.Clock

structure RefinedReducedClockData where
  hbar : ℝ
  KQR : ℝ
  E0 E1 : ℝ
  omega0 omega1 : ℝ
  phaseOffset : ℝ
  phaseQM0 phaseQR0 : ℝ
  hbar_pos : 0 < hbar
  KQR_pos : 0 < KQR


def PhaseMatched (d : RefinedReducedClockData) : Prop :=
  d.omega1 - d.omega0 = (d.E1 - d.E0) / d.hbar ∧
  d.phaseQR0 = d.phaseQM0 + d.phaseOffset


def ActionMatched (d : RefinedReducedClockData) : Prop :=
  d.KQR = d.hbar


def FullySynchronized (d : RefinedReducedClockData) : Prop :=
  ActionMatched d ∧ PhaseMatched d

end MaxwellSchroedingerSystem.Clock
```

## Formal separation

```text
PhaseMatched
  -> equality of reduced phase clocks for all real time;

ActionMatched
  -> equality of reduced symplectic forms;

FullySynchronized
  -> Hamiltonian-flow conjugacy after the frozen orientation-preserving CP1 identification.
```

The reduced all-time flow endpoint is algebraic/finite-dimensional and should not retain the former `GLOBAL_SYNCHRONIZED_COMMON_INTERVAL` premise. The full sourced endpoint must instead retain the distinct premise:

```text
FULL_SOURCED_GLOBAL_SYNCHRONIZED_INTERVAL
```

## Promotion discipline

Prepared files establish at most `A_TIER_CANDIDATE`. Promotion requires a matching cached external compiler and theorem-level axiom audit. The premises

```text
FULL_EMD_TWO_MODE_INVARIANCE
NONLINEAR_GR_TT_CLOCK_PERSISTENCE
EMD_QR_PHYSICAL_SAME_ORBIT
FULL_SOURCED_GLOBAL_SYNCHRONIZED_INTERVAL
```

must remain explicit and may not be absorbed into reduced algebraic definitions.
