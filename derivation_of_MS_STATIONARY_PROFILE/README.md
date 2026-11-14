# derivation_of_MS_STATIONARY_PROFILE

```text
ENDPOINT_ID = ST-01
ENDPOINT = MS_STATIONARY_PROFILE
GROUP = B. Stationary profile sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Positive smooth normalized `χ`

**Output:** Exact stationary Maxwell–Schrödinger solution

## Dependency boundary

Poisson solution for `Φχ`; reconstructed `Wχ`

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [x] Complete B-tier derivation recorded in the current hull.
- [x] Every external source theorem or semantic premise pinned.
- [ ] Edge cases, sign conventions, zero modes, and gauge assumptions audited.
- [ ] Numerical or symbolic validation attached when applicable.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion status assigned.

## Planned artifacts

```text
MS_STATIONARY_PROFILE_B_TIER.txt
MS_STATIONARY_PROFILE.lean
MS_STATIONARY_PROFILE_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
