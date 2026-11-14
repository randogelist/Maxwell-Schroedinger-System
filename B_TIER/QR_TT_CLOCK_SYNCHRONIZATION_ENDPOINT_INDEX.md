# QR–TT clock-synchronization endpoint index

`! = B_TIER`; `!=!` denotes exact synchronization on the explicitly frozen reduced one-electron/two-mode TT orbit. No endpoint below is A-tier.

## Canonical refinement

- [`QR_TT_CLOCK_SYNCHRONIZATION_REFINED_B_TIER.txt`](QR_TT_CLOCK_SYNCHRONIZATION_REFINED_B_TIER.txt)
- [`QR_TT_CLOCK_SYNCHRONIZATION_REFINED_ENDPOINT_INDEX.md`](QR_TT_CLOCK_SYNCHRONIZATION_REFINED_ENDPOINT_INDEX.md)
- [`../Lean_Adapter/QR_TT_CLOCK_SYNCHRONIZATION_REFINED_MODULE_PLAN.md`](../Lean_Adapter/QR_TT_CLOCK_SYNCHRONIZATION_REFINED_MODULE_PLAN.md)

The original derivation remains preserved at [`QR_TT_CLOCK_SYNCHRONIZATION_B_TIER.txt`](QR_TT_CLOCK_SYNCHRONIZATION_B_TIER.txt).

## Refined logical separation

```text
PHASE_SYNC
  = spectral-gap matching + initial-phase matching

ACTION_SYNC
  = K_QR = hbar

FLOW_SYNC
  = PHASE_SYNC + ACTION_SYNC + orientation-preserving reduced-orbit identification

PHYSICAL_PERSISTENCE
  = full EMD two-mode invariance + nonlinear GR persistence + physical same-orbit identification
```

## Main refined endpoints

| Endpoint | Status |
|---|---|
| `MINIMAL_PHASE_SYNCHRONIZATION_IFF` | `EXACT_B_TIER` |
| `QR_TT_ACTION_MATCHING_IFF` | `EXACT_B_TIER` |
| `QR_TT_HAMILTONIAN_MATCHING_IFF` | `EXACT_B_TIER` |
| `REDUCED_CLOCK_FLOW_EQUIVALENCE_IFF` | `EXACT_CONDITIONAL_B_TIER` |
| `ONE_ELECTRON_QR_TT_CLOCKS_SYNCHRONIZED_REFINED` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_COMPLETE_REDUCED_FLOWS` |
| `REDUCED_GLOBAL_SYNCHRONIZED_COMMON_INTERVAL` | `EXACT_B_TIER_WITHIN_REDUCED_MODEL` |
| `CLOCK_DETUNING_IDENTITY` | `EXACT_B_TIER` |
| `FINITE_TIME_CLOCK_ERROR_BOUND` | `EXACT_B_TIER` |
| `REDUCED_SYNCHRONIZATION_IS_NEUTRAL` | `EXACT_B_TIER` |
| `SIMULTANEOUS_SCALE_CLOCK_MATCHING_LOCUS` | `EXACT_CONDITIONAL_B_TIER` |

## Exact reduced synchronization

```text
K_QR = hbar
omega_1-omega_0 = (E_1-E_0)/hbar
phi_QR(t0) = phi_QM(t0)+phi_* mod 2pi
```

implies, for every `t in R`,

```text
iota_{phi_*} o Phi_t^QM
  = Phi_t^QR o iota_{phi_*}.
```

## Detuning law

```text
phi_QR(t)-phi_QM(t)-phi_*
  = [phi_QR(t0)-phi_QM(t0)-phi_*]
    - [(omega_1-omega_0)-(E_1-E_0)/hbar](t-t0)
    mod 2pi.
```

The synchronization is resonant and neutral, not asymptotically attractive.

## Remaining physical gates

```text
FULL_EMD_TWO_MODE_INVARIANCE
NONLINEAR_GR_TT_CLOCK_PERSISTENCE
EMD_QR_PHYSICAL_SAME_ORBIT
FULL_SOURCED_GLOBAL_SYNCHRONIZED_INTERVAL
```

The `!=!` signal applies to the complete reduced flow. Full nonlinear sourced EMD/GR synchronization remains open.
