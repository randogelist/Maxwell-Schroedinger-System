# Maxwell–Schrödinger obligation graph

## Root

```text
MAXWELL_SCHROEDINGER_B_TIER_HULL
```

The root consists of four layers:

```text
L0  periodic calculus and gauge operators
L1  Maxwell–Schrödinger identities
L2  stationary profile and energy geometry
L3  profile transfer and a_dagger extension
```

## L0 — analytic infrastructure

### O-00 Periodic integration by parts

Required for:

- continuity;
- energy conservation;
- ground-state transform;
- no-go identity.

### O-01 Hodge operators

With `L=(-Delta)_0^{-1}`:

```text
P_L F = -grad L div F
P F   = F + grad L div F
K F   = curl L F
```

Required identities:

```text
P_L + P = I
P² = P
P_L² = P_L
P P_L = 0
curl(KB)=B       for mean-zero div-free B
K(curl A)=A      for mean-zero Coulomb-gauge A
```

### O-02 Weighted elliptic operator

For positive smooth `chi`:

```text
L_chi(theta) = -div(chi² grad theta)
```

Required result:

```text
L_chi : H¹_0 -> H⁻¹_0
```

is an isomorphism.

### O-03 Covariant calculus

Required:

```text
D_A = -i hbar grad - q A
```

product rule, conjugation rules, and the integrated magnetic ground-state transform.

## L1 — exact system identities

```text
O-00 + O-03
   -> MS_CONTINUITY_IDENTITY
   -> MS_MASS_CONSERVATION
```

```text
MS_CONTINUITY_IDENTITY + Maxwell divergence identities
   -> MS_CONSTRAINT_PROPAGATION
```

```text
O-00 + MS equations
   -> MS_TOTAL_ENERGY_CONSERVATION
```

The energy theorem must retain the neutralizing background as a fixed source with zero current.

## L2 — stationary profile geometry

```text
Poisson solvability + chi>0
   -> Phi_chi
   -> W_chi
   -> MS_STATIONARY_PROFILE
```

```text
O-00 + O-03
   -> MS_GROUND_STATE_TRANSFORM
```

```text
MS_GROUND_STATE_TRANSFORM + Gauss law
   -> MS_EXACT_ENERGY_GAP
   -> MS_GLOBAL_MINIMIZER
```

```text
MS_EXACT_ENERGY_GAP + MS_TOTAL_ENERGY_CONSERVATION
   -> MS_ENERGY_TRAPPING
```

Open coercive closure:

```text
MS_ENERGY_TRAPPING
+ gauge-fixed phase coercivity
+ global well-posedness
   -> MS_GLOBAL_ORBITAL_STABILITY
```

## L3A — profile-transfer algebra

```text
CAR + one-particle restriction
   -> C_chi = |chi><e0|
   -> [C_chi,C_chi†] = P_chi-P0
   -> diag = |chi|²-1
```

Critical scope condition:

```text
The commutator identity is asserted on the one-particle sector.
It must not be promoted to an identical full-Fock commutator formula.
```

## L3B — `a_dagger` extension

```text
raw a_dagger
+ heat regularization
   -> smooth a_epsilon
   -> B_lambda=lambda a_epsilon
   -> A_lambda=K B_lambda
```

```text
O-02
   -> theta_lambda
   -> p_lambda
   -> J_mat
```

```text
J_Max=(1/mu0)curl B_lambda
J_ext=J_Max-J_mat
   -> A_DAGGER_STATIC_WITH_CURRENT_DEFECT
```

```text
weighted continuity
+ J_ext=0
+ periodic pairing with A_lambda
   -> STATIC_SPINLESS_MAGNETIC_NO_GO
```

Consequently:

```text
lambda != 0 and a_epsilon != 0
   -> J_ext != 0
```

## L3C — threshold translation

The amplitude threshold is not native Maxwell–Schrödinger data.

```text
NSE_REGULARITY_CERTIFICATE
+ COHERENT_RAY_LAWS
   -> CERTIFICATE_RADIUS_TRANSLATION
```

A physical-threshold statement additionally requires:

```text
QED_TO_NSE_DYNAMICAL_BRIDGE
+ regulator-independent limit
+ observable transition at the boundary
```

## Named unresolved obligations

### ANALYTIC-01

Global energy-class well-posedness in the exact frozen periodic Coulomb-gauge scope.

### ANALYTIC-02

Strong orbital metric coercivity modulo phase and gauge.

### ADAGGER-01

Exact definition and proof of the raw `a_dagger` function-space properties.

### ADAGGER-02

Exact imported theorem producing `lambda_crit` for the regularized ray.

### PHOTON-01

A fixed classical-field-to-one-photon normalization map and coherent expectation laws.

### BRIDGE-01

An exact Maxwell–Schrödinger-to-NSE dynamical bridge preserving the claimed regularity observable.

### PHYSICS-01

A regulator-independent observable whose behavior changes at `lambda_crit`.

## Safe proof spine for later A-tier emission

```text
operator signatures
-> independent calculus lemmas
-> continuity and constraint endpoints
-> stationary profile endpoint
-> ground-state transform
-> exact energy-gap endpoint
-> profile-transfer algebra
-> weighted phase solvability
-> current-defect construction
-> static no-go theorem
-> conditional threshold chain
-> deterministic root assembly
```

Scheduling may change. The equations, hypotheses, scope, and endpoint statements may not change without a B-tier revision.
