# derivation_of_A_DAGGER_HEAT_REGULARIZATION

```text
ENDPOINT_ID = AD-01
ENDPOINT = A_DAGGER_HEAT_REGULARIZATION
GROUP = D. a_dagger magnetic extension
STATUS = B_TIER_DERIVED
MARKER = !
LEAN_STATUS = NOT_EMITTED
```

## Exact theorem

Let `a_dagger` be a periodic vector-valued distribution and let `ε>0`. Define

```text
a_ε = exp((ε²/4)Delta) a_dagger.
```

Then

```text
a_ε in C^infinity(T³;R³).
```

If distributionally

```text
div a_dagger = 0
mean a_dagger = 0,
```

then

```text
div a_ε = 0
mean a_ε = 0.
```

## Fourier derivation

For Fourier mode `k in Z³`,

```text
hat(a_ε)(k)
  = exp(-pi² ε² |k|²) hat(a_dagger)(k).
```

A periodic distribution has at most polynomial Fourier growth. Multiplication by the Gaussian factor gives rapid decay, hence smoothness. The multiplier is scalar and commutes with `k dot` and with the zero-mode projection; therefore solenoidality and mean zero are preserved.

## Scope boundary

This theorem requires no prior `L²`, Sobolev, or `BMO^{-1}` membership of the raw datum. It does not establish the separate claims

```text
a_dagger in L²
a_dagger notin BMO^{-1}
precise Sobolev threshold.
```

Those remain `RAW_A_DAGGER_OUTSIDER_PROPERTIES`.

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [x] Complete B-tier Fourier derivation recorded.
- [x] Distributional domain explicit.
- [x] Multiplier, zero-mode, and divergence audits completed.
- [ ] Numerical spectral-smoothing check attached.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion above B-tier assigned.

## Artifacts

```text
A_DAGGER_HEAT_REGULARIZATION_B_TIER.txt
A_DAGGER_HEAT_REGULARIZATION.lean
A_DAGGER_HEAT_REGULARIZATION_A_TIER.txt
run.cmd
```

[Canonical branch B-tier TXT](../B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

[Return to root checklist](../README.md)
