# Frozen SM-05 — NSE Hodge / Gauss-like auxiliary constraint match

**Root:** `NSE_HODGE_GAUSS_CONSTRAINT_MATCH`  
**Frozen SM row:** **SM-05** (first-class gauge constraint algebra).  
**Full B-tier proof:** [NSE_HODGE_GAUSS_CONSTRAINT_MATCH_B_TIER.txt](./NSE_HODGE_GAUSS_CONSTRAINT_MATCH_B_TIER.txt)  
**Previous:** [SM-04 exterior CAR](./NSE_EXTERIOR_CAR_OPERATOR_MATCH_B_TIER.txt)  
**Status:** `! B_TIER`, exactly scoped auxiliary Abelian model; not physical Standard Model gauge equivalence. No local Lean run or external compiler/audit.

## Exact finite Fourier model

On a finite periodic Fourier space of unconstrained vector fields `V_N` and mean-zero scalar space `Q_N`:

```text
P_N = I - grad Delta^-1 div

v = P_N v + grad(Delta^-1 div v)
u = P_N v
u(v+grad chi)=u(v)
```

The kernel `grad Q_N` acts as an additive, noncompact **auxiliary** gradient-shift group. This is not the physical SM `U(1)` group.

## Canonical gauge-like generators and precise constraint/fixing distinction

On `T*V_N`, with `{v^a,pi_b}=delta^a_b`:

```text
G_chi(v,pi)=<pi,grad chi>

{G_chi,G_eta}=0
{v,G_chi}=grad chi
{P_N v,G_chi}=0

C_phi(v)=<phi,div v>

{C_phi,G_chi}=<phi,Delta chi>
```

The Laplacian is invertible on the mean-zero Fourier scalar space. The **first-class** constraint is `G_chi=0` (equivalent to `div pi=0`); `C_phi=0` (`div v=0`) is its **gauge-fixing condition**, not its Gauss law.

The constrained/Dirac-reduced bracket is `{v^a,pi_b}_D=(P_N)^a_b`, exactly the transverse projector.

## Quantized auxiliary representation

On `L²(V_N)`:

```text
Ghat_chi=-i*hbar<grad chi,grad_v>

[Ghat_chi,Ghat_eta]=0

[Ghat_chi,M_(F(P_N v))]=0.
```

This requires reduction/rigging for physical states: translation-invariant functions along noncompact gradient directions are not nonzero normalizable vectors in ambient `L²(V_N)`.

## Pressure as slice compensator

With ambient NSE force `F_N(u)=-Projection_N((u·grad)u)+nu Delta u+f`:

```text
p_N=Delta^-1 div F_N(u)
dot u=P_N F_N(u)=F_N(u)-grad p_N.

dot v=F_N(P_N v)+grad theta
v -> v+grad chi(t)
theta -> theta+dot chi(t)

div v=0  ==>  theta=-p_N.
```

Thus the incompressible pressure is the unique correction preserving the selected solenoidal slice. Its original fluid-mechanical interpretation remains intact.

An auxiliary response Hamiltonian `H_resp(v,pi)=<pi,P_N F_N(P_N v)>` satisfies `{G_chi,H_resp}=0`. It is **not** the physical electron or fluid kinetic Hamiltonian.

## Finite NSE^X

For each layer `i`, use an independent auxiliary shift generator `G_(i,chi)`. They commute across layers. Any reciprocal graph drag built exclusively from projected velocities `P_N v_i` is invariant. The conductance matrix is a dissipative operator, **not** a nonabelian gauge structure constant.

## B-tier endpoints

| ID | Endpoint | Status |
|---|---|---|
| NGA-01 | `FINITE_HELMHOLTZ_DECOMPOSITION` | ! |
| NGA-02 | `AUXILIARY_GRADIENT_SHIFT_GROUP` | ! |
| NGA-03 | `MOMENT_MAP_TRANSLATION_GENERATORS` | ! |
| NGA-04 | `INCOMPRESSIBILITY_GAUGE_FIXING_PAIR` | ! |
| NGA-05 | `REDUCED_DIRAC_TRANSVERSE_BRACKET` | ! |
| NGA-06 | `AUXILIARY_TRANSLATION_QUANTIZATION` | ! |
| NGA-07 | `PRESSURE_PROJECTION_VELOCITY_FLOW` | ! |
| NGA-08 | `TIME_DEPENDENT_LIFT_AND_GAUGE_SLICE` | ! |
| NGA-09 | `AUXILIARY_CANONICAL_RESPONSE_HAMILTONIAN` | ! |
| NGA-10 | `PRODUCT_AUXILIARY_GAUSS_ALGEBRA` | ! |
| NGA-11 | `SM05_MATCH_AND_NONMATCH` | ! |
| NGA-12 | `NSE_HODGE_GAUSS_CONSTRAINT_MATCH_ROOT` | ! |

## Open physical and formal endpoints

- NGA-13: actual nonabelian SM Gauss generator representation.
- NGA-14: selected SM gauge bundle/connection and physical identification.
- NGA-15: physical gauge-invariant/BRST state-space audit.
- NGA-16: SM Ward current–stress source matching.
- NGA-17: microscopic NSE force and critical regularity matching.
- NGA-18: native external Lean compiler and theorem-level axiom audit.

## Frozen register position

| SM row | NSE structural result |
|---|---|
| SM-01 | Transport Lie commutator |
| SM-02 | Auxiliary velocity–pressure connection curvature |
| SM-03 | Finite Galerkin Koopman half-density Heisenberg form |
| SM-04 | Finite exterior CAR algebra (not physical fermions) |
| **SM-05** | **Auxiliary Abelian Gauss-like moment map + transverse Dirac reduction** |
| SM-06–08 | **Frozen, not implemented** |

The gradient-shift quotient of SM-05 is a **different auxiliary representation** from the velocity-pressure (U(1)) connection used for SM-02.

**Reference:** [Helmholtz/Leray projection](https://www.math.ntnu.no/preprint/numerics/2011/N7-2011.pdf) and [canonical Gauss/Coulomb constraint reduction](https://adscft.org/gr/hamiltonian-constraints/).

**Tier:** `! B_TIER`; A-tier not established.
