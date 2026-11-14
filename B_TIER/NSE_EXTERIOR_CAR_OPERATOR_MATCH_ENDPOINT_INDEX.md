# Frozen SM-04 → NSE exterior CAR operators — B-tier endpoint index

**Scoped theorem:** \`NSE_EXTERIOR_CAR_OPERATOR_MATCH\`  
**Reference:** [eight-row frozen SM/NSE match register](./FROZEN_SM_NSE_OPERATOR_MATCH_REGISTER_B_TIER.txt)  
**Predecessor:** [SM-03 Koopman/Heisenberg-form match](./NSE_KOOPMAN_HEISENBERG_FORM_B_TIER.txt)  
**Full B-tier TXT:** [NSE_EXTERIOR_CAR_OPERATOR_MATCH_B_TIER.txt](./NSE_EXTERIOR_CAR_OPERATOR_MATCH_B_TIER.txt)

**Classification:** \`! B_TIER\` (exact CAR and Cartan identities on a finite NSE Galerkin exterior algebra; **not** the physical SM electron Fock representation). No local Lean run, no A-tier compiler or theorem-level axiom audit.

## Exact mathematical match

For \(V_N=\mathbb R^d\) the finite NSE Fourier-coefficient space:

\`\`\`text
F_N = exterior_algebra(C^d)
c_i^dagger = dz^i wedge
c_i        = contraction_(∂_zi)

{c_i,c_j^dagger} = delta_ij I
{c_i,c_j}        = 0
{c_i^dagger,c_j^dagger}=0
\`\`\`

This is an exact **finite CAR algebra** and a structural analogue of frozen SM-04. The wedge degree is *form degree*, **not** physical electron number.

## Dynamic attachment to NSE

For the coefficient vector field \`z'=b_N(z)\`,

\`\`\`text
d = sum_i c_i^dagger ∂_i
i_b = sum_i b_N^i c_i

Lie_b = d i_b + i_b d
      = b_N·∇ + sum_(i,j) (∂_j b_N^i)c_j^dagger c_i

d²=0
[d,Lie_b]=0.
\`\`\`

On degree-zero forms \`Lie_b=L_N\` is the frozen NSE Koopman generator. On one-forms it additionally acts by \`Db_N\`, encoding the NSE linearization. The graph/Stokes matrix appears in this Jacobian, including cross-layer bilinears \`c_j^dagger c_i\`.

On top forms the generator includes \`div b_N\); on half-densities it includes \`(div b_N)/2\`, recovering the correction used in SM-03.

## Physical CAR transfer test

Let \(h_e\) denote a chosen finite subspace of physical Pauli/Dirac one-electron modes. To map physical creation/annihilation operators into the NSE graded algebra by \(W:h_e\to\mathbb C^d\), the necessary and sufficient condition is

\`\`\`text
{c(Wf),c^dagger(Wg)}
 = <f,W^*W g> I
 = <f,g> I  for all f,g

iff  W^*W=I_(h_e).
\`\`\`

Thus \(W\) must be isometric. A finite-dimensional NSE Galerkin space cannot contain an isometric image of the entire infinite-dimensional electron Hilbert space, and the earlier electron-current projection \(\psi\mapsto P_{\sigma,0}(j_\psi/n_\psi)\) is **not linear or isometric**.

The de Rham identity \`d²=0\` is mathematically suggestive but **does not** prove the distinct SM-06 BRST identity.

## B-tier register

| ID | Endpoint | Classification |
|---|---|---|
| NEC-01 | \`WEDGE_CONTRACTION_CAR\` | ! exact |
| NEC-02 | \`SMEARED_FINITE_CAR\` | ! exact |
| NEC-03 | \`EXTERIOR_DERIVATIVE_SQUARE_ZERO\` | ! exact de Rham, not BRST |
| NEC-04 | \`CARTAN_NSE_LIE_DERIVATIVE\` | ! exact |
| NEC-05 | \`CARTAN_CHAIN_COMPATIBILITY\` | ! exact |
| NEC-06 | \`PRODUCT_LAYER_GRADED_TENSOR\` | ! exact |
| NEC-07 | \`GRAPH_JACOBIAN_FERMION_BILINEAR\` | ! exact |
| NEC-08 | \`HELICAL_CAR_CARTAN_EXAMPLE\` | ! exact |
| NEC-09 | \`ZERO_ONE_TOP_HALF_DENSITY_RELATION\` | ! exact |
| NEC-10 | \`PHYSICAL_CAR_ISOMETRY_GATE\` | ! necessary and sufficient |
| NEC-11 | \`SM04_MATCH_SCOPE\` | ! structural only |
| NEC-12 | \`NSE_EXTERIOR_CAR_OPERATOR_MATCH_ROOT\` | ! B-tier |

## Open gates

- NEC-13: physical electron-mode isometry \(W\) derived rather than arbitrarily selected.
- NEC-14: correct spin, electric charge, weak-isospin and color representations.
- NEC-15: gauge-consistent unitary quantum fermion dynamics and renormalization.
- NEC-16: frozen SM-05 Gauss constraint / pressure comparison.
- NEC-17: frozen SM-06 gauge BRST nilpotency (distinct from de Rham nilpotency).
- NEC-18: native external Lean compiler and theorem-level axiom audit.

## Frozen table progress

| Frozen row | NSE status |
|---|---|
| SM-01 | exact transport Lie-commutator algebra |
| SM-02 | exact auxiliary \(U(1)\) connection curvature, not physical EM |
| SM-03 | exact finite Galerkin classical half-density commutator |
| **SM-04** | **exact exterior CAR analogue; physical fermion meaning open** |
| SM-05, SM-06, SM-07, SM-08 | frozen and unimplemented |

## Future formal proof spine

Finite wedge/contraction CAR → graded product → Cartan \(d,\iota_b,\mathcal L_b\) → NSE Jacobian graph bilinears → isometric-map CAR condition → scoped SM-04 root.

**Literature:** [Fermionic Fock CAR](https://www.cambridge.org/core/journals/forum-of-mathematics-sigma/article/scattering-and-pairing-by-exchange-interactions/4928A5A12CE298247EC796258ED5E68E) · [Cartan's formula](https://androma.org/theorems/1535) · [Classical Grassmann extension](https://arxiv.org/abs/hep-th/9903136).
