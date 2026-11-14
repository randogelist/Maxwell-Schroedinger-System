# B-tier endpoint index

```text
!    = B_TIER
!!   = A_TIER
!!!  = FORMAL_CLOSURE
!!!! = UNCONDITIONAL_CLOSURE
```

No endpoint in this repository is currently above `!`.

## Register summary

```text
TOTAL_ENDPOINTS              = 38
EXACT_B_TIER_ENDPOINTS       = 21
CONDITIONAL_B_TIER_ENDPOINTS = 2
OPEN_OR_VALIDATION_ENDPOINTS = 15
LEAN_STATUS                  = NOT_EMITTED
A_TIER_STATUS                = NOT_ESTABLISHED
```

## A. Native Maxwell–Schrödinger core

| ID | Endpoint | Exact inputs | Output | Status |
|---|---|---|---|---|
| MS-01 | `MS_CHARGE_NEUTRALITY` | `‖ψ‖₂=1`, `|T³|=1` | `∫q(|ψ|²−1)=0` | ! exact |
| MS-02 | `MS_CONTINUITY_IDENTITY` | Schrödinger equation; real potentials | `∂ₜρ+div J=0` | ! exact |
| MS-03 | `MS_MASS_CONSERVATION` | MS-02; periodicity | `‖ψ(t)‖₂=‖ψ(0)‖₂` | ! exact |
| MS-04 | `MS_CONSTRAINT_PROPAGATION` | Maxwell evolution; MS-02 | Gauss residuals constant | ! exact |
| MS-05 | `MS_COULOMB_EQUIVALENCE` | Coulomb gauge; zero means; continuity | first-order Maxwell iff Poisson-wave system | ! exact |
| MS-06 | `MS_TOTAL_ENERGY_CONSERVATION` | sufficiently regular solution; static real `W` | conserved total energy | ! exact for smooth solutions |

## B. Stationary profile sector

| ID | Endpoint | Exact inputs | Output | Status |
|---|---|---|---|---|
| ST-01 | `MS_STATIONARY_PROFILE` | positive smooth normalized `χ` | exact stationary solution | ! exact |
| ST-02 | `MS_GROUND_STATE_TRANSFORM` | `ψ∈H¹`, positive `χ` | magnetic ground-state identity | ! exact |
| ST-03 | `MS_EXACT_ENERGY_GAP` | admissibility; Gauss law | three nonnegative gap terms | ! exact |
| ST-04 | `MS_GLOBAL_MINIMIZER` | ST-03; frozen gauge | minimizer modulo constant phase | ! exact |
| ST-05 | `MS_ENERGY_TRAPPING` | MS-06; ST-03; supplied global solution | uniform field/covariant bounds | ! conditional on solution |
| ST-06 | `MS_ORBITAL_METRIC_COERCIVITY` | gauge-fixed coercivity | phase-orbit distance estimate | ! open analytic |
| ST-07 | `MS_GLOBAL_ORBITAL_STABILITY` | ST-05; ST-06; global well-posedness | nonlinear orbital stability | ! conditional |

## C. Creation–annihilation/profile-transfer sector

| ID | Endpoint | Exact inputs | Output | Status |
|---|---|---|---|---|
| CA-01 | `PROFILE_TRANSFER_ONE_PARTICLE` | CAR; normalized `e₀,χ` | `Cχ=|χ⟩⟨e₀|` on one-particle sector | ! exact |
| CA-02 | `PROFILE_TRANSFER_COMMUTATOR` | CA-01 | `[Cχ,Cχ†]=Pχ−P₀` | ! exact |
| CA-03 | `PROFILE_TRANSFER_CHARGE_DIAGONAL` | smooth `χ` | `q diag(Pχ−P₀)=q(|χ|²−1)` | ! exact |
| CA-04 | `RELATIVE_CHARGE_SMEARING` | bounded multiplier `M_f` | exact smeared relative charge expectation | ! exact |
| CA-05 | `PROFILE_TRANSFER_UNITARY_ROTATION` | positive normalized `χ`; two-mode decomposition | number-preserving unitary maps `e₀` to `χ` | ! exact |

## D. `a_dagger` magnetic extension

