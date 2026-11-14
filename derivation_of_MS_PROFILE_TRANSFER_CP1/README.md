# derivation_of_MS_PROFILE_TRANSFER_CP1

```text
ENDPOINT_ID = QMGR-01
ENDPOINT = MS_PROFILE_TRANSFER_CP1
STATUS = EXACT_B_TIER
```

## Statement

For normalized `e₀, χ ∈ L²(T³;ℂ)` spanning a two-dimensional complex subspace, the projective orbit is `P(spanℂ{e₀,ξ}) ≃ CP¹`. The number-preserving two-mode transfer unitary acts within this orbit and maps the uniform ray to the profile ray.

## Dependencies

- `PROFILE_TRANSFER_UNITARY_ROTATION`
- orthogonal two-mode decomposition
- projectivization of a two-dimensional complex Hilbert space

## Promotion checklist

- [x] Complete B-tier derivation recorded.
- [x] Degenerate case `χ ∈ ℂe₀` separated.
- [ ] Exact Lean signature emitted.
- [ ] Cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.

[Canonical derivation](../B_TIER/MS_GR_PLANCK_KERNEL_ENDPOINT_B_TIER.txt)
