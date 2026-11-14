# Maxwell–Schrödinger System

```text
STATUS = B_TIER_HULL_ACTIVE
BRANCH = b-tier-hull
ROOT = MAXWELL_SCHROEDINGER_B_TIER_HULL
CANONICAL_TXT = B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt
LEAN_ROOT_PLANNED = MaxwellSchroedingerSystem.Main
EXACT_B_TIER_ENDPOINTS = 21
CONDITIONAL_B_TIER_ENDPOINTS = 2
OPEN_OR_VALIDATION_ENDPOINTS = 15
```

This repository isolates the periodic spinless Maxwell–Schrödinger system, its stationary electrostatic sector, the number-preserving profile-transfer algebra, the conditional `a_dagger` magnetic extension, and the validation program required before physical interpretation.

> Checklist semantics: `[x]` means that an exact or explicitly conditional B-tier derivation is recorded. `[ ]` means that a source theorem, analytical closure, numerical validation, or physical-limit statement remains unresolved. No checkbox denotes A-tier status.

## Canonical presentation artifact

[`B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt`](B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

The canonical TXT is structured as a theorem document:

```text
abstract
-> frozen spaces and operators
-> complete PDE system
-> gauge and conservation identities
-> stationary profile theorem
-> exact energy-gap theorem
-> profile-transfer algebra
-> a_dagger extension and no-go theorem
-> conditional regularity bridge
-> validation program
-> endpoint register
-> Lean adapter map
-> closure classification
```

## 1. Frozen mathematical setting

### Domain and parameters

\[
\mathbb T^3=(\mathbb R/\mathbb Z)^3,
\qquad |\mathbb T^3|=1,
\]
\[
m,\hbar,\varepsilon_0,\mu_0>0,
\qquad q\neq0,
\qquad c^2=(\varepsilon_0\mu_0)^{-1}.
\]

### Function spaces

\[
\mathcal H_{\mathrm m}=L^2(\mathbb T^3;\mathbb C),
\qquad
\mathbb S(\mathcal H_{\mathrm m})=
\{\psi\in\mathcal H_{\mathrm m}:\|\psi\|_2=1\}.
\]

\[
H^s_{\sigma,0}
=
\{v\in H^s(\mathbb T^3;\mathbb R^3):
\nabla\!\cdot v=0,\ \langle v\rangle=0\}.
\]

\[
\mathcal E_{\mathrm{energy}}
=
\bigl\{(\psi,A,E,B):
\psi\in H^1,
A\in H^1_{\sigma,0},
E,B\in L^2,
\|\psi\|_2=1\bigr\}.
\]

For the profile-transfer sector:

\[
\mathscr F_-(\mathcal H_{\mathrm m})
=
\bigoplus_{n\ge0}\bigwedge^n\mathcal H_{\mathrm m},
\qquad e_0(x)=1.
\]

For the transverse extension:

\[
a_\varepsilon=e^{(\varepsilon^2/4)\Delta}a_\dagger
\in C^\infty_{\sigma,0}
\qquad(\varepsilon>0),
\]

provided the raw datum is a mean-zero solenoidal periodic distribution. The separate claims

\[
a_\dagger\in L^2_{\sigma,0}\setminus BMO^{-1}
\]

remain source endpoints for the explicit raw series.

### Fourier–Hodge operators

\[
L=(-\Delta)^{-1}_0,
\qquad
\mathbb P=I+\nabla L\,\nabla\!\cdot,
\qquad
K=\nabla\times L.
\]

\[
F=-\nabla L(\nabla\!\cdot F)+\nabla\times KF,
\qquad \langle F\rangle=0.
\]

### Coulomb gauge

\[
\nabla\!\cdot A=0,
\qquad \langle A\rangle=0,
\qquad \langle\Phi\rangle=0.
\]

## 2. Base system

Define

\[
D_A=-i\hbar\nabla-qA,
\qquad
\rho_\psi=q(|\psi|^2-1),
\]
\[
J_{\psi,A}=
\frac qm\operatorname{Re}
\left(\overline\psi\,D_A\psi\right),
\qquad
E=-\partial_tA-\nabla\Phi,
\qquad
B=\nabla\times A.
\]

The Maxwell–Schrödinger system is

\[
i\hbar\partial_t\psi
=
\left(\frac{D_A^2}{2m}+W+q\Phi\right)\psi,
\tag{MS-S}
\]
\[
\nabla\!\cdot E=\rho_\psi/\varepsilon_0,
\qquad
\nabla\!\cdot B=0,
\tag{MS-G}
\]
\[
\partial_tB+\nabla\times E=0,
\qquad
\partial_tE-c^2\nabla\times B
=-J_{\psi,A}/\varepsilon_0.
\tag{MS-M}
\]

In Coulomb gauge this is equivalent, under continuity and the zero-mode conditions, to

\[
-\Delta\Phi=\rho_\psi/\varepsilon_0,
\qquad
\partial_t^2A-c^2\Delta A
=\varepsilon_0^{-1}\mathbb P J_{\psi,A}.
\tag{MS-C}
\]

## 3. Base identities

\[
\int_{\mathbb T^3}\rho_\psi\,dx=0,
\qquad
\partial_t\rho_\psi+\nabla\!\cdot J_{\psi,A}=0,
\qquad
\|\psi(t)\|_2=\|\psi(0)\|_2.
\]

Gauge covariance is

\[
\psi\mapsto e^{iq\Lambda/\hbar}\psi,
\quad
A\mapsto A+\nabla\Lambda,
\quad
\Phi\mapsto\Phi-\partial_t\Lambda.
\]

Define

\[
\mathcal H_{\mathrm{MS}}
=
\frac1{2m}\|D_A\psi\|_2^2
+\int_{\mathbb T^3}W|\psi|^2\,dx
+\frac{\varepsilon_0}{2}\|E\|_2^2
+\frac1{2\mu_0}\|B\|_2^2.
\]

For sufficiently regular solutions and static real `W`,

\[
\frac d{dt}\mathcal H_{\mathrm{MS}}=0.
\]

The derivation is the cancellation

\[
\frac d{dt}\mathcal H_{\mathrm{mat}}
=\int J\cdot E,
\qquad
\frac d{dt}\mathcal H_{\mathrm{EM}}
=-\int J\cdot E.
\]

## 4. Stationary profile sector

Fix

\[
\chi\in C^\infty(\mathbb T^3),
\qquad \chi>0,
\qquad \|\chi\|_2=1.
\]

Define

\[
-\varepsilon_0\Delta\Phi_\chi=q(\chi^2-1),
\qquad
E_\chi=-\nabla\Phi_\chi,
\]
\[
W_\chi
=
\lambda+
\frac{\hbar^2}{2m}\frac{\Delta\chi}{\chi}
-q\Phi_\chi.
\]

Then

\[
\psi_\star(t)=e^{-i\lambda t/\hbar}\chi,
\qquad
A_\star=0,
\qquad
E_\star=E_\chi,
\qquad
B_\star=0
\]

is the distinguished stationary solution.

The exact B-tier gap identity is

\[
\begin{aligned}
&\mathcal H_{\mathrm{MS}}(\psi,A,E,B)
-\mathcal H_{\mathrm{MS}}(\chi,0,E_\chi,0)\\
&=
\frac1{2m}\int_{\mathbb T^3}\chi^2
\left|D_A\left(\frac{\psi}{\chi}\right)\right|^2dx
+
\frac{\varepsilon_0}{2}\|E-E_\chi\|_2^2
+
\frac1{2\mu_0}\|B\|_2^2.
\end{aligned}
\tag{MS-GAP}
\]

Hence the stationary profile is a global energy minimizer modulo constant phase in the frozen Coulomb gauge.

## 5. Profile-transfer algebra

\[
C_\chi=a^\dagger(\chi)a(e_0),
\qquad
C_\chi\big|_{\mathscr F_-^{(1)}}
=|\chi\rangle\langle e_0|.
\]

\[
[C_\chi,C_\chi^\dagger]\big|_{\mathscr F_-^{(1)}}
=P_\chi-P_0,
\qquad
q\,\operatorname{diag}(P_\chi-P_0)
=q(\chi^2-1).
\]

The transfer is number-preserving:

\[
[\widehat N,C_\chi]=0.
\]

A two-mode anti-self-adjoint generator gives a number-preserving unitary `Uχ` satisfying

\[
U_\chi e_0=\chi.
\]

## 6. Conditional `a_dagger` magnetic extension

\[
B_\lambda=\lambda a_\varepsilon,
\qquad
A_\lambda=KB_\lambda,
\qquad
p_\lambda=\hbar\nabla\theta_\lambda-qA_\lambda.
\]

Weighted stationarity:

\[
\nabla\!\cdot(\chi^2p_\lambda)=0.
\]

Matter and Maxwell currents:

\[
J_\lambda^{\mathrm{mat}}
=\frac qm\chi^2p_\lambda,
\qquad
J_\lambda^{\mathrm{Max}}
=\frac1{\mu_0}\nabla\times B_\lambda,
\]
\[
J_\lambda^{\mathrm{ext}}
=J_\lambda^{\mathrm{Max}}
-J_\lambda^{\mathrm{mat}}.
\]

Exact static spinless self-consistency implies

\[
\frac1{\mu_0}\|B_\lambda\|_2^2
+
\frac1m\int_{\mathbb T^3}\chi^2|p_\lambda|^2dx
=0,
\]

therefore

\[
B_\lambda=0,
\qquad p_\lambda=0.
\]

A nonzero static dressing consequently requires an external current, spin current, additional matter sector, modified coupling, or time dependence.

## 7. Endpoint checklist

### A. Native Maxwell–Schrödinger core

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [x] | `MS-01` | `MS_CHARGE_NEUTRALITY` | `EXACT_B_TIER` | [`derivation_of_MS_CHARGE_NEUTRALITY/`](derivation_of_MS_CHARGE_NEUTRALITY/) |
| [x] | `MS-02` | `MS_CONTINUITY_IDENTITY` | `EXACT_B_TIER` | [`derivation_of_MS_CONTINUITY_IDENTITY/`](derivation_of_MS_CONTINUITY_IDENTITY/) |
| [x] | `MS-03` | `MS_MASS_CONSERVATION` | `EXACT_B_TIER` | [`derivation_of_MS_MASS_CONSERVATION/`](derivation_of_MS_MASS_CONSERVATION/) |
| [x] | `MS-04` | `MS_CONSTRAINT_PROPAGATION` | `EXACT_B_TIER` | [`derivation_of_MS_CONSTRAINT_PROPAGATION/`](derivation_of_MS_CONSTRAINT_PROPAGATION/) |
| [x] | `MS-05` | `MS_COULOMB_EQUIVALENCE` | `EXACT_B_TIER` | [`derivation_of_MS_COULOMB_EQUIVALENCE/`](derivation_of_MS_COULOMB_EQUIVALENCE/) |
| [x] | `MS-06` | `MS_TOTAL_ENERGY_CONSERVATION` | `EXACT_B_TIER_SMOOTH` | [`derivation_of_MS_TOTAL_ENERGY_CONSERVATION/`](derivation_of_MS_TOTAL_ENERGY_CONSERVATION/) |

### B. Stationary profile sector

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [x] | `ST-01` | `MS_STATIONARY_PROFILE` | `EXACT_B_TIER` | [`derivation_of_MS_STATIONARY_PROFILE/`](derivation_of_MS_STATIONARY_PROFILE/) |
| [x] | `ST-02` | `MS_GROUND_STATE_TRANSFORM` | `EXACT_B_TIER` | [`derivation_of_MS_GROUND_STATE_TRANSFORM/`](derivation_of_MS_GROUND_STATE_TRANSFORM/) |
| [x] | `ST-03` | `MS_EXACT_ENERGY_GAP` | `EXACT_B_TIER` | [`derivation_of_MS_EXACT_ENERGY_GAP/`](derivation_of_MS_EXACT_ENERGY_GAP/) |
| [x] | `ST-04` | `MS_GLOBAL_MINIMIZER` | `EXACT_B_TIER` | [`derivation_of_MS_GLOBAL_MINIMIZER/`](derivation_of_MS_GLOBAL_MINIMIZER/) |
| [x] | `ST-05` | `MS_ENERGY_TRAPPING` | `CONDITIONAL_ON_GLOBAL_SOLUTION` | [`derivation_of_MS_ENERGY_TRAPPING/`](derivation_of_MS_ENERGY_TRAPPING/) |
| [ ] | `ST-06` | `MS_ORBITAL_METRIC_COERCIVITY` | `OPEN_ANALYTIC` | [`derivation_of_MS_ORBITAL_METRIC_COERCIVITY/`](derivation_of_MS_ORBITAL_METRIC_COERCIVITY/) |
| [x] | `ST-07` | `MS_GLOBAL_ORBITAL_STABILITY` | `CONDITIONAL` | [`derivation_of_MS_GLOBAL_ORBITAL_STABILITY/`](derivation_of_MS_GLOBAL_ORBITAL_STABILITY/) |

### C. Creation–annihilation/profile-transfer sector

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [x] | `CA-01` | `PROFILE_TRANSFER_ONE_PARTICLE` | `EXACT_B_TIER` | [`derivation_of_PROFILE_TRANSFER_ONE_PARTICLE/`](derivation_of_PROFILE_TRANSFER_ONE_PARTICLE/) |
| [x] | `CA-02` | `PROFILE_TRANSFER_COMMUTATOR` | `EXACT_B_TIER` | [`derivation_of_PROFILE_TRANSFER_COMMUTATOR/`](derivation_of_PROFILE_TRANSFER_COMMUTATOR/) |
| [x] | `CA-03` | `PROFILE_TRANSFER_CHARGE_DIAGONAL` | `EXACT_B_TIER` | [`derivation_of_PROFILE_TRANSFER_CHARGE_DIAGONAL/`](derivation_of_PROFILE_TRANSFER_CHARGE_DIAGONAL/) |
| [x] | `CA-04` | `RELATIVE_CHARGE_SMEARING` | `EXACT_B_TIER` | [`derivation_of_RELATIVE_CHARGE_SMEARING/`](derivation_of_RELATIVE_CHARGE_SMEARING/) |
| [x] | `CA-05` | `PROFILE_TRANSFER_UNITARY_ROTATION` | `EXACT_B_TIER` | [`derivation_of_PROFILE_TRANSFER_UNITARY_ROTATION/`](derivation_of_PROFILE_TRANSFER_UNITARY_ROTATION/) |

### D. `a_dagger` magnetic extension

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [x] | `AD-01` | `A_DAGGER_HEAT_REGULARIZATION` | `EXACT_B_TIER` | [`derivation_of_A_DAGGER_HEAT_REGULARIZATION/`](derivation_of_A_DAGGER_HEAT_REGULARIZATION/) |
| [x] | `AD-02` | `WEIGHTED_PHASE_SOLVABILITY` | `EXACT_B_TIER` | [`derivation_of_WEIGHTED_PHASE_SOLVABILITY/`](derivation_of_WEIGHTED_PHASE_SOLVABILITY/) |
| [x] | `AD-03` | `A_DAGGER_STATIC_WITH_CURRENT_DEFECT` | `EXACT_B_TIER` | [`derivation_of_A_DAGGER_STATIC_WITH_CURRENT_DEFECT/`](derivation_of_A_DAGGER_STATIC_WITH_CURRENT_DEFECT/) |
| [x] | `AD-04` | `STATIC_SPINLESS_MAGNETIC_NO_GO` | `EXACT_B_TIER` | [`derivation_of_STATIC_SPINLESS_MAGNETIC_NO_GO/`](derivation_of_STATIC_SPINLESS_MAGNETIC_NO_GO/) |
| [x] | `AD-05` | `NONZERO_DRESSING_REQUIRES_DEFECT` | `EXACT_B_TIER` | [`derivation_of_NONZERO_DRESSING_REQUIRES_DEFECT/`](derivation_of_NONZERO_DRESSING_REQUIRES_DEFECT/) |
| [ ] | `AD-06` | `RAW_A_DAGGER_OUTSIDER_PROPERTIES` | `OPEN_SOURCE_THEOREM` | [`derivation_of_RAW_A_DAGGER_OUTSIDER_PROPERTIES/`](derivation_of_RAW_A_DAGGER_OUTSIDER_PROPERTIES/) |
| [ ] | `AD-07` | `CRITICAL_BMO_RAY_PROPERTIES` | `OPEN_SOURCE_THEOREM` | [`derivation_of_CRITICAL_BMO_RAY_PROPERTIES/`](derivation_of_CRITICAL_BMO_RAY_PROPERTIES/) |

### E. Regularity/photon-radius bridge

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [ ] | `RP-01` | `NSE_REGULARITY_CERTIFICATE` | `NAMED_PREMISE` | [`derivation_of_NSE_REGULARITY_CERTIFICATE/`](derivation_of_NSE_REGULARITY_CERTIFICATE/) |
| [ ] | `RP-02` | `COHERENT_RAY_LAWS` | `NAMED_PREMISE` | [`derivation_of_COHERENT_RAY_LAWS/`](derivation_of_COHERENT_RAY_LAWS/) |
| [x] | `RP-03` | `CERTIFICATE_RADIUS_TRANSLATION` | `CONDITIONAL_B_TIER` | [`derivation_of_CERTIFICATE_RADIUS_TRANSLATION/`](derivation_of_CERTIFICATE_RADIUS_TRANSLATION/) |
| [ ] | `RP-04` | `PHYSICAL_THRESHOLD_LIMIT` | `OPEN_PHYSICAL_GATE` | [`derivation_of_PHYSICAL_THRESHOLD_LIMIT/`](derivation_of_PHYSICAL_THRESHOLD_LIMIT/) |
| [ ] | `RP-05` | `QED_TO_NSE_DYNAMICAL_BRIDGE` | `OPEN_DECISIVE` | [`derivation_of_QED_TO_NSE_DYNAMICAL_BRIDGE/`](derivation_of_QED_TO_NSE_DYNAMICAL_BRIDGE/) |

### F. Validation endpoints

| Check | ID | Endpoint | Status | Derivation folder |
|---:|---|---|---|---|
| [ ] | `V-01` | `RESIDUAL_CONVERGENCE` | `NUMERICAL_TARGET` | [`derivation_of_RESIDUAL_CONVERGENCE/`](derivation_of_RESIDUAL_CONVERGENCE/) |
| [ ] | `V-02` | `GAUGE_COVARIANCE_VALIDATION` | `NUMERICAL_TARGET` | [`derivation_of_GAUGE_COVARIANCE/`](derivation_of_GAUGE_COVARIANCE/) |
| [ ] | `V-03` | `MASS_ENERGY_CONSERVATION` | `NUMERICAL_TARGET` | [`derivation_of_MASS_ENERGY_CONSERVATION/`](derivation_of_MASS_ENERGY_CONSERVATION/) |
| [ ] | `V-04` | `STATIONARY_PROFILE_REPRODUCTION` | `NUMERICAL_TARGET` | [`derivation_of_STATIONARY_PROFILE_REPRODUCTION/`](derivation_of_STATIONARY_PROFILE_REPRODUCTION/) |
| [ ] | `V-05` | `CURRENT_DEFECT_TEST` | `DECISIVE_NUMERICAL_TARGET` | [`derivation_of_CURRENT_DEFECT_TEST/`](derivation_of_CURRENT_DEFECT_TEST/) |
| [ ] | `V-06` | `OUTSIDER_REGULATOR_CONVERGENCE` | `OPEN` | [`derivation_of_OUTSIDER_REGULATOR_CONVERGENCE/`](derivation_of_OUTSIDER_REGULATOR_CONVERGENCE/) |
| [ ] | `V-07` | `COHERENT_STATISTICS` | `BENCHMARK_TARGET` | [`derivation_of_COHERENT_STATISTICS/`](derivation_of_COHERENT_STATISTICS/) |
| [ ] | `V-08` | `AB_PHASE` | `BENCHMARK_TARGET` | [`derivation_of_AB_PHASE/`](derivation_of_AB_PHASE/) |

## 8. Lean adapter

[`Lean_Adapter/`](Lean_Adapter/) contains the module graph, endpoint registry, proof-spine policy, and cached external-run contract.

No `.lean` theorem is promoted by the directory structure. Prepared Lean code is at most `A_TIER_CANDIDATE`; promotion requires a matching cached external compiler and theorem-level axiom audit.

## 9. B-tier source files

- [`B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt`](B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)
- [`B_TIER/MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt`](B_TIER/MAXWELL_SCHROEDINGER_SYSTEM_B_TIER.txt)
- [`B_TIER/ENDPOINT_INDEX.md`](B_TIER/ENDPOINT_INDEX.md)
- [`B_TIER/OBLIGATION_GRAPH.md`](B_TIER/OBLIGATION_GRAPH.md)
- [`B_TIER/VALIDATION_ENDPOINTS.md`](B_TIER/VALIDATION_ENDPOINTS.md)
- [`AGENTS.md`](AGENTS.md)

## 10. Tier discipline

```text
!    = B_TIER
!!   = A_TIER
!!!  = FORMAL_CLOSURE
!!!! = UNCONDITIONAL_CLOSURE
```

No endpoint in this branch is currently above `!`.
