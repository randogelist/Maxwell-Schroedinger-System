# Analytical and numerical validation endpoints

## Analytical prerequisites

### A-01 Gauge covariance

Under

```text
A -> A + grad Lambda
Phi -> Phi - partial_t Lambda
psi -> exp(i q Lambda/hbar) psi
```

verify invariance of

```text
|psi|², rho, J, E, B, total energy.
```

### A-02 Continuity

```text
partial_t rho + div J = 0.
```

### A-03 Constraint propagation

```text
partial_t(div E-rho/epsilon0)=0
partial_t(div B)=0.
```

### A-04 Energy conservation

For static real `W`:

```text
d/dt H_MS = 0.
```

### A-05 Manufactured stationary solution

For `chi`, `Phi_chi`, and `W_chi` from the B-tier file:

```text
psi=e^{-i lambda t/hbar}chi
A=0
Phi=Phi_chi
```

must solve every equation exactly.

### A-06 Exact energy gap

Numerical quadrature and symbolic reduction must reproduce

```text
H_MS-H_* = covariant_gap + electric_gap + magnetic_gap.
```

### A-07 Static no-go identity

For exact spinless self-consistency:

```text
(1/mu0)||B||² + (1/m) integral chi²|p|² = 0.
```

Every nonzero static magnetic candidate must therefore produce a nonzero current defect.

### A-08 One-particle transfer algebra

On the one-particle sector:

```text
C_chi C_chi† = P_chi
C_chi† C_chi = P_0
[C_chi,C_chi†] = P_chi-P_0.
```

### A-09 Neutrality

```text
integral q(|chi|²-1)=0.
```

### A-10 Threshold classification

Confirm that `lambda_crit` is used only as a sufficient imported certificate unless a dynamical bridge and physical observable are supplied.

## Numerical residuals

For a computed trajectory define

```text
R_S  = i hbar partial_t psi - [(D_A²)/(2m)+W+qPhi]psi
R_P  = -Delta Phi - rho/epsilon0
R_A  = partial_t² A-c²Delta A-(1/epsilon0)P J
R_G  = div E-rho/epsilon0
R_B  = div B
R_F  = partial_t B+curl E
R_C  = partial_t rho+div J
```

Required convergence:

```text
max_{0<=t<=T} sum ||R_*|| -> 0
```

under simultaneous space/time refinement.

## Manufactured-solution suite

### N-01 Electrostatic stationary profile

Expected:

```text
rho(t)=rho_chi
J(t)=0
E(t)=E_chi
B(t)=0
```

up to discretization error.

### N-02 Pure transverse free Maxwell mode

Expected dispersion:

```text
omega=c|k|.
```

### N-03 Gauge-related initial data

Gauge-invariant outputs must coincide.

### N-04 Small perturbation of stationary profile

Track

```text
energy gap
electric distance
magnetic distance
phase-orbit distance.
```

### N-05 `a_dagger` current defect

For

```text
B_lambda=lambda a_epsilon
A_lambda=K B_lambda
```

solve the weighted phase equation and compute

```text
R_J(lambda)
  = ||(1/mu0)curl B_lambda - J_mat||_{H^-1}.
```

Pass condition for the present spinless theory:

```text
R_J(0)=0
R_J(lambda)>0 for lambda!=0.
```

### N-06 Conservation drift

Measure

```text
Delta_mass(T)
Delta_energy(T)
Delta_Gauss(T).
```

Each must converge to zero at the method's predicted order.

### N-07 Cutoff convergence

Repeat under Fourier cutoffs `N`, requiring convergence in the declared Sobolev norms.

### N-08 Regularization convergence

Repeat under `epsilon -> 0` for `a_epsilon`. Record whether the target norm remains finite or diverges.

### N-09 Torus-size convergence

For volume `L³`, replace `1` by `1/L³`. Test local convergence to the corresponding whole-space field as `L -> infinity`.

### N-10 Threshold robustness

Compute

```text
lambda_crit(N,epsilon,L)
N_crit(N,epsilon,L)
E_crit(N,epsilon,L).
```

No physical interpretation is permitted unless a stable regulator-independent limit is observed and theoretically justified.

## Established benchmark comparisons

### B-01 Free Schrödinger dispersion

For weak fields and `W=0`, recover the exact Fourier phase

```text
exp[-i hbar |k|² t/(2m)].
```

### B-02 Maxwell dispersion

Recover `omega=c|k|` for source-free transverse waves.

### B-03 Coulomb/Poisson reconstruction

Verify that the longitudinal electric field equals

```text
-grad (-Delta)_0^{-1}(rho/epsilon0).
```

### B-04 Aharonov–Bohm phase

For prescribed flux:

```text
Delta phase = (q/hbar) line_integral A.
```

### B-05 Coherent-state scaling

Conditional on a fixed quantization convention:

```text
field expectation proportional to lambda
photon number proportional to lambda²
normal-ordered energy proportional to lambda².
```

### B-06 Cyclotron benchmark

In an approximately uniform magnetic sector recover

```text
omega_c=|q|B/m
E_{n+1}-E_n=hbar omega_c
```

for the spinless orbital model.

## Utility gate

The theory is useful only after all of the following hold:

```text
U1 exact constraints and conservation pass
U2 stationary manufactured solution passes
U3 current defect is quantitatively characterized
U4 gauge/cutoff/regularization convergence passes
U5 a declared observable is linked to each proposed threshold
U6 claimed electron-specific effects remain inside the spinless scope
```

The first decisive endpoint is `N-05`.
