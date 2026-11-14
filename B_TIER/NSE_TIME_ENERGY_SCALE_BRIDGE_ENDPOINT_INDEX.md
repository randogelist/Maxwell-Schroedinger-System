# NSE time–energy scale bridge endpoint index

`! = B_TIER`. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| NSETE-01 | `CIRCULAR_NSE_EIGENPROFILE` | `EXACT_B_TIER` |
| NSETE-02 | `ADVECTED_CIRCULAR_NSE_SOLUTION` | `EXACT_B_TIER` |
| NSETE-03 | `NSE_PHASE_AMPLITUDE_ENERGY_TIMES` | `EXACT_B_TIER` |
| NSETE-04 | `CIRCULAR_NSE_ENERGY_DISSIPATION` | `EXACT_B_TIER` |
| NSETE-05 | `NSE_PHASE_RADIUS_SEMIGROUP` | `EXACT_B_TIER` |
| NSETE-06 | `NSE_QM_PHASE_CLOCK_MATCHING` | `EXACT_CONDITIONAL_B_TIER` |
| NSETE-07 | `NSE_ACTION_SCALE_CALIBRATION` | `CONDITIONAL_B_TIER` |
| NSETE-08 | `NSE_CERTIFICATE_ENERGY_TRANSLATION` | `EXACT_CONDITIONAL_B_TIER` |
| NSETE-09 | `CIRCULAR_NSE_SEMIGROUP_INTERTWINING` | `EXACT_B_TIER` |
| NSETE-10 | `ONE_ELECTRON_QM_MAXWELL_GR_TO_NSE_TIME_ENERGY_SCALE` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_NSE_MODE` |
| NSETE-11 | `EMD_TO_NSE_PHASE_RADIUS_SEMICONJUGACY` | `OPEN_DECISIVE` |
| NSETE-12 | `PHYSICAL_NSE_MASS_DENSITY_IDENTIFICATION` | `OPEN_PHYSICAL_CALIBRATION` |
| NSETE-13 | `NSE_ENERGY_TO_ELECTRON_GAP_CALIBRATION` | `OPEN_PHYSICAL_CALIBRATION` |
| NSETE-14 | `DISSIPATIVE_RESERVOIR_DILATION` | `OPEN_FUNCTIONAL_ANALYTIC` |

## Exact selected NSE mode

```text
u(t,x)
  = U0 e3
    + r0 exp(-nu k^2 t)
      (cos(k(z-U0 t)+alpha), sin(k(z-U0 t)+alpha), 0)
```

```text
omega_NSE = k U0
gamma_NSE = nu k^2
```

## Exact scales

```text
T_phase  = 1/|k U0|
P_phase  = 2pi/|k U0|
T_amp    = 1/(nu k^2)
T_energy = 1/(2nu k^2)
```

```text
E_NSE(t)
  = (rho_f L^3/2) r0^2 exp(-2nu k^2 t)
```

## One-electron phase matching

```text
k U0 = Delta_E/hbar
```

## Required dissipative extension

```text
O_ext = CP1 x R_{>=0}
Phi_t(u,phi,r)
  = (u, phi-(Delta_E/hbar)t, r exp(-nu k^2 t))
```

The full cross-theory bridge remains conditional on `EMD_TO_NSE_PHASE_RADIUS_SEMICONJUGACY` and an explicit physical energy calibration.

[Canonical derivation](NSE_TIME_ENERGY_SCALE_BRIDGE_B_TIER.txt)
