# QR–TT clock-synchronization endpoint index

`! = B_TIER`; `!=!` denotes synchronized clocks on the explicitly frozen reduced TT orbit. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| TTCLOCK-01 | `ONE_ELECTRON_TWO_LEVEL_PHASE_FLOW` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-02 | `TT_COMMON_ACTION_NORMALIZATION` | `EXACT_B_TIER_FROM_TT_PREMISE` |
| TTCLOCK-03 | `QR_TT_REDUCED_SYMPLECTIC_FORM` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-04 | `QR_TT_REDUCED_HAMILTONIAN` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-05 | `QR_TT_ACTION_MATCHING_EQUIVALENCE` | `EXACT_B_TIER` |
| TTCLOCK-06 | `QR_TT_HAMILTONIAN_MATCHING_EQUIVALENCE` | `EXACT_B_TIER` |
| TTCLOCK-07 | `ONE_ELECTRON_QR_TT_CLOCKS_SYNCHRONIZED` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_REDUCED_MODEL` |
| TTCLOCK-08 | `TORUS_TT_CLOCK_RESONANCE` | `EXACT_B_TIER` |
| TTCLOCK-09 | `QR_TT_PROPER_TIME_SYNCHRONIZATION` | `EXACT_B_TIER` |
| TTCLOCK-10 | `SCALE_AND_CLOCK_GATES_ARE_INDEPENDENT` | `EXACT_B_TIER` |
| TTCLOCK-11 | `QR_TT_CLOCK_DEFECT_ZERO_IFF_SYNCHRONIZED_DATA` | `EXACT_B_TIER` |
| TTCLOCK-12 | `FULL_EMD_TWO_MODE_INVARIANCE` | `OPEN_ANALYTIC` |
| TTCLOCK-13 | `NONLINEAR_GR_TT_CLOCK_PERSISTENCE` | `OPEN_DECISIVE` |
| TTCLOCK-14 | `EMD_QR_PHYSICAL_SAME_ORBIT` | `OPEN_DECISIVE` |
| TTCLOCK-15 | `GLOBAL_SYNCHRONIZED_COMMON_INTERVAL` | `OPEN_ANALYTIC` |

## Exact reduced synchronization conditions

```text
K_QR = hbar
omega_1-omega_0 = (E_1-E_0)/hbar
phi_QR(t0) = phi_QM(t0) mod 2pi
```

Then

```text
iota_clock o Phi_t^QM = Phi_t^QR o iota_clock
```

on every common interval of existence.

## Compact-torus resonance

```text
E_1-E_0 = (2pi hbar c/L)(|n_1|-|n_0|).
```

## Scope

The synchronization theorem is exact on the frozen reduced linearized TT model. Full nonlinear sourced EMD/GR synchronization remains conditional on TTCLOCK-12 through TTCLOCK-15.

[Canonical derivation](QR_TT_CLOCK_SYNCHRONIZATION_B_TIER.txt)
