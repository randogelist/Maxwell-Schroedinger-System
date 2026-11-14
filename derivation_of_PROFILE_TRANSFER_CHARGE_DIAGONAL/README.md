# derivation_of_PROFILE_TRANSFER_CHARGE_DIAGONAL

```text
ENDPOINT_ID = CA-03
ENDPOINT = PROFILE_TRANSFER_CHARGE_DIAGONAL
GROUP = C. Creation–annihilation/profile-transfer sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Smooth normalized `χ`

**Output:** `q·diag(Pχ − P₀) = q(|χ|² − 1)`

## Dependency boundary

`PROFILE_TRANSFER_COMMUTATOR`; integral-kernel diagonal

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
PROFILE_TRANSFER_CHARGE_DIAGONAL_B_TIER.txt
PROFILE_TRANSFER_CHARGE_DIAGONAL.lean
PROFILE_TRANSFER_CHARGE_DIAGONAL_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
