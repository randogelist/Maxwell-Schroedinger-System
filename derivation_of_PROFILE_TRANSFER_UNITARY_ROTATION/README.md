# derivation_of_PROFILE_TRANSFER_UNITARY_ROTATION

```text
ENDPOINT_ID = CA-05
ENDPOINT = PROFILE_TRANSFER_UNITARY_ROTATION
GROUP = C. Creation–annihilation/profile-transfer sector
STATUS = B_TIER_DERIVED
MARKER = !
LEAN_STATUS = NOT_EMITTED
```

## Exact theorem

Let `e₀(x)=1` and let `χ>0` satisfy

```text
‖e₀‖₂ = ‖χ‖₂ = 1.
```

Set

```text
c = <e₀,χ> in (0,1].
```

If `c=1`, then `χ=e₀` and the identity implements the transfer. If `c<1`, define

```text
s = sqrt(1-c²)
ξ = (χ-c e₀)/s
θ = arccos(c).
```

Then `ξ` is normalized and orthogonal to `e₀`. Define

```text
Gχ = a†(ξ)a(e₀)-a†(e₀)a(ξ)
Uχ = exp(θ Gχ).
```

On the two-mode Fock sector, `Gχ†=-Gχ`; therefore `Uχ` is unitary. It commutes with the number operator and, on the one-particle sector,

```text
Uχ e₀ = χ.
```

## One-particle matrix

In the ordered basis `(e₀,ξ)`,

```text
Gχ = [[0,-1],[1,0]]
exp(θGχ) = [[cosθ,-sinθ],[sinθ,cosθ]].
```

Application to `(1,0)` gives `(cosθ,sinθ)`, corresponding to `χ=c e₀+s ξ`.

## Scope boundary

The theorem is a number-preserving two-mode rotation. It does not represent electron–positron pair creation and does not by itself specify a dynamical Hamiltonian for the full Maxwell–Schrödinger system.

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [x] Complete B-tier derivation recorded.
- [x] Degenerate case `χ=e₀` separated.
- [x] CAR sign and adjoint conventions audited.
- [ ] Numerical finite-matrix check attached.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion above B-tier assigned.

## Artifacts

```text
PROFILE_TRANSFER_UNITARY_ROTATION_B_TIER.txt
PROFILE_TRANSFER_UNITARY_ROTATION.lean
PROFILE_TRANSFER_UNITARY_ROTATION_A_TIER.txt
run.cmd
```

[Canonical branch B-tier TXT](../B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

[Return to root checklist](../README.md)
