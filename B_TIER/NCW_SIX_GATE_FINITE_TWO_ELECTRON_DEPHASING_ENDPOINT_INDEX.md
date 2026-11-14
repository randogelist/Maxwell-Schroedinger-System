# Six NCW gates: finite two-electron quantum-current → NSE attempt

**Root B-tier theorem:** `NCW_FINITE_TWO_ELECTRON_DEPHASING_NSE_SEMICONJUGACY`

**Main derivation:** [NCW_SIX_GATE_FINITE_TWO_ELECTRON_DEPHASING_BRIDGE_B_TIER.txt](./NCW_SIX_GATE_FINITE_TWO_ELECTRON_DEPHASING_BRIDGE_B_TIER.txt)

**Prior six-gate assessment:** [NCW_SIX_OPEN_GATES_SM08_COMPLETION_B_TIER.txt](./NCW_SIX_OPEN_GATES_SM08_COMPLETION_B_TIER.txt)

**Classification:** `! B_TIER` for the exactly specified **finite open two-electron model**; full physical SM/QED equivalence remains open.

## New exact selected-model theorem

On the torus `T_L³`, choose `k=2πn/L` with nonzero even `n`, and `q=2πr/L`, `r≠0`. Take three orthonormal Pauli plane-wave orbitals:

```text
chi0 = V^(-1/2)*(spin up)
chi1 = V^(-1/2)*e^(ikz)*(spin down)
chis = V^(-1/2)*e^(i(kz/2+qy))*(spin up)

D0 = chi0 wedge chis
D1 = chi1 wedge chis
Psi0=(D0+D1)/sqrt(2)
```

The selected number-preserving quantum GKSL generator is

```text
dot rho = -(i/hbar)[H,rho] + (gamma/2)*(Z rho Z-rho)
H=diag(E_s,E_s+DeltaE), DeltaE=hbar²k²/(2m_e)
```

Its full Pauli current divided by `n_e=2/V` yields

```text
v_rho(t,z) =
  U_e*e_z+(W/2)*e_y
  -(U_e/2)*exp(-gamma*t)*
     (cos(kz-omega*t),sin(kz-omega*t),0)

U_e=hbar*k/(2m_e)
W=hbar*q/m_e
omega=DeltaE/hbar=k*U_e
```

With the **selected rate calibration** `gamma=nu*k²` this is an exact unforced globally regular NSE solution. The equality extends to the whole fixed-equal-population Bloch disk. This dephasing law is **not** derived from a microscopic Coulomb or full Standard Model environment.

## Quantum energy is not NSE current energy

```text
Tr(rho(t) H)=E_s+DeltaE/2  (constant)

rho_f=2m_e/V  [chosen fluid mass convention]
E_fluct_NSE(t)=(DeltaE/8)*exp(-2gamma*t)

purity=Tr(rho(t)²)=(1+exp(-2gamma*t))/2

E_fluct_NSE(t)=(DeltaE/4)*(purity-1/2).
```

The nonlinear current-energy functional also has an exact **two-copy** Hermitian representation `(DeltaE/8)(X⊗X+Y⊗Y)`; these copies are mathematical replicas, not extra electrons.

## Projected Coulomb mismatch

With periodic compensated Green kernel `-Delta G_L=delta-1/V` and `p_s=(0,q,k/2)`,

```text
Delta_C=e²/(epsilon_0*V*(q²+k²/4))>0
H_C,proj=diag(E_s-Delta_C, E_s+DeltaE)

omega_C=(DeltaE+Delta_C)/hbar
omega_NSE=k U_e=DeltaE/hbar

delta_omega=Delta_C/hbar !=0.
```

The finite **projected** Coulomb interaction spoils the *unforced* current/NSE semiconjugacy. Full Coulomb generates off-subspace modes; the two-determinant reduction is not an exact invariant full Coulomb subspace.

An **engineered smooth NSE force**, not independently derived from Maxwell,

```text
f_slip=(U_e/2)*delta_omega*exp(-nu*k²*t)
       *(-sin(kz-omega_C*t), cos(kz-omega_C*t), 0)
```

