# GR Stage 5 — T²-symmetric Einstein–Dirac–Maxwell evolution jets

**B-tier theorem:** `GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET`

**Complete TXT:** [GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET_B_TIER.txt](./GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET_B_TIER.txt)

**Stage 4:** [Two-electron Dirac stress to ADM constraints](./GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_B_TIER.txt)

**Status:** `! CONDITIONAL_B_TIER` for exact initial jets and an independent flat dephasing-stress obstruction; full coupled local PDE existence, physical quantum source renormalization and A-tier unestablished. No local Lean execution.

## Exact initial data

Use `V=L³`, `k=2πn/L` with even `n≠0`, `p=k/2`, `E_p=sqrt(m²+p²)`, `kappa_G=8πG`, `Lambda>=0`, and the selected free two-electron stress with charged, initially resting positive-energy dust background:

```text
rho_0=(E_p+m)/V+rho_bg
j_0=p/(2V)*(cos kz,-sin kz,0)
tau_0=p²/(E_p*V)             [classical 3+1 Dirac trace]
J_e^space=-e*p/(E_p*V)*(cos kz,-sin kz,0)

h(0)=delta
w=kappa_G/(4V)*(sin kz,cos kz,0)
Sigma=e_z⊗w+w⊗e_z
K(0)=H*delta+Sigma

H²=kappa_G*rho_0/3+Lambda/3+kappa_G²/(48V²)
E(0)=B(0)=0, total initial charge=0.
```

The previous Stage 4 classical source satisfies all four initial Einstein–Maxwell constraints, with a separate physical/semiclassical source interpretation gate.

## Exact forced ADM first/second jets

Under **any smooth** corresponding Einstein–matter evolution in local Gaussian normal chart (`lapse=1`, `shift=0`):

```text
dot h(0)=-2(H*delta+Sigma)

dot h_xz(0,z)=-kappa_G/(2V)*sin kz
dot h_yz(0,z)=-kappa_G/(2V)*cos kz

V_h'(0)/V=-3H
dot(tr_h K)(0)
 =3H²+kappa_G²/(8V²)+kappa_G*(rho_0+tau_0)/2-Lambda

V_h''(0)/V
 =kappa_G*(3*rho_0-tau_0)/2 +3Lambda.
```

The second volume derivative eliminates the explicit gravitational shear after using the Hamiltonian constraint. The **full** metric acceleration requires the actual curved Dirac spatial stress `P_ij`, not merely its trace, and may generate higher Fourier harmonics. No single-helix Einstein evolution is assumed.

## Maxwell/charge first jets

Since `E(0)=B(0)=0`, Ampère and Faraday imply

```text
dot E(0,z)=+e*p/(E_p*V)*h_minus(z)
dot B(0,z)=0
ddot B(0,z)=-e*p*k/(E_p*V)*h_minus(z).
```

With covariantly conserved electron and compensating background currents,

```text
dot rho_q,e(0)=3H*rho_q,e(0)
dot rho_q,bg(0)=3H*rho_q,bg(0)
dot(total_charge_density)(0)=0.
```

Constant normal-frame charge or mass density is not automatically preserved by the evolving spatial volume.

## Critical GKSL/Einstein obstruction

In **flat** spacetime the selected finite dephasing model with `gamma>0` has

```text
T_e^(00)=(E_p+m)/V       (constant)
T_e^(0i)=T_e^(i0)=exp(-gamma*t)*j_0^i(z)

div J_e^mu=0     [charge Ward still holds]

partial_mu T_e^(mu i)
 =-gamma*exp(-gamma*t)*j_0^i(z) != 0.
```

A genuine Einstein source must satisfy the Bianchi-compatible **total** stress identity. A compensating reservoir therefore needs momentum-transfer divergence

```text
partial_mu T_bath^(mu i)
 =+gamma*exp(-gamma*t)*j_0^i.
```

A formal algebraic divergence witness exists, but not a derived causal/positive-energy physical reservoir. This is a new independent gate linking SM-07 current conservation and SM-08 stress exchange.

## T² symmetry, not finite ODE closure

All initial data depend on `z` only, so translations in `x` and `y` preserve them. Under a **named coupled local Cauchy uniqueness premise**, this symmetry is inherited by a development. The PDE can then be reduced to `(t,z)`, but does not necessarily preserve a single Fourier helix or a fixed spatial metric.

The flat NSE readout `u_0=j_0/rho_e` is initially Beltrami and has an exact globally smooth viscous continuation on the original **flat** torus, but that does not prove the same profile solves the actual evolving curved-spacetime fluid equations.

## Endpoint register

| ID | Endpoint | Scope |
|---|---|---|
| GTE-01 | `FORCED_INITIAL_METRIC_TIME_DERIVATIVE` | ! exact |
| GTE-02 | `VOLUME_FORM_AND_NORMAL_EXPANSION` | ! exact |
| GTE-03 | `DIRAC_STRESS_TRACE_AND_CLASSICAL_BACKGROUND` | ! declared classical source |
| GTE-04 | `INITIAL_K_TRACE_EVOLUTION` | ! exact |
| GTE-05 | `EXPLICIT_SECOND_VOLUME_DERIVATIVE` | ! exact |
| GTE-06 | `FIRST_MAXWELL_RESPONSE_JET` | ! exact |
| GTE-07 | `FIRST_CHARGE_CONSERVATION_AND_VOLUME_COMPENSATION` | ! conditional on current equations |
| GTE-08 | `TWO_SPATIAL_KILLING_EVOLUTION_PORT` | ! conditional on local well-posedness |
| GTE-09 | `GKSL_WARD_WITHOUT_STRESS_CONSERVATION` | ! exact flat obstruction |
| GTE-10 | `NECESSARY_RESERVOIR_STRESS_TRANSFER` | ! exact divergence obligation |
| GTE-11 | `COUPLED_LOCAL_DEVELOPMENT_CONDITIONAL` | ! unresolved premise |
| GTE-12 | `ADM_GEOMETRIC_NSE_MATCHING_LIMIT` | ! explicit boundary |
| GTE-13 | `GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET_ROOT` | ! conditional B-tier |

## Open gates

- GTE-14: `EDMD_LOCAL_WELLPOSED` for the exact combined classical field content.
- GTE-15: complete spatial Dirac stress including extrinsic-curvature terms.
- GTE-16: physical causal positive-energy open-system reservoir.
- GTE-17: dynamic Maxwell–Dirac–dust electromagnetic backreaction.
- GTE-18: evolving-geometry NSE solenoidal transfer and critical force budget.
- GTE-19: global Einstein–matter extension/regularity.
- GTE-20: renormalized semiclassical quantum stress/source identification.
- GTE-21: external Lean compiler and theorem-level axiom audit.

## Future formal proof spine

Helical Fourier identities → ADM first metric jet → classical Dirac stress trace → ADM K trace and second volume jet → Maxwell response → charge-density continuity → flat GKSL stress-divergence obstruction → named local Cauchy and physical reservoir premises → deterministic conditional root. No Lean run occurred.

**Sources:** [Alcubierre 3+1 Dirac stress](https://link.springer.com/article/10.1007/s10714-025-03460-8) · [ADM evolution equations](https://blackhole.org/reference/equations/adm-constraints-evolution/) · [General GR Cauchy theory](https://link.springer.com/article/10.12942/lrr-2002-6) · [Charged dust Maxwell hyperbolicity](https://doi.org/10.1088/1751-8113/43/44/445502).

**Tier:** `! CONDITIONAL_B_TIER`. True local Einstein–SM–NSE and A-tier are open.
