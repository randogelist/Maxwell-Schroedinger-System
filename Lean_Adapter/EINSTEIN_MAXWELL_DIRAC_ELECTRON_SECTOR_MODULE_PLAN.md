# Einstein–Maxwell–Dirac electron-sector Lean plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL
LEAN_STATUS = NOT_EMITTED
LOCAL_LEAN_EXECUTIONS = 0
```

## Formalization boundary

The first formal root is structural. It assumes sufficiently regular fields satisfying abstract Dirac, Maxwell, and Einstein equations and proves the algebraic conservation, compatibility, normalization, and compact-neutrality implications.

It does **not** formalize PDE existence, spin-geometry foundations, asymptotic flatness, stationary soliton existence, or interacting QED in the first pass.

## Planned modules

```text
MaxwellSchroedingerSystem/EMD/
  Parameters.lean
  GeometryData.lean
  SpinorData.lean
  GaugeConnection.lean
  DiracEquation.lean
  DiracCurrent.lean
  MaxwellEquation.lean
  StressEnergy.lean
  EinsteinEquation.lean
  Conservation.lean
  ElectronNumber.lean
  CauchyConstraints.lean
  CompactNeutrality.lean
  SectorVariants.lean
  StationarySector.lean
  ADaggerDefect.lean
  PauliLimit.lean
  ProfileTransfer.lean
  Main.lean
```

## Phase I: abstract structural carrier

Introduce abstract types and operations sufficient to state:

```lean
structure EMDParameters where
  e : ℝ
  me : ℝ
  hbar : ℝ
  c : ℝ
  epsilon0 : ℝ
  mu0 : ℝ
  G : ℝ
  e_pos : 0 < e
  me_pos : 0 < me
  hbar_pos : 0 < hbar
  c_pos : 0 < c
  epsilon0_pos : 0 < epsilon0
  mu0_pos : 0 < mu0
  G_pos : 0 < G
  light_relation : epsilon0 * mu0 * c^2 = 1
```

```lean
structure EMDSolutionData where
  Metric : Type
  Spinor : Type
  OneForm : Type
  TwoForm : Type
  Current : Type
  Stress : Type
  g : Metric
  A : OneForm
  F : TwoForm
  psi : Spinor
```

The exact analytic realizations may be supplied later through adapters.

## Phase II: endpoint interfaces

Planned theorem signatures:

```text
EMD_U1_GAUGE_COVARIANCE
EMD_DIRAC_CURRENT_CONSERVATION
EMD_ONE_ELECTRON_CHARGE
EMD_MAXWELL_SOURCE_COMPATIBILITY
EMD_STRESS_EXCHANGE
EMD_BIANCHI_CLOSURE
EMD_CAUCHY_CONSTRAINT_COMPATIBILITY
EMD_COMPACT_CHARGE_NEUTRALITY
EMD_STATIONARY_BILINEARS
EMD_A_DAGGER_CURRENT_DEFECT
EMD_FERMIONIC_PROFILE_TRANSFER
EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL
```

## Proposed structural root

```lean
namespace MaxwellSchroedingerSystem.EMD

structure ElectronSectorPremises : Prop where
  diracEquation : Prop
  adjointEquation : Prop
  maxwellEquation : Prop
  einsteinEquation : Prop
  numberNormalized : Prop
  declaredSourcesComplete : Prop

structure ElectronSectorConclusions : Prop where
  gaugeCovariant : Prop
  numberConserved : Prop
  electronCharge : Prop
  maxwellCompatible : Prop
  totalStressConserved : Prop
  bianchiCompatible : Prop
  compactNeutrality : Prop
  defectClassified : Prop

theorem EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL
    (h : ElectronSectorPremises) : ElectronSectorConclusions := ...

end MaxwellSchroedingerSystem.EMD
```

The concrete theorem types must replace placeholder `Prop` fields before emission.

## Phase III: analytic adapters

Separate interfaces are required for:

```text
Lorentzian spin manifolds
Clifford bundles and spin connections
integration on Cauchy hypersurfaces
Stokes/divergence theorem
Dirac hyperbolic evolution
Maxwell hyperbolic evolution
Einstein constraint propagation
asymptotically flat weighted Sobolev spaces
stationary Killing spinors
```

These remain explicit imports or admissions until implemented.

## Phase IV: sector variants

```text
EMD_ASYMPTOTICALLY_FLAT_ELECTRON_SECTOR
EMD_COMPACT_NEUTRALIZED_ELECTRON_SECTOR
```

The compact variant must include a background current and stress tensor. A bare constant subtraction is not a complete GR source.

## Phase V: nonrelativistic and Fock adapters

```text
EMD_NONRELATIVISTIC_PARAMETER_MATCH
EMD_FERMIONIC_PROFILE_TRANSFER
```

The Pauli limit remains an asymptotic theorem with a named convergence premise. The one-particle CAR theorem is independent of interacting QED.

## Proof spine

```text
endpoint signatures
-> independent algebraic conservation edges
-> abstract geometric identities
-> sector-variant assembly
-> deterministic root theorem
```

## Tier policy

- Prepared code is `A_TIER_CANDIDATE` only.
- No local Lean execution.
- Promotion requires a matching cached external compiler run.
- Promotion requires theorem-level axiom audit.
- No `sorry`, `admit`, custom axioms, unsafe proof construction, or proof-producing `native_decide`.
- Analytic existence and QFT-identification premises remain explicit.
