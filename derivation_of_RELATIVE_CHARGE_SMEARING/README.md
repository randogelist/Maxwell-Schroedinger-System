# derivation_of_RELATIVE_CHARGE_SMEARING

```text
ENDPOINT_ID = CA-04
ENDPOINT = RELATIVE_CHARGE_SMEARING
GROUP = C. Creation–annihilation/profile-transfer sector
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Test multiplier `M_f`

**Output:** Exact smeared relative-charge expectation

## Dependency boundary

`PROFILE_TRANSFER_CHARGE_DIAGONAL`; bounded test multipliers

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
RELATIVE_CHARGE_SMEARING_B_TIER.txt
RELATIVE_CHARGE_SMEARING.lean
RELATIVE_CHARGE_SMEARING_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
