# derivation_of_STATIONARY_PROFILE_REPRODUCTION

```text
ENDPOINT_ID = V-04
ENDPOINT = STATIONARY_PROFILE_REPRODUCTION
GROUP = F. Validation endpoints
STATUS = NUMERICAL_TARGET
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Manufactured stationary profile

**Output:** Numerical solver reproduces the exact solution

## Dependency boundary

`MS_STATIONARY_PROFILE`; manufactured-solution data

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [ ] Complete B-tier derivation recorded in the current hull.
- [ ] Every external source theorem or semantic premise pinned.
- [ ] Edge cases, sign conventions, zero modes, and gauge assumptions audited.
- [ ] Numerical or symbolic validation attached when applicable.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion status assigned.

## Planned artifacts

```text
STATIONARY_PROFILE_REPRODUCTION_B_TIER.txt
STATIONARY_PROFILE_REPRODUCTION.lean
STATIONARY_PROFILE_REPRODUCTION_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
