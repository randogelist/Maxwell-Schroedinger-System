# GR vacuum development and curvature bridge — Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = QM_MAXWELL_GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/
  GRCircularMode.lean
  GRTTLift.lean
  GRVacuumConstraints.lean
  GRGaussianNormalJet.lean
  GRWeylInitialData.lean
  GRCircularWeyl.lean
  GRBelRobinson.lean
  GRDevelopment.lean
  GRTransverseBridge.lean
  GRFourToFiveInterface.lean
  GRDevelopmentMain.lean
```

## Endpoint allocation

| Module | Endpoints |
|---|---|
| `GRCircularMode` | `CIRCULAR_CMC_ANALYTIC_DATA` |
| `GRTTLift` | fixed-axis vector-to-TT identities |
| `GRVacuumConstraints` | `CIRCULAR_CMC_VACUUM_CONSTRAINTS` |
| `GRGaussianNormalJet` | `GAUSSIAN_NORMAL_FIRST_JET`, `GAUSSIAN_NORMAL_SECOND_JET` |
| `GRWeylInitialData` | `INITIAL_WEYL_DATA_FROM_CAUCHY_DATA` |
| `GRCircularWeyl` | electric, magnetic, and norm formulas |
| `GRBelRobinson` | `CIRCULAR_BEL_ROBINSON_DENSITY`, `GR_SUPERENERGY_MONOTONICITY` |
| `GRDevelopment` | development predicate and external Cauchy-theorem interface |
| `GRTransverseBridge` | `QM_MAXWELL_GR_CURVATURE_BRIDGE`, `TRANSVERSE_ONLY_GR_BRIDGE` |
| `GRFourToFiveInterface` | open 4D/5D adapter interface |
| `GRDevelopmentMain` | root deterministic composition |

## Planned theorem spine

```text
CIRCULAR_CMC_VACUUM_CONSTRAINTS
CIRCULAR_CMC_ANALYTIC_DATA
-> GAUSSIAN_NORMAL_FIRST_JET
-> GAUSSIAN_NORMAL_SECOND_JET
-> INITIAL_WEYL_DATA_FROM_CAUCHY_DATA
-> CIRCULAR_WEYL_ELECTRIC_FORMULA
-> CIRCULAR_WEYL_MAGNETIC_FORMULA
-> CIRCULAR_WEYL_NORMS
-> CIRCULAR_BEL_ROBINSON_DENSITY
-> GR_SUPERENERGY_MONOTONICITY

VACUUM_CAUCHY_DEVELOPMENT_THEOREM
+ CIRCULAR_CMC_VACUUM_CONSTRAINTS
-> CIRCULAR_CMC_VACUUM_DEVELOPMENT

QM_MAXWELL_GR_CURVATURE_BRIDGE
+ CIRCULAR_CMC_VACUUM_DEVELOPMENT
-> QM_MAXWELL_GR_VACUUM_DEVELOPMENT_CURVATURE_BRIDGE
```

## External theorem boundary

`VACUUM_CAUCHY_DEVELOPMENT_THEOREM` must remain an explicit imported theorem or structure field unless independently formalized. The root may not silently replace this input with an inhabitant.

## Convention locks

```text
signature = (-,+,+,+)
orientation epsilon_123 = +1
K_ij = -(1/2) partial_u g_ij
unit lapse
zero shift
u-coordinate has dimension of length
```

Changing any convention requires simultaneous changes to the magnetic Weyl sign and Gaussian-normal jet formulas.

## Promotion policy

Prepared code remains `A_TIER_CANDIDATE`. Promotion requires:

```text
matching cached external compiler
exact theorem types
no sorry/admit
standard-only theorem-level axiom audit
explicit retention of Cauchy-theorem and sourced-GR premises
```

No local Lean execution is permitted.
