# derivation_of_MS_COULOMB_EQUIVALENCE

```text
ENDPOINT_ID = MS-05
ENDPOINT = MS_COULOMB_EQUIVALENCE
GROUP = A. Native Maxwell–Schrödinger core
STATUS = B_TIER_DERIVED
MARKER = !
LEAN_STATUS = NOT_EMITTED
```

## Exact theorem

Assume the unit three-torus, Coulomb gauge

```text
div A = 0
mean A = 0
mean Phi = 0
```

sufficient regularity, and the continuity identity

```text
partial_t rho + div J = 0.
```

With

```text
E = -partial_t A - grad Phi
B = curl A,
```

the first-order Maxwell equations are equivalent to

```text
-Delta Phi = rho/epsilon0
partial_t^2 A - c^2 Delta A = P J/epsilon0.
```

## Forward derivation

Gauss law and `div(partial_t A)=0` give the Poisson equation. Ampère gives

```text
-partial_t^2 A - grad(partial_t Phi) + c^2 Delta A = -J/epsilon0.
```

Application of the Leray projector removes the gradient term and yields the transverse wave equation.

## Reverse derivation

The potential definitions imply Faraday and `div B=0`. The Poisson equation gives Gauss law. The projected wave equation gives the transverse part of Ampère. Differentiating Poisson and using continuity gives its longitudinal part.

## Zero-mode and sign audit

- `L=(-Delta)_0^{-1`; the scalar and vector potentials have zero mean.
- `curl curl A=-Delta A` under `div A=0`.
- `P=I+grad L div` annihilates gradients of zero-mean scalars.
- Continuity is necessary for the reverse longitudinal implication.

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [x] Complete B-tier derivation recorded.
- [x] External semantic premises explicit.
- [x] Sign conventions, zero modes, and gauge assumptions audited.
- [ ] Numerical residual validation attached.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion above B-tier assigned.

## Artifacts

```text
MS_COULOMB_EQUIVALENCE_B_TIER.txt
MS_COULOMB_EQUIVALENCE.lean
MS_COULOMB_EQUIVALENCE_A_TIER.txt
run.cmd
```

[Canonical branch B-tier TXT](../B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

[Return to root checklist](../README.md)
