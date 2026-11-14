# derivation_of_A_DAGGER_KERNEL_SCALE_IDENTIFICATION

```text
ENDPOINT_ID = QMGR-03
ENDPOINT = A_DAGGER_KERNEL_SCALE_IDENTIFICATION
STATUS = EXACT_B_TIER
```

## Statement

The heat regularization

```text
a_ε = exp((ε²/4)Δ)a_dagger
```

has physical Fourier multiplier `exp(-ε²|ξ|²/4)`. Therefore comparison with the historical Gaussian multiplier `exp(-a_*²|ξ|²/4)=exp(-l_*²|ξ|²)` gives

```text
a_* = ε,
l_* = ε/2.
```

## Dependencies

- periodic Laplacian Fourier symbol
- `A_DAGGER_HEAT_REGULARIZATION`
- physical wave vector `ξ_k=2πk`

## Promotion checklist

- [x] Complete B-tier derivation recorded.
- [x] Torus and whole-space kernel conventions audited.
- [ ] Exact Fourier multiplier theorem emitted in Lean.
- [ ] Cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.

[Canonical derivation](../B_TIER/MS_GR_PLANCK_KERNEL_ENDPOINT_B_TIER.txt)
