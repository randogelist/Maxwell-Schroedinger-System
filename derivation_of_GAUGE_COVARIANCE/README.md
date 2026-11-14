# derivation_of_GAUGE_COVARIANCE

```text
ENDPOINT_ID = V-02
ENDPOINT = GAUGE_COVARIANCE
GROUP = F. Validation endpoints
STATUS = ANALYTICAL_NUMERICAL_TARGET
TIER = B_TIER_HULL
```

## Exact target

**Inputs:** Gauge transformation of `ψ,A,Φ`

**Output:** Gauge-invariant observables remain unchanged

## Dependency boundary

Gauge action on `ψ,A,Φ`; invariant observable list

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
GAUGE_COVARIANCE_B_TIER.txt
GAUGE_COVARIANCE.lean
GAUGE_COVARIANCE_A_TIER.txt
run.cmd
```

Prepared Lean code does not establish A-tier status. The theorem, premises, domain, gauge, constants, and endpoint may not change during promotion.

[Return to root checklist](../README.md)
