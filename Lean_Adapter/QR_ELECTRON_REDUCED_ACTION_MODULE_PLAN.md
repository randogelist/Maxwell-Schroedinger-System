# QR electron reduced-action Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT_ENDPOINT = EMD_QR_REDUCED_MATCHING_HULL
LEAN_ROOT_PLANNED = MaxwellSchroedingerSystem.QR.Main
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned module graph

```text
MaxwellSchroedingerSystem/QR/
  Foliation.lean
  StressDecomposition.lean
  Constraints.lean
  ConstraintPropagation.lean
  WeylCarrier.lean
  ReducedOrbit.lean
  ActionCoordinate.lean
  Prequantization.lean
  QuantumLevelOne.lean
  IntegerMismatch.lean
  RiggingFilter.lean
  GaussianActionLaw.lean
  LengthSpectrum.lean
  ElectronMatchedShell.lean
  SourceVacuumSeparation.lean
  Main.lean
```

## Planned theorem signatures

```text
EMD_STRESS_3P1_DECOMPOSITION
EMD_QR_CONSTRAINTS
EMD_QR_CONSTRAINT_PROPAGATION
QR_WEYL_CURVATURE_CARRIER
QR_REDUCED_ACTION_COORDINATE
QR_PREQUANTIZATION_INTEGER
QM_PROFILE_ACTION_LEVEL_ONE
QR_QM_INTEGER_MISMATCH
QR_RIGGING_FILTER_PROJECTOR_LIMIT
QR_LENGTH_SPECTRUM_FROM_PREQUANTIZATION
ONE_ELECTRON_QR_MATCHED_SHELL
QR_ONE_QUARTER_ELECTRON_SCALE
QR_CERN_NUMBER_NOT_PARTICLE_NUMBER
SOURCED_QR_VS_VACUUM_TT_SEPARATION
EMD_QR_REDUCED_MATCHING_HULL
```

## Formal carrier separation

```text
ElectronNumber      := N_Sigma[Psi]
ElectricCharge      := q_e * ElectronNumber
QRActionCoordinate  := (1/(2*pi))*integral Omega_GR_red
QRChernNumber       := QRActionCoordinate / hbar
QMActionLevel       := 1
Mismatch            := QRChernNumber - QMActionLevel
```

The theorem types must not identify `ElectronNumber`, `QRChernNumber`, or electric-charge number by definitional equality.

## Premise interfaces

```text
QR_REDUCED_ORBIT_EXISTENCE
QR_PREQUANTUM_LINE_BUNDLE_REALIZATION
QR_GAUSSIAN_ACTION_LAW
SAME_ORBIT_MATCHING
QR_COEFFICIENT_ONE_QUARTER
SOURCED_VACUUM_REDUCED_ADAPTER
```

Every unresolved premise must remain an explicit theorem argument or structure field.

## Proof spine

```text
stress projector algebra
-> Gauss-Codazzi projections
-> Bianchi/stress conservation adapter
-> reduced two-cycle action definition
-> Chern-Weil integer endpoint
-> level-one quantum orbit
-> integer mismatch algebra
-> spectral-filter convergence
-> Planck-length algebra
-> deterministic root chain.
```

## Cached external run policy

```text
NO_LOCAL_LEAN = true
BUILD_MODE = CACHED_NATIVE_DIRECT
CACHE_DELETION = forbidden
A_TIER_PROMOTION = matching compiler + exact root type + theorem-level axiom audit
```

Prepared Lean code establishes at most `A_TIER_CANDIDATE`.  No endpoint is promoted by this module plan.
