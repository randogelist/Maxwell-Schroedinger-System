# NSE^X rough-core finite-entry and refined QFB — B-tier endpoints

**Root:** `NSE_POWER_X_ROUGH_CORE_INTERACTION_FINITE_ENTRY`  
**Derivation:** [NSE_POWER_X_ROUGH_CORE_FINITE_ENTRY_AND_QFB_REFINEMENT_B_TIER.txt](./NSE_POWER_X_ROUGH_CORE_FINITE_ENTRY_AND_QFB_REFINEMENT_B_TIER.txt)  
**Corrected canonical QFB:** [QFB_NSE_TIME_GAP_BRIDGE_B_TIER.txt](./QFB_NSE_TIME_GAP_BRIDGE_B_TIER.txt)  
**Mode:** B-tier, explicit PDE/physical premises; no Lean compilation or external audit.

## Derived endpoints

| ID | Endpoint | Result |
|---|---|---|
| FRI-01 | `ENERGY_WEIGHTED_QUARTIC_LERAY_BOUND` | `integral H(t)^2 dt <= E(0)^2/(4nu)` |
| FRI-02 | `QFB_REFINED_SINGLE_LAYER_PERIODIC` | Under frozen QFB admission: `T_refined=||a||²_2²/(16pi²nu⁵)` (fourth power of L2 norm) |
| FRI-03 | `COUPLED_GRAPH_QFB_X_ENTRY` | `T_graph=4 C_NL⁴ E(0)²/nu⁵` sufficient |
| FRI-04 | `ROUGH_2D3C_GRAPH_FINITE_ENTRY` | Rough L2 core smooth for each positive time |
| FRI-05 | `POST_ENTRY_CRITICAL_3D_FORCE` | Delayed 3D forcing with strict norm bound preserves regularity |
| FRI-06 | `THREE_DIMENSIONAL_FORCING_AMPLITUDE` | Explicit single-mode amplitude `alpha` admission |
| FRI-07 | `REGULARITY_CLASS_PORT_INTERPRETATION` | Comparison with `NSE_NOH`, `NSE_DECOMP_EXT` |
| FRI-08 | `NSE_POWER_X_ROUGH_CORE_INTERACTION_FINITE_ENTRY` | Conditional root |

## One explicit admissibility formula

Let `U` be a smooth reference for `t>=t0>0` originating in common rough L² 2D3C data, and define

```text
B_U(t0)=(2 C_mix²/nu) * integral_t0^infinity
  sum_i ||U_i(t)||_(W^{2,infinity})² dt.
```

For smooth 3D mean-zero divergence-free interaction forcing `h`
with `h=0` for `t<=t0`, the sufficient condition is

```text
exp(B_U(t0))*(2/nu)*sum_i ||h_i||²_(L²_t dot H^{-1/2}_x)
 < (nu/(4 C_NL))².
```

Then `u=U+w` is globally regular for positive times. All physical Standard Model force/current/stress matching is a separate named gate.

For the exact third-direction forcing
`h_{i0}(t,x,y,z)=alpha*chi(t)*sin(q y)*e_x`, `q=2pi r/L`, `r!=0`,

```text
|alpha| <
  nu^(3/2)*sqrt(|q|)/(4 C_NL L^(3/2) ||chi||_(L²_t))
  * exp(-B_U(t0)/2).
```

## Quantitative QFB correction

From `E(t)+2nu*integral_0^t D<=E(0)`, define `A_D(t)=integral_0^tD`. Then

```text
integral_0^T E(t)D(t)dt
  <= E(0)*A_D(T)-nu*A_D(T)^2
  <= E(0)^2/(4nu).
```

The coefficient `1/16` in the refined *periodic single-layer* cutoff follows directly under the original frozen small-data admission `||b||_(dot H^{1/2})²<2pi nu²`. The older `1/8` bound remains sufficient but is not optimal within this energy argument. For graph-coupled `NSE^X`, use the independently established critical constant `C_NL` rather than asserting the single-layer numerical threshold.

## Open gates

- FRI-09 `NEAR_ZERO_ANISOTROPIC_BACKGROUND_BOUND`: control integral without a positive cutoff.
- FRI-10 `IMMEDIATE_ROUGH_CORE_3D_LEAKAGE`: fully 3D interaction from `t=0` on generic L² 2D3C background.
- FRI-11 `COUPLED_DECOMP_EXT_EXACT_EXPONENTIAL_CONSTANT`.
- FRI-12 `BMO_MINUS_ONE_FORCE_PORT`.
- FRI-13 `PHYSICAL_SM_INTERACTION_WARD_ADMISSIBILITY`.
- FRI-14 `EXTERNAL_LEAN_COMPILER_THEOREM_AXIOM_AUDIT`.

**Literature:** [Iftimie 1999](https://archive.numdam.org/articles/10.24033/bsmf.2358/) provides the anisotropic 3D-about-2D perturbative precedent, not an automatically imported theorem for graph-coupled layers.

**Classification:** `! B_TIER`; single- and multilayer cutoff statements conditional on named critical restart theorems; no A-tier evidence.
