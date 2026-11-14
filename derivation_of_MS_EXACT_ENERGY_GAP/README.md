# derivation_of_MS_EXACT_ENERGY_GAP

```text
ENDPOINT_ID = ST-03
ENDPOINT = MS_EXACT_ENERGY_GAP
GROUP = B. Stationary profile sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Admissibility; Gauss law

**Output:** Three nonnegative energy-gap terms

## Dependency boundary

`MS_GROUND_STATE_TRANSFORM`; Gauss law; normalization

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
MS_EXACT_ENERGY_GAP_B_TIER.txt
MS_EXACT_ENERGY_GAP.lean
MS_EXACT_ENERGY_GAP_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
