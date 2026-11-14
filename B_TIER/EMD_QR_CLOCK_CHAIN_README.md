# One-electron EMD / QR clock chain

```text
MARKER = !
REDUCED_SYNC_SIGNAL = !=!
A_TIER = NOT_ESTABLISHED
```

## Artifacts

- [`ONE_ELECTRON_EMD_QR_CLOCK_SYNCHRONIZATION_B_TIER.txt`](ONE_ELECTRON_EMD_QR_CLOCK_SYNCHRONIZATION_B_TIER.txt) — abstract Hamiltonian-flow synchronization criterion.
- [`QR_TT_CLOCK_SYNCHRONIZATION_B_TIER.txt`](QR_TT_CLOCK_SYNCHRONIZATION_B_TIER.txt) — explicit reduced TT clock realization.
- [`QR_TT_CLOCK_SYNCHRONIZATION_REFINED_B_TIER.txt`](QR_TT_CLOCK_SYNCHRONIZATION_REFINED_B_TIER.txt) — separation of phase, action, flow, and physical persistence.
- [`EMD_TWO_MODE_CLOCK_CLOSURE_REFINED_B_TIER.txt`](EMD_TWO_MODE_CLOCK_CLOSURE_REFINED_B_TIER.txt) — tangency criterion, raw Fourier sideband obstruction, dressed-orbit gate, and finite-time persistence bound.

## Exact refined chain

```text
DRESSED_EMD_CP1_EMBEDDING
+ R_tan = 0
+ H_EMD o iota = C + Delta_E*u
+ K_QR = hbar
+ Delta_omega = Delta_E/hbar
+ initial phase match
-> exact EMD/QR reduced-flow synchronization.
```

## Decisive obstruction

```text
{k0,k1} matter modes
-> {0, +/- (k1-k0)} source modes
-> {k0,k1,2*k0-k1,2*k1-k0} feedback modes.
```

Hence raw two-Fourier-mode closure is generically false. The open physical endpoint is a nonlinear dressed invariant `CP1` orbit.
