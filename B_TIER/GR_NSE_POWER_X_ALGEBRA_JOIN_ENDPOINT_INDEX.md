# GR algebra → Standard Model → `(NSE)^X` — B-tier endpoint index

**Stage 1 root:** `GR_ADM_CONSTRAINT_ALGEBRA_NSE_GROUP_BRIDGE`  
**Stage 2 root:** `GR_NSE_POWER_X_SM_COVARIANT_JOIN`

**Source:** [ADM group/algebra TXT](./GR_ADM_CONSTRAINT_ALGEBRA_NSE_GROUP_BRIDGE_B_TIER.txt) · [GR+SM+NSE conditional join TXT](./GR_NSE_POWER_X_SM_COVARIANT_JOIN_B_TIER.txt)

**Status:** `! B_TIER` for exact classical identities and the explicitly scoped conditional joining theorem; **no Lean files / native compile / theorem-level axiom audit**.

## Stage 1 — GR algebra (10 endpoints)

| ID | Endpoint | Classification |
|---|---|---|
| GRA-01 | `NSE_SDIFF_TO_GR_DIFF_INCLUSION` | Exact Lie-algebra injection |
| GRA-02 | `ADM_HAMILTONIAN_MOMENTUM_CONSTRAINTS` | Standard canonical constraint definitions |
| GRA-03 | `HYPERSURFACE_DEFORMATION_BRACKETS` | Standard classical ADM theorem with metric-dependent functions |
| GRA-04 | `GR_SPIN_CONNECTION_CURVATURE` | Exact with spin/tetrad connection |
| GRA-05 | `SPIN_PLUS_SM_GAUGE_CURVATURE` | Exact independent curvature actions |
| GRA-06 | `EINSTEIN_CONTRACTED_BIANCHI` | Exact geometric/on-shell identity |
| GRA-07 | `WARD_FORCE_PORT_IN_GR` | Conditional on matter/gauge stress |
| GRA-08 | `LAPSE_SHIFT_TIME_PORT` | Exact foliation/observer condition |
| GRA-09 | `VACUUM_INITIAL_DATA_CANNOT_KEEP_SOURCED_GR_UNCHANGED` | Exact positive-energy constraint obstruction |
| GRA-10 | `GR_ADM_CONSTRAINT_ALGEBRA_NSE_GROUP_BRIDGE_ROOT` | B-tier scoped root |

### The algebra that must not be collapsed

```text
{D[xi],D[eta]}=D[[xi,eta]]
{D[xi],H[N]}=H[Lie_xi N]
{H[N],H[M]}=D[h^ij*(N*partial_j M - M*partial_j N)]
```

**GR's last structure depends on the evolving inverse metric** `h^ij`. NSE's `SDiff(M)` supplies only a subalgebra of the spatial part, not the full Hamiltonian GR gauge structure.

Spinors carrying internal gauge representations have

```text
[mathcalD_mu,mathcalD_nu] psi
  =(1/4 R_mu_nu^ab gamma_ab + rho(F_mu_nu)) psi.
```

The Riemann and Yang–Mills curvatures are independent; the auxiliary velocity-vorticity connection from earlier SM-02 is **not** physical GR curvature.

## Stage 2 — conditional GR joining (14 endpoints)

| ID | Endpoint | Classification |
|---|---|---|
| GRJ-01 | `COMMON_BUNDLE_AUTOMORPHISM_PORT` | Typed interface |
| GRJ-02 | `SPIN_GAUGE_COMBINED_COMMUTATOR` | Exact |
| GRJ-03 | `DECLARED_EVOLVING_METRIC_NSE_MODEL` | A model, not microscopic derivation |
| GRJ-04 | `GEOMETRIC_NSE_KINETIC_ENERGY_IDENTITY` | Exact for smooth model solutions |
| GRJ-05 | `ADM_EXTRINSIC_CURVATURE_ENERGY_PORT` | Exact in shift-zero gauge |
| GRJ-06 | `METRIC_WORK_GRONWALL_GATE` | Exact L² bound |
| GRJ-06A | `EVOLVING_VOLUME_CONSTANT_DENSITY_OBSTRUCTION` | Exact mass continuity gate |
| GRJ-07 | `PURE_POTENTIAL_FORCE_LERAY_NO_GO` | Exact flat constant-density obstruction |
| GRJ-08 | `TOTAL_EINSTEIN_STRESS_PARTITION` | Conditional on physical source |
| GRJ-09 | `TOTAL_GAUGE_STRESS_EXCHANGE` | Conditional on Ward and current matching |
| GRJ-10 | `PULLED_BACK_GEOMETRIC_CRITICAL_GATE` | Conditional on explicit transfer + force bound |
| GRJ-11 | `COMMON_SYMMETRY_TANGENCY_GATE` | Conditional |
| GRJ-12 | `FOLIATION_DEPENDENT_CLOCK_JOIN` | Exact kinematics |
| GRJ-13 | `GR_NSE_POWER_X_SM_COVARIANT_JOIN_ROOT` | Conditional B-tier |

