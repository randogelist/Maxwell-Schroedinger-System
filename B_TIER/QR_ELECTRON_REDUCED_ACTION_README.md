# QR electron reduced-action sector

```text
MARKER = !
TIER = CONDITIONAL_B_TIER
ROOT = EMD_QR_REDUCED_MATCHING_HULL
```

## Artifacts

- [`QR_ELECTRON_REDUCED_ACTION_B_TIER.txt`](QR_ELECTRON_REDUCED_ACTION_B_TIER.txt) — canonical derivation.
- [`QR_ELECTRON_REDUCED_ACTION_ENDPOINT_INDEX.md`](QR_ELECTRON_REDUCED_ACTION_ENDPOINT_INDEX.md) — twenty-endpoint register.
- [`../Lean_Adapter/QR_ELECTRON_REDUCED_ACTION_MODULE_PLAN.md`](../Lean_Adapter/QR_ELECTRON_REDUCED_ACTION_MODULE_PLAN.md) — formalization map.

## Root chain

```text
Einstein–Maxwell–Dirac electron sector
-> total stress (rho_QR,j_QR,S_QR)
-> sourced GR constraints
-> reduced symplectic two-cycle
-> K_QR
-> m_QR=K_QR/hbar
-> r=m_QR-1
-> matched shell r=0.
```

## Correct quantum level

For the frozen one-particle profile orbit,

```text
Omega_QM = hbar*omega_FS
integral omega_FS = 2*pi
K_QM = hbar
m_QM = 1.
```

The QR integer is a first-Chern number. It is not electron number.

## Conditional scale ladder

Under

```text
K_QR = kappa_GR*c^3*epsilon^2/G
```

and QR prequantization,

```text
epsilon_m = sqrt(m/kappa_GR)*l_P,
m=1,2,3,... .
```

Same-orbit matching to the current one-particle quantum orbit selects `m=1`:

```text
epsilon = l_P/sqrt(kappa_GR).
```

The historical endpoint remains

```text
kappa_GR = 1/4
-> epsilon = 2*l_P.
```

## Spectral filter

For integer mismatch `r=m_QR-1`,

```text
Q_q(r)=exp(-tau*r^2)*exp(i*phi*r)
```

converges as `tau -> infinity` to the indicator of `r=0`. In operator form, for self-adjoint integer-spectrum `R_hat`,

```text
exp(-tau*R_hat^2)*exp(i*phi*R_hat)
```

converges strongly to the zero-eigenspace projector.

## Open decisive endpoints

```text
QR_REDUCED_ORBIT_EXISTENCE
QR_PREQUANTUM_LINE_BUNDLE_REALIZATION
QR_GAUSSIAN_ACTION_LAW
QR_COEFFICIENT_ONE_QUARTER
SOURCED_VACUUM_REDUCED_ADAPTER
```

No artifact establishes A-tier or unconditional Planck-scale selection.
