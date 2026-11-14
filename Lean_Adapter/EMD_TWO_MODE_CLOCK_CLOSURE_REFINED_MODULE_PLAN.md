# Refined EMD two-mode clock-closure Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = ONE_ELECTRON_EMD_QR_CLOCK_CLOSURE_REFINED
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/Clock/EMDPhaseSpace.lean
MaxwellSchroedingerSystem/Clock/EmbeddedTangency.lean
MaxwellSchroedingerSystem/Clock/PullbackHamiltonian.lean
MaxwellSchroedingerSystem/Clock/PopulationPhase.lean
MaxwellSchroedingerSystem/Clock/FourierSidebands.lean
MaxwellSchroedingerSystem/Clock/DressedOrbit.lean
MaxwellSchroedingerSystem/Clock/ApproximatePersistence.lean
MaxwellSchroedingerSystem/Clock/RefinedDefect.lean
MaxwellSchroedingerSystem/Clock/EMDQRMain.lean
```

## Planned theorem spine

```text
EMD_EMBEDDED_ORBIT_TANGENCY_IFF_INVARIANCE
EMD_PULLBACK_HAMILTONIAN_FLOW
EMD_TWO_MODE_POPULATION_PHASE_EQUATIONS
EMD_RIGID_CLOCK_AFFINE_HAMILTONIAN_IFF
EMD_OPERATOR_LEAKAGE_DIAGONAL_GAP_GATE
EMD_TWO_FOURIER_MODE_SOURCE_SUPPORT
EMD_TWO_FOURIER_MODE_SIDEBAND_GENERATION
EMD_RAW_TWO_MODE_GENERIC_NONINVARIANCE
EMD_DRESSED_TWO_LEVEL_CLOCK_GATE
EMD_QR_DRESSED_CLOCK_SYNCHRONIZATION
EMD_APPROXIMATE_TANGENCY_GRONWALL_BOUND
EMD_QR_CLOCK_PERSISTENCE_BOUND
EMD_QR_CLOCK_DEFECT_ZERO_IFF_EXPLICIT_GATES
ONE_ELECTRON_EMD_QR_CLOCK_CLOSURE_REFINED
```

## Formal decomposition

```text
abstract smooth embedded manifold/tangency layer
-> finite-dimensional symplectic CP1 layer
-> exact scalar population/phase algebra
-> finite Fourier-support sideband algebra
-> conditional dressed-orbit assembly
-> Gronwall persistence inequality
-> deterministic root chain
```

## Frozen premises

```text
LOCAL_UNIQUENESS_EMD_FLOW
GAUGE_FIXED_REDUCED_SYMPLECTIC_EMD_SECTOR
DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION
DRESSED_EMD_TANGENCY_VERIFICATION
DRESSED_EMD_AFFINE_HAMILTONIAN_VERIFICATION
GLOBAL_SOURCED_COMMON_INTERVAL
```

These premises may not be hidden inside definitions or weakened during promotion.

## Promotion discipline

Prepared declarations establish at most `A_TIER_CANDIDATE`. Promotion requires a matching cached external Lean compiler and theorem-level axiom audit. No local Lean execution is permitted.
