# GR Stage 4 — two-electron Dirac stress and sourced ADM constraints

**Root:** `GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM`

**Full B-tier proof:** [GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_B_TIER.txt](./GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_B_TIER.txt)  
**GR Stage 3:** [Helical sourced Einstein–Maxwell constraints](./GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_B_TIER.txt)  
**Quantum predecessor:** [Finite antisymmetric two-electron GKSL–NSE bridge](./NCW_SIX_GATE_FINITE_TWO_ELECTRON_DEPHASING_BRIDGE_B_TIER.txt)

**Status:** `! B_TIER`. The free two-electron Fock expectation and a classical two-Dirac-field/dust ADM **initial-constraint** model are exact within stated conventions. A *fully renormalized two-electron Standard Model/Einstein source is not established*. No local Lean run or native axiom audit.

## Actual free Dirac two-electron source

Natural units `ℏ=c=1`. For nonzero even integer `n`, `k=2πn/L`, `p=k/2`, `V=L³`, `E_p=sqrt(m²+p²)`, define

```text
a=sqrt((E_p+m)/(2E_p))
b=(p/(E_p+m))*a

u_plus = (a,0,b,0)
u_minus= (0,a,0,b)
u_rest = (1,0,0,0)

phi_plus  = exp(i*p*z-i*E_p*t)*u_plus /sqrt(V)
phi_minus = exp(-i*p*z-i*E_p*t)*u_minus/sqrt(V)
phi_rest  = exp(-i*m*t)*u_rest/sqrt(V)

Psi_2=((phi_plus+phi_minus)/sqrt(2)) wedge phi_rest
```

Then `Psi_2` is a normalized antisymmetric **free** two-electron state, with quantum energy `E_p+m`. The normal-ordered symmetric Dirac stress and electric-current readouts are

```text
rho_2=(E_p+m)/V
j_grav=(p/(2V))*(cos(kz),-sin(kz),0)

n_e=2/V
J_e^0=-2e/V
J_e^space=-(e*p/(E_p*V))*(cos(kz),-sin(kz),0)

int_T3 j_grav dx = 0
int_T3 J_e^space dx = 0
```

The gravitational momentum is the **Belinfante-symmetric stress**, not `m*j_num`. The canonical orbital momentum density of the helical orbital vanishes pointwise, while its Belinfante momentum is a nontrivial spin-gradient/solenoidal density.

## Exact classical sourced initial constraints

To make Maxwell charge neutral on the compact torus, provide a physically declared classical positive-charge dust background with `rho_q,bg=+2e/V`, zero initial mechanical momentum and positive energy density `rho_bg>0`. Choose initial Maxwell `E=B=0`, spatial metric `h=delta`.

Set

```text
kappa_G=8*pi*G
h_minus=(cos(kz),-sin(kz),0)
h_perp=(sin(kz), cos(kz),0)

w=(kappa_G/(4V))*h_perp
S=e_z tensor w + w tensor e_z
K=H*delta+S

rho_total=(E_p+m)/V+rho_bg

H²=(kappa_G/3)*rho_total+Lambda/3
   +kappa_G²/(48V²),       Lambda>=0.
```

Direct differentiation yields

```text
div E=0=total charge
div B=0

div(K-(tr K)*h)=kappa_G*j_grav
R_h+(tr K)²-|K|²=2*kappa_G*rho_total+2*Lambda.
```

The classical **two-Dirac-field initial-stress** interpretation uses the established covariant 3+1 Dirac normal stress projections in an adapted flat intrinsic spatial triad. The distinct **two-electron quantum Fock** stress expectation equals the stated flat-space normal-ordered bilinear, but its renormalized curved-background source, background polarization and physical electron-gravity coupling require new proof.

## Spectral cancellation

```text
|j_grav|=|k|/(4V)
|w|=kappa_G*|j_grav|/|k|=kappa_G/(4V)

|S|²=kappa_G²/(8V²)
Delta(H²)_shear=kappa_G²/(48V²).
```

The shear contribution is independent of `k≠0` for this finite mode-normalized source; `rho_2` still grows with `|k|`. This is a selected Fourier identity, **not** a universal coupling constant.