## New exact energy identity

For a **declared** incompressible NSE layer model on a prescribed spatial metric `h_t` in a fixed shift-zero chart, define

```text
E_fl=(1/2)*sum_i rho_i ∫ h_t(u_i,u_i) dmu_(h_t)

E_fl'=-D_visc-D_graph+P_force+W_geom

W_geom=sum_i[
  (rho_i/2)∫ (partial_t h_t)(u_i,u_i)dmu_h
 +(rho_i/4)∫ |u_i|_h² tr_h(partial_t h_t)dmu_h
].
```

Using the ADM convention `partial_t h=-2N K` at zero shift,

```text
W_geom=
  -sum_i rho_i∫N K(u_i,u_i)dmu_h
  -sum_i (rho_i/2)∫N tr_h K |u_i|_h² dmu_h.
```

This is a **metric variation of fluid coordinate kinetic energy**. It is not a unique local gravitational energy density or a derivation of fully relativistic fluid dynamics.

**Mass-consistency obstruction:** for fixed physical mass density `rho_i` and instantaneous `div_h u_i=0`,

```text
Mass_i(t)=rho_i*int_M dmu_h
Mass_i'(t)=(rho_i/2)*int_M tr_h(partial_t h_t)dmu_h.
```

A physically mass-conserving model therefore needs a volume-preserving ADM slice, a variable-density continuity law, or a full covariant particle-number current. The geometric energy identity alone does **not** resolve this.

## Joining conditions for existing regularity classes

The precise analytic gate is a geometrically compatible solenoidal transfer `S_t` to a fixed NSE space so that an actual curved fluid solution yields

```text
partial_t v_i+B_0(v_i,v_i)+nu A_0 v_i
  +(L_kappa v)_i = g_SM,i+g_GR,i.
```

Then existing small-`H^(1/2)` or large-regular-core estimates can be applied **only if** the complete forced residual has a sufficiently small `L²_t dot H^(-1/2)_x` norm, or the geometry and force preserve an exact regularity class. Feedback-dependent bounds must be proved by a closed bootstrap; the group algebra alone is insufficient.

For a pure scalar Newtonian acceleration in constant-density flat incompressible NSE, `P_sigma(-grad Phi_g)=0`. Nontrivial gravitational effects require geometric evolution, nonconstant density, tidal/metric effects, or a more complete relativistic model.

## Open decisive gates

- GRA-11 / GRJ-14: sourced ADM closure with the actual relativistic dissipative matter stress.
- GRA-13 / GRJ-15 / GRJ-19: sourced Einstein constraints and an actual nontrivial coupled spacetime.
- GRJ-16 / GRJ-17: geometric solenoidal transfer and critical GR/SM forcing bounds.
- GRJ-18: physical quantum two-electron stress/backreaction and lapse-dependent clock.
- GRA-16 / GRJ-20: external native Lean compiler and theorem-level axiom audit.

