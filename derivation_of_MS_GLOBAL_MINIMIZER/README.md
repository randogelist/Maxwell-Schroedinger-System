# derivation_of_MS_GLOBAL_MINIMIZER

```text
ENDPOINT_ID = ST-04
ENDPOINT = MS_GLOBAL_MINIMIZER
GROUP = B. Stationary profile sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** `MS_EXACT_ENERGY_GAP`; frozen gauge

**Output:** Global minimizer modulo constant phase

## Dependency boundary

`MS_EXACT_ENERGY_GAP`; gauge normalization

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
MS_GLOBAL_MINIMIZER_B_TIER.txt
MS_GLOBAL_MINIMIZER.lean
MS_GLOBAL_MINIMIZER_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
