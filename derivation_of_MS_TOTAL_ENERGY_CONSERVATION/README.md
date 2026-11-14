# derivation_of_MS_TOTAL_ENERGY_CONSERVATION

```text
ENDPOINT_ID = MS-06
ENDPOINT = MS_TOTAL_ENERGY_CONSERVATION
GROUP = A. Native Maxwell–Schrödinger core
STATUS = TARGET_DERIVATION
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Sufficiently regular solution; static real `W`

**Output:** Conservation of total Maxwell–Schrödinger energy

## Dependency boundary

Matter equation; Maxwell equations; continuity; integration by parts

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
MS_TOTAL_ENERGY_CONSERVATION_B_TIER.txt
MS_TOTAL_ENERGY_CONSERVATION.lean
MS_TOTAL_ENERGY_CONSERVATION_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
