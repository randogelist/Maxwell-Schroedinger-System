# Frozen SM-02 → NSE connection-curvature match — B-tier endpoint index

**Root:** \`NSE_CONNECTION_COVARIANT_CURVATURE_PORT\`  
**Frozen comparison row:** **SM-02 only** (\`[D_mu,D_nu]Phi=rho(F_mu nu)Phi\`).  
**Prior:** [SM-01 NSE transport commutator](./NSE_DERIVATION_COMMUTATOR_B_TIER.txt).  
**Full derivation:** [NSE_CONNECTION_COVARIANT_CURVATURE_PORT_B_TIER.txt](./NSE_CONNECTION_COVARIANT_CURVATURE_PORT_B_TIER.txt).

**Tier:** \`! B_TIER\`; no native Lean execution, no A-tier kernel/audit evidence.

## Selected NSE structure

For smooth incompressible NSE, with kinematic pressure \`p\` and vorticity \`omega=curl u\`:

\`\`\`text
b = p + |u|²/2
a_NSE = u_i dx^i - b dt
F_NSE = d a_NSE

D^a_X = X + i lambda a_NSE(X)

[D^a_X,D^a_Y]-D^a_[X,Y]
  = i lambda F_NSE(X,Y)
\`\`\`

### Explicit dynamical curvature

\`\`\`text
F_ij = ∂i u_j - ∂j u_i = epsilon_ijk omega_k

F_0i = ∂t u_i + ∂i b
     = (u × omega)_i + nu Delta u_i + f_i
\`\`\`

The Bianchi identity \`dF=0\` recovers the vorticity equation after the NSE temporal curvature equation is inserted. It does **not** supply independent Maxwell/Yang-Mills field equations.

## B-tier register

| ID | Endpoint | Classification |
|---|---|---|
| NCC-01 | \`HYDRODYNAMIC_ONE_FORM\` | ! exact construction |
| NCC-02 | \`CURVATURE_COMMUTATOR_OPERATOR_IDENTITY\` | ! exact algebra |
| NCC-03 | \`NSE_VORTICITY_CURVATURE\` | ! exact |
| NCC-04 | \`NSE_TEMPORAL_CURVATURE_IDENTITY\` | ! exact NSE reformulation |
| NCC-05 | \`BIANCHI_VORTICITY_IDENTITY\` | ! exact |
| NCC-06 | \`HELICAL_CURVATURE_EXAMPLE\` | ! exact smooth example |
| NCC-07 | \`AUXILIARY_GAUGE_COVARIANCE_AND_SLICE\` | ! exact obstruction |
| NCC-08 | \`MULTILAYER_CURVATURE_WITH_GRAPH_PORT\` | ! exact for finite graph |
| NCC-09 | \`NONLINEAR_AVERAGE_STRESS_OBSTRUCTION\` | ! exact |
| NCC-10 | \`ROW_SM02_STRUCTURAL_CLASSIFICATION\` | ! exact scope |
| NCC-11 | \`NSE_CONNECTION_COVARIANT_CURVATURE_PORT_ROOT\` | ! B-tier |

## The layer-averaging obstruction

For weights \`w_a>=0\` summing to one,

\`\`\`text
u_bar = sum_a w_a u_a
F_bar = sum_a w_a F_a = d(sum_a w_a a_a)
R_X = sum_a w_a (u_a-u_bar) tensor (u_a-u_bar)

sum_a w_a B(u_a,u_a)
 = B(u_bar,u_bar) + P_sigma div R_X
\`\`\`

Thus linear curvature averaging does **not** close nonlinear NSE without the Reynolds-covariance stress.

For symmetric graph coupling, an additional weighted-graph residual vanishes for uniform weights but need not vanish for general weights.

## Important non-identifications

- The auxiliary \(U(1)\) connection is built from velocity/pressure and has no independently derived electromagnetic interpretation.
- Full \(U(1)\) transformations of this connection change velocity; the divergence-free NSE slice only permits spatially harmonic (on the torus, spatially constant) gauge parameters.
- This globally defined 1-form has exact curvature and cannot describe a topologically nontrivial magnetic-flux bundle by itself.
- A non-Abelian curvature term \( [A_\mu,A_\nu]\) requires separate connection data.
- Viscosity is not a quantum gauge coupling.
- SM-03 through SM-08 remain frozen and **unimplemented** here.

## Open gates

- NCC-12 \`SELECTED_SM_PHYSICAL_GAUGE_FIELD_IDENTIFICATION\`.
- NCC-13 \`GAUGE_INVARIANT_GRAPH_STUECKELBERG_COMPLETION\`.
- NCC-14 \`QUANTUM_ELECTRON_PHYSICAL_COUPLING\`.
- NCC-15 \`FULL_GAUGE_CURRENT_STRESS_WARD_MATCH\`.
- NCC-16 \`EXTERNAL_LEAN_COMPILER_THEOREM_AXIOM_AUDIT\`.

## Future Lean spine (no local run)

1. Toroidal vector differential operations, \(d^2=0\), and Lamb identity.
2. Scalar \(U(1)\) differential operator commutator.
3. Coordinate curvature/vorticity extraction and Bianchi equation.
4. Exact Beltrami/helical NSE test.
5. Finite \((\mathrm{NSE})^X\) graph temporal-curvature formula.
6. Weighted covariance stress and graph residual.
7. Deterministic scoped root.

**References:** [Imperial geometry notes](https://www.ma.imperial.ac.uk/~skdona/lsgntgaugetheory) · [Oregon State fluid mechanics](https://open.oregonstate.education/intermediate-fluid-mechanics/chapter/bernoulli-equation/).
