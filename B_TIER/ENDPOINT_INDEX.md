# B-tier endpoint index

`! = B_TIER`  
`!! = A_TIER`  
`!!! = FORMAL_CLOSURE`  
`!!!! = UNCONDITIONAL_CLOSURE`

No endpoint in this repository is currently above `!`.

## A. Native Maxwell–Schrödinger core

| ID | Endpoint | Inputs | Output | Status |
|---|---|---|---|---|
| MS-01 | `MS_CHARGE_NEUTRALITY` | `||psi||₂=1`, `|T³|=1` | `∫ q(|psi|²-1)=0` | ! derived |
| MS-02 | `MS_CONTINUITY_IDENTITY` | Schrödinger equation; real potentials | `∂ₜrho+div J=0` | ! derived |
| MS-03 | `MS_MASS_CONSERVATION` | MS-02 | `||psi(t)||₂=||psi(0)||₂` | ! derived |
| MS-04 | `MS_CONSTRAINT_PROPAGATION` | Maxwell evolution; MS-02 | Gauss residuals are constant | ! derived |
| MS-05 | `MS_COULOMB_EQUIVALENCE` | Coulomb gauge and zero means | first-order Maxwell ↔ Poisson-wave system | ! target derivation |
| MS-06 | `MS_TOTAL_ENERGY_CONSERVATION` | sufficiently regular solution; static real `W` | conserved total energy | ! target derivation |

## B. Stationary profile sector

| ID | Endpoint | Inputs | Output | Status |
|---|---|---|---|---|
| ST-01 | `MS_STATIONARY_PROFILE` | positive smooth normalized `chi` | exact stationary solution | ! derived |
| ST-02 | `MS_GROUND_STATE_TRANSFORM` | `psi∈H¹`, positive `chi` | magnetic ground-state identity | ! derived |
| ST-03 | `MS_EXACT_ENERGY_GAP` | admissibility and Gauss law | three nonnegative gap terms | ! derived |
| ST-04 | `MS_GLOBAL_MINIMIZER` | ST-03; frozen gauge | minimizer modulo constant phase | ! derived |
| ST-05 | `MS_ENERGY_TRAPPING` | ST-03; energy conservation | uniform field/covariant bounds | ! derived |
| ST-06 | `MS_ORBITAL_METRIC_COERCIVITY` | gauge-fixed coercivity | phase-orbit distance estimate | ! open analytic endpoint |
| ST-07 | `MS_GLOBAL_ORBITAL_STABILITY` | global well-posedness; ST-05; ST-06 | nonlinear orbital stability | ! conditional |

## C. Creation–annihilation/profile-transfer sector

| ID | Endpoint | Inputs | Output | Status |
|---|---|---|---|---|
| CA-01 | `PROFILE_TRANSFER_ONE_PARTICLE` | CAR; normalized `e₀,chi` | `C_chi=|chi><e₀|` on one-particle sector | ! derived |
| CA-02 | `PROFILE_TRANSFER_COMMUTATOR` | CA-01 | `[C,C†]=P_chi-P₀` | ! derived |
| CA-03 | `PROFILE_TRANSFER_CHARGE_DIAGONAL` | smooth `chi` | `q diag(P_chi-P₀)=q(|chi|²-1)` | ! derived |
| CA-04 | `RELATIVE_CHARGE_SMEARING` | test multiplier `M_f` | exact smeared charge expectation | ! derived |
| CA-05 | `PROFILE_TRANSFER_UNITARY_ROTATION` | two-mode decomposition of `chi` | number-preserving Fock rotation | ! target derivation |

## D. `a_dagger` magnetic extension

