# Einstein–Maxwell–Dirac electron-sector endpoint index

`! = B_TIER`. No endpoint below is A-tier.

## Frozen root

```text
EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR
```

The root is a structural sector theorem. It does not assert existence of a globally regular stationary one-electron solution.

| ID | Endpoint | Status | Derivation folder |
|---|---|---|---|
| EMD-01 | `EMD_GEOMETRIC_SECTOR_DATA` | `EXACT_B_TIER_DEFINITION` | [`derivation_of_EMD_GEOMETRIC_SECTOR_DATA/`](../derivation_of_EMD_GEOMETRIC_SECTOR_DATA/) |
| EMD-02 | `EMD_ACTION_EULER_LAGRANGE` | `EXACT_B_TIER_FROM_STANDARD_VARIATION` | [`derivation_of_EMD_ACTION_EULER_LAGRANGE/`](../derivation_of_EMD_ACTION_EULER_LAGRANGE/) |
| EMD-03 | `EMD_U1_GAUGE_COVARIANCE` | `EXACT_B_TIER` | [`derivation_of_EMD_U1_GAUGE_COVARIANCE/`](../derivation_of_EMD_U1_GAUGE_COVARIANCE/) |
| EMD-04 | `EMD_DIRAC_CURRENT_CONSERVATION` | `EXACT_B_TIER` | [`derivation_of_EMD_DIRAC_CURRENT_CONSERVATION/`](../derivation_of_EMD_DIRAC_CURRENT_CONSERVATION/) |
| EMD-05 | `EMD_ONE_ELECTRON_CHARGE` | `EXACT_B_TIER` | [`derivation_of_EMD_ONE_ELECTRON_CHARGE/`](../derivation_of_EMD_ONE_ELECTRON_CHARGE/) |
| EMD-06 | `EMD_MAXWELL_SOURCE_COMPATIBILITY` | `EXACT_B_TIER` | [`derivation_of_EMD_MAXWELL_SOURCE_COMPATIBILITY/`](../derivation_of_EMD_MAXWELL_SOURCE_COMPATIBILITY/) |
| EMD-07 | `EMD_STRESS_EXCHANGE` | `EXACT_B_TIER` | [`derivation_of_EMD_STRESS_EXCHANGE/`](../derivation_of_EMD_STRESS_EXCHANGE/) |
| EMD-08 | `EMD_BIANCHI_CLOSURE` | `EXACT_B_TIER` | [`derivation_of_EMD_BIANCHI_CLOSURE/`](../derivation_of_EMD_BIANCHI_CLOSURE/) |
| EMD-09 | `EMD_CAUCHY_CONSTRAINT_COMPATIBILITY` | `EXACT_B_TIER_FORMAL` | [`derivation_of_EMD_CAUCHY_CONSTRAINT_COMPATIBILITY/`](../derivation_of_EMD_CAUCHY_CONSTRAINT_COMPATIBILITY/) |
| EMD-10 | `EMD_COMPACT_CHARGE_NEUTRALITY` | `EXACT_B_TIER` | [`derivation_of_EMD_COMPACT_CHARGE_NEUTRALITY/`](../derivation_of_EMD_COMPACT_CHARGE_NEUTRALITY/) |
| EMD-11 | `EMD_ASYMPTOTICALLY_FLAT_ELECTRON_SECTOR` | `EXACT_SECTOR_DEFINITION` | [`derivation_of_EMD_ASYMPTOTICALLY_FLAT_ELECTRON_SECTOR/`](../derivation_of_EMD_ASYMPTOTICALLY_FLAT_ELECTRON_SECTOR/) |
| EMD-12 | `EMD_COMPACT_NEUTRALIZED_ELECTRON_SECTOR` | `EXACT_SECTOR_DEFINITION` | [`derivation_of_EMD_COMPACT_NEUTRALIZED_ELECTRON_SECTOR/`](../derivation_of_EMD_COMPACT_NEUTRALIZED_ELECTRON_SECTOR/) |
| EMD-13 | `EMD_STATIONARY_BILINEARS` | `EXACT_CONDITIONAL_B_TIER` | [`derivation_of_EMD_STATIONARY_BILINEARS/`](../derivation_of_EMD_STATIONARY_BILINEARS/) |
| EMD-14 | `EMD_A_DAGGER_CURRENT_DEFECT` | `EXACT_B_TIER` | [`derivation_of_EMD_A_DAGGER_CURRENT_DEFECT/`](../derivation_of_EMD_A_DAGGER_CURRENT_DEFECT/) |
| EMD-15 | `EMD_NONRELATIVISTIC_PARAMETER_MATCH` | `FORMAL_ASYMPTOTIC_B_TIER` | [`derivation_of_EMD_NONRELATIVISTIC_PARAMETER_MATCH/`](../derivation_of_EMD_NONRELATIVISTIC_PARAMETER_MATCH/) |
| EMD-16 | `EMD_FERMIONIC_PROFILE_TRANSFER` | `EXACT_B_TIER_ONE_PARTICLE` | [`derivation_of_EMD_FERMIONIC_PROFILE_TRANSFER/`](../derivation_of_EMD_FERMIONIC_PROFILE_TRANSFER/) |
| EMD-17 | `EMD_LOCAL_WELLPOSEDNESS_IMPORT` | `NAMED_ANALYTIC_INPUT` | [`derivation_of_EMD_LOCAL_WELLPOSEDNESS_IMPORT/`](../derivation_of_EMD_LOCAL_WELLPOSEDNESS_IMPORT/) |
| EMD-18 | `EMD_STATIONARY_EXISTENCE` | `OPEN_ANALYTIC` | [`derivation_of_EMD_STATIONARY_EXISTENCE/`](../derivation_of_EMD_STATIONARY_EXISTENCE/) |
| EMD-19 | `EMD_GLOBAL_STABILITY` | `OPEN_DECISIVE` | [`derivation_of_EMD_GLOBAL_STABILITY/`](../derivation_of_EMD_GLOBAL_STABILITY/) |
| EMD-20 | `EMD_QFT_ONE_ELECTRON_IDENTIFICATION` | `OPEN_QFT_ENDPOINT` | [`derivation_of_EMD_QFT_ONE_ELECTRON_IDENTIFICATION/`](../derivation_of_EMD_QFT_ONE_ELECTRON_IDENTIFICATION/) |
| EMD-21 | `EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL` | `EXACT_B_TIER_STRUCTURAL` | [`derivation_of_EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL/`](../derivation_of_EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL/) |

## Dependency spine

```text
EMD-01 + action -> EMD-02
EMD-02 -> Dirac + Maxwell + Einstein equations
Dirac + adjoint -> EMD-04 -> EMD-05 -> EMD-06
Dirac + Maxwell -> EMD-07 -> EMD-08
3+1 decomposition -> EMD-09 -> EMD-10
boundary conditions -> EMD-11 or EMD-12
stationary Killing/eigenspinor ansatz -> EMD-13
field decomposition -> EMD-14
large/small component expansion -> EMD-15
CAR one-particle algebra -> EMD-16
EMD-01..16 -> EMD-21
EMD-17 + data -> local nonemptiness
EMD-18 + coercive estimates -> EMD-19
```

## Exact isolated/compact distinction

```text
asymptotically flat:
  one normalized Dirac component may carry Q=-e

compact boundaryless Cauchy slice:
  integral rho_total = 0
  therefore Q_e=-e requires Q_background=+e
```

## Root classification

```text
STRUCTURAL_B_TIER = established
STATIONARY_SOLUTION_EXISTENCE = open
GLOBAL_STABILITY = open
QFT_ONE_ELECTRON_IDENTIFICATION = open
A_TIER = not established
```

[Canonical B-tier derivation](EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_B_TIER.txt)
