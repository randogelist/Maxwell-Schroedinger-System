# derivation_of_MS_CONSTRAINT_PROPAGATION

```text
ENDPOINT_ID = MS-04
ENDPOINT = MS_CONSTRAINT_PROPAGATION
GROUP = A. Native Maxwell–Schrödinger core
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Maxwell evolution; continuity identity

**Output:** Gauss residuals remain constant

## Dependency boundary

`MS_CONTINUITY_IDENTITY`; Maxwell divergence identities

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
MS_CONSTRAINT_PROPAGATION_B_TIER.txt
MS_CONSTRAINT_PROPAGATION.lean
MS_CONSTRAINT_PROPAGATION_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
