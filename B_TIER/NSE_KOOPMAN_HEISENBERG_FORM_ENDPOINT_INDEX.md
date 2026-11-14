# Frozen SM-03 — NSE Koopman/Heisenberg-form match

**Root:** \`NSE_KOOPMAN_HEISENBERG_FORM\`  
**Tier:** \`! B_TIER\` (exact mathematical finite-Galerkin match, not quantum equivalence).  
**Full derivation:** [NSE_KOOPMAN_HEISENBERG_FORM_B_TIER.txt](./NSE_KOOPMAN_HEISENBERG_FORM_B_TIER.txt)

**SM reference rows:** SM-01 transport Lie algebra (frozen), SM-02 auxiliary \(U(1)\) curvature (frozen), **SM-03 only new**; SM-04…SM-08 unchanged.

## Exact operators

Finite real Galerkin NSE/NSE^X:

\`\`\`text
z' = b_N(z) = - B_N(z,z) - R_N z

L_N f = b_N · grad f
K_N = -i*hbar*(L_N + (div b_N)/2)
M_f psi = f psi

[M_f,K_N] = i*hbar*M_(L_N f)
i*hbar*d/dt M_(f∘Phi_t) = [M_(f∘Phi_t),K_N]
\`\`\`

Here \`K_N\` is the self-adjoint unitary **classical half-density** transport generator for the complete finite Galerkin ODE, **not** the Standard Model quantum Hamiltonian.

Energy observables:

\`\`\`text
E_N = rho*||z||²/2
D_N = rho*z^T R_N z >= 0

L_N E_N = -D_N
[M_(E_N),K_N] = -i*hbar*M_(D_N)
\`\`\`

The finite Galerkin ODE has a complete two-sided finite-dimensional flow: backward norm growth is at most exponential in a finite \`R_N\` operator norm. This does **not** make the infinite-dimensional viscous NSE evolution backward well-posed.

## Scoped endpoint index

| ID | Endpoint | Status |
|---|---|---|
| NKH-01 | \`GLOBAL_BIDIRECTIONAL_FINITE_FLOW\` | ! |
| NKH-02 | \`OBSERVABLE_KOOPMAN_CHAIN_RULE\` | ! |
| NKH-03 | \`LEBESGUE_ADJOINT_AND_DIVERGENCE\` | ! |
| NKH-04 | \`UNITARY_HALF_DENSITY_FLOW\` | ! with Stone theorem |
| NKH-05 | \`HEISENBERG_FORM_ON_MULTIPLICATION_OBSERVABLES\` | ! |
| NKH-06 | \`NSE_ENERGY_DISSIPATION_OPERATOR_IDENTITY\` | ! |
| NKH-07 | \`DAMPED_HELICAL_DILATION_EXAMPLE\` | ! |
| NKH-08 | \`GRAPH_GALERKIN_HEISENBERG_PORT\` | ! |
| NKH-09 | \`SM03_MATCH_CLASSIFICATION\` | ! |
| NKH-10 | \`NSE_KOOPMAN_HEISENBERG_FORM_ROOT\` | ! |

## First explicit check

Single decaying helical Galerkin mode with two coefficients:

\`\`\`text
z=(a,b),  gamma=nu*k²,  Phi_t(z)=exp(-gamma*t)z
E(z)=rho_f*L³*(a²+b²)/4
K=i*hbar*gamma*(a*∂a+b*∂b+1)

[M_E,K]=-2*i*hbar*gamma*M_E
M_(E∘Phi_t)=exp(-2gamma*t)*M_E.
\`\`\`

Despite the unitary half-density \`U_t\` on \`L²(R²)\`, the classical physical kinetic energy \`E\` decreases.

## Remaining gates

- NKH-11 \`PHYSICAL_STANDARD_MODEL_HAMILTONIAN_IDENTIFICATION\`.
- NKH-12 \`INFINITE_NSE_HALF_DENSITY_LIMIT\`.
- NKH-13 \`GAUGE_CONSISTENT_STATE_REDUCTION\`.
- NKH-14 \`PHYSICAL_ELECTRON_DISSIPATION_DERIVATION\`.
- NKH-15 \`EXTERNAL_LEAN_BUILD_AND_AXIOM_AUDIT\`.

**Next frozen row:** SM-04, fermionic CAR. There is no native fermionic statistics operator in ordinary NSE; any match would require **new graded quantum field data**, not merely a hydrodynamic tensor or transport commutator. No SM-04 theorem is asserted here.

## Future A-tier proof spine (not compiled)

1. Finite quadratic energy cancellation and global finite ODE flow.
2. Smooth Koopman generator, multiplication product and divergence adjoint.
3. Exact operator commutators, diagonal graph positivity.
4. Two-component helical dilution/decay check.
5. Conditional Stone/unitary implementation on a named analytic port.
6. Deterministic root composition and matching external compiler/axiom audit.

Source: [Koopman-von Neumann approach to nonlinear classical dynamics, Phys. Rev. Research 2, 043102](https://doi.org/10.1103/PhysRevResearch.2.043102).

**Classification:** \`! B_TIER\`; SM-01/02 frozen; SM-03 exact formal classical operator structure; SM-04…SM-08 remain frozen; A-tier not established.