**References:** [Gourgoulhon 3+1 GR](https://arxiv.org/abs/gr-qc/0703035) · [Bojowald–Duque–Shah hypersurface algebra](https://arxiv.org/abs/2410.18807) · [Carlotto relativistic constraints](https://link.springer.com/article/10.1007/s41114-020-00030-z).

**Next scoped objective:** `GR_SPATIAL_HAMILTONIAN_CONSTRAINT_CLOSURE_PORT` under a declared matter stress, not all quantum/Einstein/NSE gates at once.

## Stage 3 — concrete sourced GR initial data

**Root:** `GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS`

- [B-tier TXT — sourced Einstein–Maxwell helical constraint witness](./GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_B_TIER.txt)
- [Endpoint index — 12 scoped subresults](./GR_HELICAL_SOURCED_ADM_CONSTRAINT_WITNESS_ENDPOINT_INDEX.md)

This stage upgrades the earlier structural ADM interface to explicit nonvacuum `h,K,E,B` initial data satisfying the Einstein Hamiltonian and momentum constraints plus both source-free Maxwell spatial constraints. It also proves the flat-torus zero-total-mean-momentum requirement, identifies the nonzero mean momentum of the selected antisymmetric two-electron state, and derives the gravitational quadratic interlayer-helicity/phase coupling.

**Remaining:** physical quantum two-electron stress source; relativistic viscous-fluid matching; coupled Einstein/SM/NSE dynamics; external Lean compilation and theorem audit.

## Stage 4 — explicit two-electron Dirac stress and ADM source

**Root:** `GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM`  
**Type:** `! B_TIER` free-Dirac two-electron Fock stress + exact classical two-spinor/dust initial-constraint model. Full renormalized curved quantum source and GR evolution open.

- [Direct B-tier derivation](./GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_B_TIER.txt)
- [12-endpoint index and six physical/formal gates](./GR_TWO_ELECTRON_DIRAC_HELICAL_STRESS_ADM_ENDPOINT_INDEX.md)

For the newly chosen counterpropagating, positive-energy Dirac spinors and a rest spectator,

```text
rho_2=(sqrt(m²+k²/4)+m)/V,
j_2=(k/(4V))*(cos kz,-sin kz,0),
mean(j_2)=0.
```

The exact classical sourced constraints on a flat spatial torus with a charge-neutralizing positive-energy classical dust background admit

```text
w=(8*pi*G/(4V))*(sin kz,cos kz,0)
K=H*delta + e_z⊗w + w⊗e_z
H²=(8*pi*G/3)*(rho_2+rho_bg)
    +Lambda/3
    +(8*pi*G)²/(48V²).
```

The inverse derivative in the ADM momentum constraint cancels the wavenumber factor in the selected Dirac Belinfante momentum; the isolated gravitational shear term is independent of `k≠0`. An assigned two-electron GKSL dephasing rate `gamma=nu*k²` also yields the previously regular helical NSE motion through the **chosen momentum/energy readout**.

**Essential no-go:** the resulting time-parametrized family of flat-metric ADM constraint surfaces is not an Einstein spacetime evolution with fixed `h=delta` and positive lapse. A true joined evolution must evolve the metric and include the full physical matter, electromagnetic, environment and renormalized stress sources.

## Stage 5 — genuine evolution jets, not repeated constraint surfaces

**Root:** `GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET`  
**Tier:** `! CONDITIONAL_B_TIER` for forced initial jets and a separate exact open-system stress obstruction.

- [B-tier mathematical derivation](./GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET_B_TIER.txt)
- [13-endpoint index, 8 unresolved gates](./GR_T2_EINSTEIN_DIRAC_NSE_EVOLUTION_JET_ENDPOINT_INDEX.md)

Given a smooth classical Einstein–Dirac–Maxwell–charged-dust development of Stage 4 sourced initial data, the Gaussian-normal ADM and Maxwell evolution equations force:

```text
dot h(0)=-2(H*delta+Sigma)
V_h'(0)/V=-3H
V_h''(0)/V=kappa_G*(3rho_0-tau_0)/2+3Lambda

dot E(0) = +e*p/(E_p*V)*h_minus
dot B(0) = 0
ddot B(0)= -e*p*k/(E_p*V)*h_minus.
```

The charged dust and electron normal charge densities must change with the volume form; constant source density is not preserved by a changing ADM spatial volume.

**New no-go:** the separately imposed GKSL dephasing has

```text
partial_mu J_e^mu = 0,
partial_mu T_e^(mu i)
  =-gamma*exp(-gamma*t)*j_0^i != 0.
```

Thus the electric-current Ward identity does **not** imply the stress–energy Ward identity. An actual Einstein source for this open quantum evolution needs a causal physical environment/reservoir carrying the compensating momentum/stress and satisfying its own positive-energy/source requirements.

**Main local-existence boundary:** a well-posed unique combined Einstein–Dirac–Maxwell–charged-dust system has to be established or invoked explicitly, rather than inferred from separately known systems. A curved-space NSE transfer and critical force bound remain independent.
