# NSE → Standard Model matter/current/stress port — endpoint index

**Root theorem:** `NSE_STANDARD_MODEL_MATTER_CURRENT_STRESS_PORT`  
**Mode:** B-tier conditional derivation; no local Lean execution.  
**Prior dependency:** [NSE Standard Model group base](./NSE_STANDARD_MODEL_GROUP_BASE_B_TIER.txt)  
**Full derivation:** [Matter/current/stress port TXT](./NSE_STANDARD_MODEL_MATTER_CURRENT_STRESS_PORT_B_TIER.txt)

## Algebra and representations
| ID | Endpoint | Status |
|---|---|---|
| SMP-01 | `SM_MATTER_REPRESENTATION_SIGNATURE` | ! B-tier |
| SMP-02 | `YUKAWA_HYPERCHARGE_NEUTRALITY` | ! B-tier |
| SMP-03 | `MINIMAL_GENERATION_ANOMALY_SUMS` | ! B-tier finite arithmetic |
| SMP-04 | `COVARIANT_MATTER_DERIVATIVE` | ! B-tier with connection and spin types |
| SMP-05 | `GAUGE_INVARIANT_ACTION_PORT` | ! B-tier typed action |

## Ward/stress interfaces
| ID | Endpoint | Status |
|---|---|---|
| SMP-06 | `GAUGE_CURRENT_WARD_IDENTITY` | ! B-tier conditional on gauge invariance, EOM and anomaly assumptions |
| SMP-07 | `DIFFEOMORPHISM_STRESS_WARD_IDENTITY` | ! B-tier conditional |
| SMP-08 | `YANG_MILLS_STRESS_EXCHANGE` | ! B-tier conditional |
| SMP-09 | `TYPED_NSE_FORCE_PORT` | ! B-tier conditional on matching law |
| SMP-10 | `ABELIAN_LORENTZ_POWER_IDENTITY` | ! B-tier |

## Electron adapter and conservation
| ID | Endpoint | Status |
|---|---|---|
| SMP-11 | `ELECTRON_TO_NSE_CURRENT_RESIDUAL` | ! B-tier exact |
| SMP-12 | `HELICAL_ELECTRON_RESIDUAL_EXACT` | ! B-tier exact |
| SMP-13 | `EM_NSE_CURRENT_POWER_RESIDUAL` | ! B-tier conditional energy closure |
| SMP-14 | `NO_DOUBLE_COUNTING_PARTITION` | ! B-tier |
| SMP-15 | `NONABELIAN_GAUGE_INVARIANT_FORCE` | ! B-tier conditional |
| SMP-16 | `NSE_STANDARD_MODEL_MATTER_CURRENT_STRESS_PORT` | ! B-tier root, conditional |

## Exact decisive distinction

For electron charge density `rho_e=q_e*n_e`, full current `J_e` and projected NSE velocity `u_e=P_sigma,0(v_e)`,

```text
J_res = J_e - rho_e*u_e = rho_e*(I-P_sigma,0)*v_e.
```

For the helical free electron and the mean-plus-decaying NSE solution,

```text
J_e(t) - rho_e*u_NSE(t)
  = rho_e * U_e * (exp(-nu*k^2*t)-1) * s_t.
```

Thus initial-profile agreement does not imply agreement of the subsequent electron and NSE current dynamics. Residual current power must be included as a separate signed energy transfer.

## Open gates

- SMP-17 `ACTUAL_STANDARD_MODEL_QUANTUM_WARD_AUDIT`
- SMP-18 `ELECTRON_DISSIPATIVE_DYNAMICS_DERIVATION`
- SMP-19 `NONABELIAN_COLOR_FLUID_CLOSURE`
- SMP-20 `FULL_ELECTRON_TO_NSE_SEMICONJUGACY`
- SMP-21 `GENERAL_3D_COUPLED_GLOBAL_REGULARITY`
- SMP-22 `EXTERNAL_LEAN_BUILD_AND_AXIOM_AUDIT`

## Proposed later Lean proof spine

1. Rational hypercharge/Yukawa/anomaly arithmetic; representation signatures.
2. Abstract covariant-current and stress endpoints with explicit symmetry premises.
3. Leray-projection current residual and exact helical time mismatch.
4. Energy power cancellation, graph dissipativity, reservoir signatures.
5. Deterministic final chain; theorem-level external compiler and axiom audit.

No Mathlib/Methlib declaration name, cached compilation, or A-tier result is asserted without evidence.