| ID | Endpoint | Exact inputs | Output | Status |
|---|---|---|---|---|
| AD-01 | `A_DAGGER_HEAT_REGULARIZATION` | periodic distribution `a†`; `ε>0` | smooth datum; mean/divergence preserved | ! exact |
| AD-02 | `WEIGHTED_PHASE_SOLVABILITY` | positive `χ`; smooth Coulomb-gauge `Aλ` | unique mean-zero `θλ` | ! exact |
| AD-03 | `A_DAGGER_STATIC_WITH_CURRENT_DEFECT` | AD-01; AD-02 | exact stationary solution with `Jext` | ! exact |
| AD-04 | `STATIC_SPINLESS_MAGNETIC_NO_GO` | exact self-consistency; weighted continuity | `B=p=A=0`, constant phase | ! exact |
| AD-05 | `NONZERO_DRESSING_REQUIRES_DEFECT` | AD-03; AD-04; `λaε≠0` | `Jext≠0` | ! exact |
| AD-06 | `RAW_A_DAGGER_OUTSIDER_PROPERTIES` | explicit raw series | `L²`, Sobolev threshold, not `BMO⁻¹` | ! open source theorem |
| AD-07 | `CRITICAL_BMO_RAY_PROPERTIES` | adjusted dagger family | `BMO⁻¹\VMO⁻¹` boundary | ! open source theorem |

## E. Regularity/photon-radius bridge

| ID | Endpoint | Exact inputs | Output | Status |
|---|---|---|---|---|
| RP-01 | `NSE_REGULARITY_CERTIFICATE` | imported estimate for `p(aε)` | `|λ|<λcrit ⇒ Regν(λaε)` | ! named premise |
| RP-02 | `COHERENT_RAY_LAWS` | fixed quantization convention | `Nγ,Eγ∝λ²` | ! named premise |
| RP-03 | `CERTIFICATE_RADIUS_TRANSLATION` | RP-01; RP-02 | equivalent amplitude/number/energy inequalities | ! conditional exact implication |
| RP-04 | `PHYSICAL_THRESHOLD_LIMIT` | regulator removal; observable transition | representation-independent threshold | ! open physical gate |
| RP-05 | `QED_TO_NSE_DYNAMICAL_BRIDGE` | exact dynamical adapter | transfer of regularity observable | ! open decisive endpoint |

## F. Validation endpoints

| ID | Endpoint | Required result | Status |
|---|---|---|---|
| V-01 | `RESIDUAL_CONVERGENCE` | all PDE residuals vanish under refinement | numerical target |
| V-02 | `GAUGE_COVARIANCE_VALIDATION` | gauge-invariant outputs unchanged | numerical target |
| V-03 | `MASS_ENERGY_CONSERVATION` | discrete drift converges to zero | numerical target |
| V-04 | `STATIONARY_PROFILE_REPRODUCTION` | manufactured solution recovered | numerical target |
| V-05 | `CURRENT_DEFECT_TEST` | compute `‖JMax−Jmat‖` | decisive numerical target |
| V-06 | `OUTSIDER_REGULATOR_CONVERGENCE` | cutoff/epsilon/volume stability | open |
| V-07 | `COHERENT_STATISTICS` | Poisson photon statistics on coherent ray | benchmark target |
| V-08 | `AB_PHASE` | `Δphase=qΦB/ℏ` | benchmark target |

## Root dependency graph

```text
MS-02 -> MS-03
MS-02 + Maxwell evolution -> MS-04
MS-02 + Coulomb gauge + Hodge laws -> MS-05
MS-02 + matter power identity + Poynting identity -> MS-06
ST-01 -> ST-02
ST-02 + Gauss -> ST-03 -> ST-04
MS-06 + ST-03 -> ST-05
ST-05 + ST-06 + global well-posedness -> ST-07
CA-01 -> CA-02 -> CA-03 -> CA-04
two-mode decomposition -> CA-05
heat semigroup laws -> AD-01
AD-01 + weighted elliptic theory -> AD-02 -> AD-03
AD-02 + exact self-consistency -> AD-04 -> AD-05
RP-01 + RP-02 -> RP-03
RP-03 + RP-04 + RP-05 -> physical-threshold interpretation
```

## Canonical B-tier export

[`MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt`](MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

## Promotion rule

Prepared declarations remain `A_TIER_CANDIDATE` only after Lean emission. Promotion to `!!` requires a matching cached external compiler run and theorem-level standard-axiom audit. No local Lean execution is permitted.
