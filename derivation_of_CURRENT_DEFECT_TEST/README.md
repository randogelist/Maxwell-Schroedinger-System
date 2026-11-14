# derivation_of_CURRENT_DEFECT_TEST

```text
ENDPOINT_ID = V-05
ENDPOINT = CURRENT_DEFECT_TEST
GROUP = F. Validation endpoints
STATUS = DECISIVE_NUMERICAL_TARGET
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** `B_λ,A_λ,θ_λ,χ`

**Output:** Compute `‖J_Max − J_mat‖`

## Dependency boundary

`A_DAGGER_STATIC_WITH_CURRENT_DEFECT`; discrete current norms

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
CURRENT_DEFECT_TEST_B_TIER.txt
CURRENT_DEFECT_TEST.lean
CURRENT_DEFECT_TEST_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
