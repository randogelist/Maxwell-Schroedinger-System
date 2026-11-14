# Frozen SM-06 — auxiliary NSE BRST nilpotency

**Root:** `NSE_AUXILIARY_BRST_NILPOTENCY`  
**Full derivation:** [NSE_AUXILIARY_BRST_NILPOTENCY_B_TIER.txt](./NSE_AUXILIARY_BRST_NILPOTENCY_B_TIER.txt)  
**Predecessor:** [SM-05 Hodge/Gauss auxiliary constraint](./NSE_HODGE_GAUSS_CONSTRAINT_MATCH_B_TIER.txt)  
**Frozen row:** **SM-06 only**; SM-01–05 unchanged; SM-07–08 pending.  
**Status:** `! B_TIER`; no local Lean run or external theorem-level axiom audit.

## Finite auxiliary gradient-shift complex

Choose finite mean-zero Fourier scalar space `Q_N`, ambient vector space `V_N`, gradient `G=grad`, and Leray projector `P=I-G*Delta^-1*div`. The physical velocity is `u=P v`.

Ghosts: `c` (Grassmann odd, ghost number +1), `bar_c` (odd, ghost number -1), `B` (even, ghost number 0). The time-dependent gauge compensator is `theta`.

```text
s v     = grad c
s c     = 0
s bar_c = B
s B     = 0
s theta = dot c
s pi    = 0

s²=0
s u=P grad c=0
```

The gauge-fixing fermion and exact BRST variation are

```text
Psi_gf = <bar_c, div v + (alpha/2)*B>

s Psi_gf
  = <B,div v> + (alpha/2)*<B,B> - <bar_c,Delta c>.
```

The finite Faddeev–Popov ghost Laplacian `Delta` is invertible on `Q_N` and independent of `v`.

## Exact cohomology scope

For the **minimal configuration-observable complex** only,

```text
H^0(s) = {F(v): F(v+grad lambda)=F(v)}
       ≅ C^∞(V_(N,sigma)).
```

This does **not** identify a Standard Model quantum physical Hilbert space. Full Hamiltonian BFV/BRST state reduction and positivity require additional structure.

The differential `s` acts only in longitudinal gauge directions, unlike the all-coordinate de Rham `d` used in frozen SM-04; the two nilpotent complexes are different.

## Canonical charge and operator identity

With commuting constraints `G_a=<pi,grad q_a>`, anticommuting ghosts `c^a`, and canonical ghost momenta, define

```text
Omega = sum_a c^a G_a
{Omega,Omega}=0

Ghat_a=-i*hbar*(grad q_a·grad_v)
Qhat_BRST = sum_a c^a Ghat_a
Qhat_BRST² = 0
```

The operator equality is established on the finite smooth ghost-test domain; no physical non-Abelian Standard Model BRST is inferred.

## Response action and (NSE)^X compatibility

For an ambient Galerkin acceleration `F_N(u)` that depends only on `u=P v`,

```text
S_0 = integral dt <pi, dot v - F_N(P v) - grad theta>.

s S_0 = 0
s(S_0 + integral dt s Psi_gf) = 0.
```

With finite layers and reciprocal graph exchange `(L_kappa u)_i=sum_j kappa_ij(u_i-u_j)`, each `u_i=P_i v_i` is BRST-invariant; so is the graph interaction. BRST is an algebraic compatibility gate, **not** a PDE regularity theorem.

## B-tier endpoint register

| ID | Endpoint |
|---|---|
| NBR-01 | `ABELIAN_GHOST_EXTENSION` |
| NBR-02 | `OFF_SHELL_BRST_NILPOTENCY` |
| NBR-03 | `ANTIGHOST_NAKANISHI_EXTENSION` |
| NBR-04 | `FINITE_FADDEEV_POPOV_GAUGE_FIXING` |
| NBR-05 | `CONFIGURATION_GHOST_ZERO_COHOMOLOGY` |
| NBR-06 | `DIFFERENCE_FROM_DE_RHAM_NILPOTENCY` |
| NBR-07 | `FINITE_ABELIAN_BFV_CHARGE` |
| NBR-08 | `FINITE_OPERATOR_BRST_SQUARE_ZERO` |
| NBR-09 | `NSE_LIFTED_RESPONSE_ACTION_INVARIANCE` |
| NBR-10 | `PRODUCT_ABELIAN_BRST_NSE_POWER_X` |
| NBR-11 | `REGULARITY_ADMISSION_INDEPENDENT_OF_BRST` |
| NBR-12 | `SM06_EXACT_AUXILIARY_MATCH` |
| NBR-13 | `NSE_AUXILIARY_BRST_NILPOTENCY_ROOT` |

## Open gates

- NBR-14: selected physical SU(3)/SU(2)/U(1) non-Abelian BRST algebra.
- NBR-15: actual chiral quantum gauge-anomaly audit.
- NBR-16: gauge-consistent physical SM–NSE force/current matching.
- NBR-17: positive physical BRST Hilbert state-space construction.
- NBR-18: external Lean compiler and theorem-level axiom audit.

## Frozen eight-row progress

| Row | NSE construction |
|---|---|
| SM-01 | Transport Lie commutator |
| SM-02 | Auxiliary U(1) connection curvature |
| SM-03 | Finite classical Koopman/Heisenberg form |
| SM-04 | Exterior CAR, physical electron interpretation open |
| SM-05 | Auxiliary Abelian constraint and transverse bracket |
| **SM-06** | **Auxiliary Abelian nilpotent BRST complex** |
| SM-07 | Frozen, not yet constructed |
| SM-08 | Frozen, not yet constructed |

Source anchors: [Abelian BRST formalism](https://link.springer.com/article/10.1140/epjc/s10052-014-2881-8) · [BFV BRST/algebraic reduction](https://citeseerx.ist.psu.edu/document?doi=f258057e8ab7de57f00e1a09f64a6da607512328&repid=rep1&type=pdf).

**Tier:** `! B_TIER` conditional only on finite Fourier/Hodge model and the separately added ghost apparatus; physical Standard Model BRST and A-tier are open.
