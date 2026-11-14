# derivation_of_MS_ENERGY_TRAPPING

```text
ENDPOINT_ID = ST-05
ENDPOINT = MS_ENERGY_TRAPPING
GROUP = B. Stationary profile sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Energy gap; total energy conservation

**Output:** Uniform field and covariant-gradient bounds

## Dependency boundary

`MS_EXACT_ENERGY_GAP`; `MS_TOTAL_ENERGY_CONSERVATION`

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
MS_ENERGY_TRAPPING_B_TIER.txt
MS_ENERGY_TRAPPING.lean
MS_ENERGY_TRAPPING_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
