# derivation_of_AB_PHASE

```text
ENDPOINT_ID = V-08
ENDPOINT = AB_PHASE
GROUP = F. Validation endpoints
STATUS = BENCHMARK_TARGET
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Closed loop and magnetic flux

**Output:** `Δphase = qΦ_B/ℏ`

## Dependency boundary

Gauge connection; closed loop; magnetic flux

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
AB_PHASE_B_TIER.txt
AB_PHASE.lean
AB_PHASE_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
