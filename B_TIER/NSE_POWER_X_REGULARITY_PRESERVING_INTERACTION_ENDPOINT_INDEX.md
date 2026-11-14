# NSE^X regularity-preserving interaction gates

**Root:** `NSE_POWER_X_REGULARITY_PRESERVING_INTERACTION_PORT`  
**Mode:** `B_TIER_DERIVATION`, under stated finite-layer and analytic hypotheses.  
**Dependency:** [admissible NSE^X composition](./NSE_POWER_X_ADMISSIBLE_COMPOSITION_B_TIER.txt)  
**Full derivation:** [interaction-port B-tier TXT](./NSE_POWER_X_REGULARITY_PRESERVING_INTERACTION_PORT_B_TIER.txt)

## Four admission mechanisms

| Mechanism | Coupling condition | Amplitude | Regularity implication |
|---|---|---|---|
| 2D3C tangency | A common invariant spatial direction and correspondingly invariant forces | Arbitrarily large finite | Global smooth for finite layers |
| Beltrami tangency | All fields and couplings stay in the *same signed* curl eigenspace | Arbitrarily large finite | Linear finite-mode global smooth |
| Critical smallness | Initial and forcing norms meet explicit `H^{1/2}` inequality | Small critical norm | Global critical strong solution |
| Regular-core perturbation | Background integrability plus exponentially weighted perturbation budget | Arbitrarily large core; small deviation | Globally regular 3D perturbation |

## Mathematical operator

```text
partial_t u_i + B(u_i,u_i)
  +nu*A*u_i +sum_j kappa_ij*(u_i-u_j)=g_i

A=-P_sigma Delta
B(u,v)=P_sigma ((u·grad)v)
kappa_ij=kappa_ji>=0
```

The linear Stokes/graph operator is positive. At `dot H^{1/2}`:

```text
(1/2)H' +nu D +graph_D
  <= C_NL*sqrt(H)*D +sqrt(F)*sqrt(D)

H=sum_i ||u_i||_(dot H^1/2)^2
D=sum_i ||u_i||_(dot H^3/2)^2
F=sum_i ||g_i||_(dot H^-1/2)^2
```

For a common viscosity `nu>0`, a sufficient strict condition is

```text
H(0)+(2/nu)*integral_0^infinity F(t)dt
 < (nu/(2*C_NL))^2.
```

## Large-core perturbative admission

For a smooth mean-zero regular background `U` satisfying the **same graph system**, define

```text
beta_U(t)=(2*C_mix^2/nu)*sum_i||U_i(t)||_(W^{2,infinity})^2
B_U=integral_0^infinity beta_U(t)dt < infinity.
```

A sufficient interaction budget for `u=U+w` is

```text
exp(B_U) * (
 sum_i ||w_i(0)||_(dot H^{1/2})^2
 +(2/nu)*sum_i ||h_i||_(L2_t dot H^{-1/2})^2
)
< (nu/(4*C_NL))^2.
```

This generalizes the **shape** of `NSE_DECOMP_EXT` but does not import its original anisotropic exponential constant without proof. The 2D3C reference is allowed to be arbitrarily large if it satisfies the displayed integrable background norm.

## B-tier endpoint register

- RIP-01 `COERCIVE_STOKES_GRAPH_OPERATOR`
- RIP-02 `TANGENT_AND_LEAKAGE_FORCE_DECOMPOSITION`
- RIP-03 `COMMON_2D3C_TANGENT_PORT`
- RIP-04 `COMMON_BELTRAMI_TANGENT_PORT`
- RIP-05 `SMALL_CRITICAL_FORCED_GRAPH_GLOBAL_REG`
- RIP-06 `REGULAR_CORE_LEAKAGE_STABILITY`
- RIP-07 `DECOMP_EXT_STYLE_INTERACTION_GATE`
- RIP-08 `GAUGE_INVARIANT_FORCE_LEAKAGE_GATE`
- RIP-09 `NSE_POWER_X_REGULARITY_PRESERVING_INTERACTION_PORT` (conditional root)

## Open gates

- RIP-10 Coupled `NSE_DECOMP_EXT` exponential constant in anisotropic function spaces.
- RIP-11 Finite-entry bridge for rough `L²` 2D3C cores.
- RIP-12 Quantum Standard Model force norm and gauge/current/stress matching.
- RIP-13 `BMO^{-1}` perturbative interaction class.
- RIP-14 Physical electron-to-NSE dynamical semiconjugacy.
- RIP-15 General rank-3 NSE regularity.
- RIP-16 External Lean build and theorem-level axiom audit.

**Source anchor:** [Iftimie (1999), 3D NSE as perturbation of 2D NSE](https://archive.numdam.org/articles/10.24033/bsmf.2358/).

**Classification:** `! B_TIER` for the explicitly scoped mathematical sufficiency statements; `A_TIER = NOT_ESTABLISHED`.
