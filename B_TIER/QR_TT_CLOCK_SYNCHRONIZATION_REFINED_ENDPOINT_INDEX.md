# Refined QR–TT clock-synchronization endpoint index

`! = B_TIER`; `!=!` denotes exact synchronization on the explicitly frozen reduced one-electron/two-mode TT orbit. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| TTCLOCK-R01 | `ONE_ELECTRON_TWO_LEVEL_GLOBAL_FLOW` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R02 | `QR_TT_REDUCED_STRUCTURES` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R03 | `QR_TT_REDUCED_GLOBAL_FLOW` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R04 | `REDUCED_GLOBAL_SYNCHRONIZED_COMMON_INTERVAL` | `EXACT_B_TIER_WITHIN_REDUCED_MODEL` |
| TTCLOCK-R05 | `MINIMAL_PHASE_SYNCHRONIZATION_IFF` | `EXACT_B_TIER` |
| TTCLOCK-R06 | `QR_TT_ACTION_MATCHING_IFF` | `EXACT_B_TIER` |
| TTCLOCK-R07 | `QR_TT_HAMILTONIAN_MATCHING_IFF` | `EXACT_B_TIER` |
| TTCLOCK-R08 | `REDUCED_CLOCK_FLOW_EQUIVALENCE_IFF` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R09 | `ONE_ELECTRON_QR_TT_CLOCKS_SYNCHRONIZED_REFINED` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_COMPLETE_REDUCED_FLOWS` |
| TTCLOCK-R10 | `GLOBAL_BLOCH_ROTATION` | `EXACT_B_TIER` |
| TTCLOCK-R11 | `OBSERVABLE_CLOCK_RECONSTRUCTION` | `EXACT_B_TIER` |
| TTCLOCK-R12 | `ACTION_CLOCK_LOGICAL_INDEPENDENCE` | `EXACT_B_TIER` |
| TTCLOCK-R13 | `CLOCK_DETUNING_IDENTITY` | `EXACT_B_TIER` |
| TTCLOCK-R14 | `FINITE_TIME_CLOCK_ERROR_BOUND` | `EXACT_B_TIER` |
| TTCLOCK-R15 | `REDUCED_SYNCHRONIZATION_IS_NEUTRAL` | `EXACT_B_TIER` |
| TTCLOCK-R16 | `TORUS_TT_CLOCK_RESONANCE_REFINED` | `EXACT_B_TIER` |
| TTCLOCK-R17 | `SIMULTANEOUS_SCALE_CLOCK_MATCHING_LOCUS` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R18 | `SAME_OBSERVER_PROPER_TIME_SYNCHRONIZATION` | `EXACT_B_TIER` |
| TTCLOCK-R19 | `REDUCED_SYNCHRONIZATION_MANIFOLD_INVARIANT` | `EXACT_CONDITIONAL_B_TIER` |
| TTCLOCK-R20 | `FULL_EMD_TWO_MODE_INVARIANCE` | `OPEN_ANALYTIC` |
| TTCLOCK-R21 | `NONLINEAR_GR_TT_CLOCK_PERSISTENCE` | `OPEN_DECISIVE` |
| TTCLOCK-R22 | `EMD_QR_PHYSICAL_SAME_ORBIT` | `OPEN_DECISIVE` |
| TTCLOCK-R23 | `FULL_SOURCED_GLOBAL_SYNCHRONIZED_INTERVAL` | `OPEN_ANALYTIC` |

## Minimal phase synchronization

```text
Delta_omega = Delta_E/hbar
phi_QR(t0) = phi_QM(t0)+phi_* mod 2pi
```

is necessary and sufficient for equality of the reduced relative-phase clocks for all real time. It does **not** require action matching.

## Full reduced flow synchronization

```text
K_QR = hbar
Delta_omega = Delta_E/hbar
```

is necessary and sufficient for the orientation-preserving reduced `CP1` identification to be symplectic and to conjugate the complete Hamiltonian flows. The flows exist for every `t in R`.

## Exact detuning law

```text
delta_phi(t)
  = delta_phi(t0)
    - (Delta_omega-Delta_E/hbar)(t-t0)
    mod 2pi.
```

Thus the synchronization is resonant and neutral, not asymptotically attractive.

## Simultaneous scale and clock locus

```text
epsilon = l_P/sqrt(kappa_TT)
L = 2pi*hbar*c*(|n_1|-|n_0|)/(E_1-E_0)
```

under positive ordered gaps and the frozen TT/torus premises.

## Scope

The `!=!` signal applies to the explicit reduced orbit. Full nonlinear sourced EMD/GR synchronization remains conditional on TTCLOCK-R20 through TTCLOCK-R23.

[Canonical refined derivation](QR_TT_CLOCK_SYNCHRONIZATION_REFINED_B_TIER.txt)