restores the exact velocity trajectory for the projected phase and remains in a globally regular helical/2D3C sector.

The mean Maxwell Ampere equation with a **static** positive charge background also forces a new mean electric field whenever the nonzero electron mean current is used as a Maxwell source. Hence a one-way Maxwell solution is not full backreaction.

## Six-gate assessment

| Gate | Concrete result from the current attempt | Full physical gate |
|---|---|---|
| NCW-13 current operator | Exact 2×2 projected Pauli electric-current operator for two antisymmetrized electrons | **Open:** full renormalized 4D SM current |
| NCW-14 Ward/anomaly | Exact Abelian continuity and canonical anomaly rational sums | **Open:** full quantum/global Ward/anomaly audit |
| NCW-15 microscopic-to-fluid map | **Exact selected finite Markov quantum → unforced NSE current semiconjugacy** | **Open:** derive rate from actual microscopic Coulomb/SM dynamics; untruncated gauge-covariant model |
| NCW-16 backreaction regularity | Exact smooth Coulomb phase-slip compensation; previously derived two-way *classical* Maxwell–NSE helical sector | **Open:** actual quantum Coulomb/Maxwell force and general force norm bound |
| NCW-17 stress/energy | Exact selected current and density, Maxwell/Poynting/residual conditional ledger | **Open:** complete quantum field/matter/thermal stress and closed action |
| NCW-18 Lean/A-tier | Prepared algebraic finite subgoal `.lean`, external Windows `run.cmd` | **Open:** matching native build/audit; complete physical root not formalized |

## Prepared finite algebra Lean candidate (NOT COMPILED)

- [Lean file](../Lean_Adapter/NCW_SIX_GATE_FINITE_CANDIDATE/NCWFiniteGateCandidate.lean)
- [External Windows run.cmd](../Lean_Adapter/NCW_SIX_GATE_FINITE_CANDIDATE/run.cmd)
- [Exact candidate-only A-tier status TXT](../Lean_Adapter/NCW_SIX_GATE_FINITE_CANDIDATE/NCWFiniteGateCandidate_A_TIER.txt)

The runner uses an **existing cached Mathlib checkout** through the externally configured `MATHLIB_ROOT`. No local Lean execution occurred. Compiling its arithmetic subtheorems would not establish full NCW closure.

## B-tier proof endpoints

| ID | Theorem |
|---|---|
| NCWQ-01 | TWO_ELECTRON_ORTHONORMAL_SLATER_SECTOR |
| NCWQ-02 | FREE_TWO_DETERMINANT_HAMILTONIAN |
| NCWQ-03 | NUMBER_PRESERVING_GKSL_DEPHASING |
| NCWQ-04 | FINITE_PAULI_CURRENT_OPERATOR |
| NCWQ-05 | EXACT_OPEN_QUANTUM_NSE_SEMICONJUGACY |
| NCWQ-06 | COHERENCE_NSE_ENERGY_TWO_COPY_OPERATOR |
| NCWQ-07 | COULOMB_EXCHANGE_PHASE_SLIP |
| NCWQ-08 | SMOOTH_PHASE_SLIP_NSE_FORCE_PORT |
| NCWQ-09 | ABELIAN_CHARGE_CONTINUITY_AND_ANOMALY_SUMS |
| NCWQ-10 | CLASSICAL_MAXWELL_STRESS_POWER_RESIDUAL |
| NCWQ-11 | SIX_GATE_STATUS_ASSESSMENT |
| NCWQ-12 | FINITE_TWO_ELECTRON_BRIDGE_ROOT |

**Six open full-physics/certification gates** remain; a selected finite dephasing sector is now mathematically matched.

**Sources:** [Lindblad pure dephasing](https://www.nature.com/articles/s41534-025-01044-7) · [Standard Model anomaly sums](https://qft.org/gauge-theories-standard-model/standard-model-assembly-consistency/standard-model-anomaly-cancellation/) · [Two-electron Slater densities](https://kthpanor.github.io/echem/reduced-density/).