| ID | Endpoint | Inputs | Output | Status |
|---|---|---|---|---|
| AD-01 | `A_DAGGER_HEAT_REGULARIZATION` | raw `a_dagger`; `epsilon>0` | smooth solenoidal `a_epsilon` | ! pending source theorem |
| AD-02 | `WEIGHTED_PHASE_SOLVABILITY` | positive `chi`; smooth Coulomb-gauge `A_lambda` | unique `theta_lambda mod constants` | ! derived by elliptic theory; formal endpoint pending |
| AD-03 | `A_DAGGER_STATIC_WITH_CURRENT_DEFECT` | AD-02 | exact stationary solution with `J_ext` | ! derived |
| AD-04 | `STATIC_SPINLESS_MAGNETIC_NO_GO` | exact self-consistency; weighted continuity | `B=p=0` | ! derived |
| AD-05 | `NONZERO_DRESSING_REQUIRES_DEFECT` | AD-03; AD-04 | `lambda≠0 => J_ext≠0` | ! derived |
| AD-06 | `RAW_A_DAGGER_OUTSIDER_PROPERTIES` | explicit raw series | `L²`, Sobolev threshold, not `BMO⁻¹` | ! unresolved in this repository |
| AD-07 | `CRITICAL_BMO_RAY_PROPERTIES` | adjusted dagger family | `BMO⁻¹\VMO⁻¹` boundary | ! unresolved in this repository |

## E. Regularity/photon-radius bridge

| ID | Endpoint | Inputs | Output | Status |
|---|---|---|---|---|
| RP-01 | `NSE_REGULARITY_CERTIFICATE` | imported `p(a_epsilon)` estimate | `|lambda|<lambda_crit => Reg_nu` | ! named premise |
| RP-02 | `COHERENT_RAY_LAWS` | fixed quantization convention | `N_gamma,E_gamma ∝ lambda²` | ! named premise |
| RP-03 | `CERTIFICATE_RADIUS_TRANSLATION` | RP-01; RP-02 | equivalent amplitude/number/energy inequalities | ! derived conditionally |
| RP-04 | `PHYSICAL_THRESHOLD_LIMIT` | regulator removal and observable transition | representation-independent threshold | ! open |
| RP-05 | `QED_TO_NSE_DYNAMICAL_BRIDGE` | exact dynamical adapter | transfer of regularity observable | ! open decisive endpoint |

## F. Validation endpoints

| ID | Endpoint | Required result | Status |
|---|---|---|---|
| V-01 | `RESIDUAL_CONVERGENCE` | all PDE residuals vanish under refinement | numerical target |
| V-02 | `GAUGE_COVARIANCE` | gauge-invariant quantities unchanged | analytical/numerical target |
| V-03 | `MASS_ENERGY_CONSERVATION` | discrete drift converges to zero | numerical target |
| V-04 | `STATIONARY_PROFILE_REPRODUCTION` | exact manufactured solution recovered | numerical target |
| V-05 | `CURRENT_DEFECT_TEST` | compute `||J_Max-J_mat||` | decisive numerical target |
| V-06 | `OUTSIDER_REGULATOR_CONVERGENCE` | cutoff/epsilon/volume stability | open |
| V-07 | `COHERENT_STATISTICS` | Poisson photon statistics on coherent ray | benchmark target |
| V-08 | `AB_PHASE` | `Delta phase = q Phi_B / hbar` | benchmark target |

## Root dependency

```text
MS-02 -> MS-03
MS-02 -> MS-04
ST-02 + Gauss -> ST-03 -> ST-04
MS-06 + ST-03 -> ST-05
ST-05 + ST-06 + global existence -> ST-07
CA-01 -> CA-02 -> CA-03 -> CA-04
AD-01 -> AD-02 -> AD-03
AD-02 + exact self-consistency -> AD-04 -> AD-05
RP-01 + RP-02 -> RP-03
RP-03 + RP-04 + RP-05 -> physical-threshold claim
```

## Promotion rule

Prepared declarations remain `A_TIER_CANDIDATE` only after Lean emission. Promotion to `!!` requires a matching external cached compiler run and theorem-level standard-axiom audit. No local Lean execution is permitted.
