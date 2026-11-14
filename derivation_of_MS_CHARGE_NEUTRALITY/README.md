# derivation_of_MS_CHARGE_NEUTRALITY

```text
ENDPOINT_ID = MS-01
ENDPOINT = MS_CHARGE_NEUTRALITY
GROUP = A. Native Maxwell–Schrödinger core
STATUS = B_TIER_DERIVED
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** `‖ψ‖₂ = 1`, `|T³| = 1`

**Output:** `∫ q(|ψ|² − 1) = 0`

## Dependency boundary

Definitions of `ρψ`; normalization; unit-volume torus

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
MS_CHARGE_NEUTRALITY_B_TIER.txt
MS_CHARGE_NEUTRALITY.lean
MS_CHARGE_NEUTRALITY_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
