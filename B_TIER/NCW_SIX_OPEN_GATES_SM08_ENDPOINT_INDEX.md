# Frozen SM-08 and six outstanding NCW gates — B-tier status

**Root:** `NSE_SM08_STRESS_CURRENT_SIX_GATE_ASSESSMENT`  
**Full TXT:** [Six-gate SM-08 assessment](./NCW_SIX_OPEN_GATES_SM08_COMPLETION_B_TIER.txt)  
**Constructive example:** [Globally regular charged helical Maxwell–NSE two-fluid model](./HELICAL_TWO_FLUID_MAXWELL_NSE_GLOBAL_B_TIER.txt)  
**Predecessor:** [SM-07 current Ward identity](./NSE_CURRENT_WARD_IDENTITY_B_TIER.txt)  
**Status:** `! CONDITIONAL_B_TIER`; no Lean local execution or native theorem-level audit.

## Frozen eight-row register

| Standard Model row | NSE structural result | Physical meaning |
|---|---|---|
| SM-01 | Lie transport commutator | Abstract representation only |
| SM-02 | Auxiliary fluid (U(1)) curvature | Not physical electromagnetic potential |
| SM-03 | Koopman/half-density Heisenberg form | Not electron Hamiltonian |
| SM-04 | Exterior CAR | Not physical electron Fock space |
| SM-05 | Abelian auxiliary Gauss-like shift constraint | Not non-Abelian SM Gauss law |
| SM-06 | Auxiliary Abelian BRST square zero | Not physical SM BRST |
| SM-07 | Current/graph continuity Ward form | Physical source matching open |
| **SM-08** | **Classical Maxwell stress and charged NSE work exchange** | **Actual classical (U(1)) coupling; quantum SM correspondence open** |

## The six NCW gates

| Gate | B-tier progress | Unresolved endpoint |
|---|---|---|
| NCW-13 `PHYSICAL_SM_NOETHER_CURRENT_OPERATOR` | (J_e^\mu=q_e:\bar\psi_e\gamma^\mu\psi_e:) (formal regulated electron-sector source) | Renormalized full SM composite current/operator |
| NCW-14 `NONABELIAN_QUANTUM_WARD_ANOMALY_AUDIT` | Per-generation mixed/cubic/grav anomaly coefficient cancellations and SU(2) parity | Full quantum/global anomaly and Ward audit |
| NCW-15 `MICROSCOPIC_TO_FLUID_CURRENT_MATCHING` | Exact current residual, nonuniqueness counterexample | Physical gauge-consistent dynamical matching |
| NCW-16 `CHARGE_TO_MOMENTUM_BACKREACTION_FORCE_BOUND` | **Exact, global, nonzero Lorentz-coupled helical Maxwell–NSE subclass** | General SM force (L_t^2\dot H_x^{-1/2}) bound |
| NCW-17 `FULL_MAXWELL_STRESS_ENERGY_WARD_MATCH_SM08` | **Exact classical Maxwell work/stress exchange and positive-energy helical test** | Full renormalized quantum SM stress Ward |
| NCW-18 `EXTERNAL_LEAN_COMPILER_THEOREM_AXIOM_AUDIT` | No promotion | Lean source, native compiler and exact theorem-level axiom audit |

## Exact helical Maxwell–NSE subsystem

On `T_L³`, choose `k=2πr/L`, `r≠0` and

```text
h1=(cos kz,sin kz,0)
h2=(-sin kz,cos kz,0)

u_s=V_s*e_z+a_s*h1+b_s*h2
E=E_z*e_z+E1*h1+E2*h2
B=B1*h1+B2*h2
```

With charged number density `n0>0`, mass density `rho_s=m_s n0`, `nu_s=eta_s/rho_s>0`, reciprocal drag `kappa>=0`, and a compensating stationary charge if necessary, full classical Maxwell + charged NSE reduce to an **11-dimensional polynomial ODE**.

The exact energy identity is

```text
d/dt (E_fluid+E_EM)
 = -L³ sum_s eta_s*k²*(a_s²+b_s²)
   -L³*kappa*((V1-V2)²+(a1-a2)²+(b1-b2)²)
 <= 0.
```

Positive energy controls every ODE coefficient; local Lipschitz continuation gives global smoothness for any finite amplitudes **within this invariant ansatz**. The Maxwell electric source is the declared fluid current; the model does **not** derive that source from an antisymmetrized quantum two-electron wavefunction.

Choice `q1=q2=-e` requires compensating background `rho_bg=+2en0`; background momentum support must be accounted for before claiming full momentum conservation.

## Proof spine

1. Classical Dirac/Pauli U(1) electron source and regulated operator restrictions.
2. Standard Model hypercharge anomaly rational arithmetic.
3. Current residual and Ward nonuniqueness.
4. Helical Maxwell/Faraday/Ampere and charged NSE finite ODE.
5. Stress power cancellation, energy bound, global ODE continuation.
6. Conditional SM-08 root with independent quantum/microscopic and Lean audit gates.

**No assertion:** complete all six physical gates, unrestricted 3D NSE regularity, quantum two-electron collision theorem, or Standard Model equivalence.

Literature: [Thorne electromagnetic stress notes](https://faculty.washington.edu/seattle/physics544/2011-lectures/thorne-GR.pdf) · [Guo–Ionescu–Pausader Euler–Maxwell](https://annals.math.princeton.edu/2016/183-2/p01) · [Standard Model anomaly cancellations](https://qft.org/gauge-theories-standard-model/standard-model-assembly-consistency/standard-model-anomaly-cancellation/).
