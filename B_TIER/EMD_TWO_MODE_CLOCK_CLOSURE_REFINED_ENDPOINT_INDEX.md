# Refined EMD two-mode clock-closure endpoint index

`! = B_TIER`; `!=!` denotes exact synchronization after the explicitly named dressed-orbit closure gates. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| EMDCLK-01 | `EMD_EMBEDDED_ORBIT_TANGENCY_IFF_INVARIANCE` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-02 | `EMD_PULLBACK_HAMILTONIAN_FLOW` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-03 | `EMD_TWO_MODE_POPULATION_PHASE_EQUATIONS` | `EXACT_B_TIER` |
| EMDCLK-04 | `EMD_RIGID_CLOCK_AFFINE_HAMILTONIAN_IFF` | `EXACT_B_TIER` |
| EMDCLK-05 | `EMD_OPERATOR_LEAKAGE_DIAGONAL_GAP_GATE` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-06 | `EMD_TWO_FOURIER_MODE_SOURCE_SUPPORT` | `EXACT_B_TIER` |
| EMDCLK-07 | `EMD_TWO_FOURIER_MODE_SIDEBAND_GENERATION` | `EXACT_B_TIER` |
| EMDCLK-08 | `EMD_RAW_TWO_MODE_GENERIC_NONINVARIANCE` | `EXACT_B_TIER_SCOPE_STATEMENT` |
| EMDCLK-09 | `EMD_DRESSED_TWO_LEVEL_CLOCK_GATE` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-10 | `EMD_QR_DRESSED_CLOCK_SYNCHRONIZATION` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_CLOSURE_GATES` |
| EMDCLK-11 | `EMD_APPROXIMATE_TANGENCY_GRONWALL_BOUND` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-12 | `EMD_QR_CLOCK_PERSISTENCE_BOUND` | `EXACT_CONDITIONAL_B_TIER` |
| EMDCLK-13 | `EMD_QR_CLOCK_DEFECT_ZERO_IFF_EXPLICIT_GATES` | `EXACT_B_TIER` |
| EMDCLK-14 | `ONE_ELECTRON_EMD_QR_CLOCK_CLOSURE_REFINED` | `CONDITIONAL_B_TIER` |
| EMDCLK-15 | `DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION` | `OPEN_DECISIVE` |
| EMDCLK-16 | `DRESSED_EMD_TANGENCY_VERIFICATION` | `OPEN_DECISIVE` |
| EMDCLK-17 | `DRESSED_EMD_AFFINE_HAMILTONIAN_VERIFICATION` | `OPEN_DECISIVE` |
| EMDCLK-18 | `GLOBAL_SOURCED_COMMON_INTERVAL` | `OPEN_ANALYTIC` |

## Refined exact gate

```text
R_tan = 0
H_EMD o iota_dress = C + Delta_E*u
K_QR = hbar
Delta_omega = Delta_E/hbar
matched initial phase
```

imply

```text
iota_clock o Phi_t^EMD = Phi_t^QR o iota_clock
```

on every common interval of existence.

## Sideband obstruction

For raw matter support `{k0,k1}`, the quadratic source contains `{0, ±(k1-k0)}`. Coupling the generated field back to matter produces

```text
{k0, k1, 2*k0-k1, 2*k1-k0}.
```

Thus a raw two-Fourier-mode sector is generically noninvariant. The physical continuation must construct a nonlinear dressed `CP1` orbit.

[Canonical derivation](EMD_TWO_MODE_CLOCK_CLOSURE_REFINED_B_TIER.txt)