## NSE and dephasing

The chosen normalized momentum-to-energy *readout* (not necessarily a physical Landau-frame fluid velocity) is

```text
u0=j_grav/rho_2
  =p/(2*(E_p+m))*h_minus.

div u0=0
(u0·grad)u0=0
curl u0=k*u0
Delta u0=-k²*u0

u(t)=exp(-nu*k²*t)*u0.
```

The static free Dirac state matches `nu=0` Euler. An added **number-preserving finite Lindblad dephasing** with rate `gamma` produces `j_grav(t)=exp(-gamma*t)j_grav(0)` and exactly matches the NSE profile when `gamma=nu*k²`. The rate is assigned, not derived from Coulomb, QED or GR.

For every `t`, the corresponding decayed momentum can be put on a separate ADM constraint surface:

```text
H(t)²=kappa_G*rho_total/3+Lambda/3
     +kappa_G²*exp(-2gamma*t)/(48V²).
```

**No-go:** these instantaneous surfaces are **not one Einstein evolution with fixed flat `h_t=delta`**. The ADM metric evolution would require `0=-2N K+Lie_beta delta`. Integration of its trace over the torus forces `H*int N=0`, impossible for positive lapse and nonzero `H`. Actual Einstein evolution must change the spatial metric and solve the matter equations.

## Scoped endpoint register

| ID | Endpoint | Classification |
|---|---|---|
| G2D-01 | `DIRAC_TWO_ELECTRON_SLATER_ORTHONORMALITY` | ! exact |
| G2D-02 | `HELICAL_DIRAC_NUMBER_CURRENT` | ! exact |
| G2D-03 | `ACTUAL_FREE_DIRAC_BELINFANTE_STRESS_READOUT` | ! exact free source |
| G2D-04 | `CURVED_DIRAC_INITIAL_NORMAL_PROJECTIONS` | ! classical 3+1 geometry |
| G2D-05 | `MAXWELL_TORUS_GAUSS_REPAIR` | ! with charged background |
| G2D-06 | `DIRAC_SOURCED_ADM_EXPLICIT_WITNESS` | ! classical initial constraints |
| G2D-07 | `SPIN_MOMENTUM_INVERSE_DIVERGENCE_CANCELLATION` | ! exact |
| G2D-08 | `HELICAL_DIRAC_GRAVITY_NSE_READOUT` | ! selected readout |
| G2D-09 | `DEGENERATE_TWO_ELECTRON_GKSL_TO_NSE` | ! assigned rate |
| G2D-10 | `GKSL_INSTANTANEOUS_ADM_TRACK_NO_GO` | ! exact no-go |
| G2D-11 | `SEMICLASSICAL_RENORMALIZED_STRESS_GATE` | Open physical port |
| G2D-12 | `GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_ROOT` | ! B-tier scope |

## Six remaining physical/formal gates

- G2D-13 renormalized semiclassical stress in the actual curved quantum spacetime.
- G2D-14 dynamical Maxwell–Dirac–charged-dust backreaction.
- G2D-15 microscopic dephasing-rate derivation.
- G2D-16 full Einstein–matter spacetime development beyond initial constraints.
- G2D-17 physical relativistic viscous NSE constitutive limit and coupled regularity.
- G2D-18 native Lean compiler and matching theorem-level axiom audit.

## Future proof spine

Finite Dirac `4×4` gamma matrices → Fourier modes → wedge/Fock expectation → independent current and symmetric stress → torus charged background → Fourier inverse divergence → Einstein/Maxwell constraints → dephasing/current/NSE amplitude → instantaneous-constraint-track no-go → external A-tier audit.

**Sources:** [Alcubierre 3+1 Dirac stress (2025)](https://link.springer.com/article/10.1007/s10714-025-03460-8) · [Belinfante Dirac momentum](https://www.mdpi.com/2412-382x/10/2/8) · [ADM sourced constraints](https://pmc.ncbi.nlm.nih.gov/articles/PMC5660886/).

**Status:** `! B_TIER`; no A-tier certification, no physical Einstein–Standard Model–NSE dynamical equivalence.
