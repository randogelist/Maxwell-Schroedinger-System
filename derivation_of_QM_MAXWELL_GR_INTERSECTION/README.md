# derivation_of_QM_MAXWELL_GR_INTERSECTION

```text
ENDPOINT_ID = QMGI-09
ENDPOINT = QM_MAXWELL_GR_INTERSECTION
STATUS = CONDITIONAL_B_TIER
ROOT_ARTIFACT = B_TIER/QM_MAXWELL_GR_INTERSECTION_B_TIER.txt
LEAN_STATUS = NOT_EMITTED
A_TIER_STATUS = NOT_ESTABLISHED
```

## Exact target

For the bridge datum

```text
B_{chi,epsilon}
 = (O_chi, omega_FS, Gamma_chi, rho_chi, Phi_chi, E_chi, a_epsilon),
```

assume

```text
Omega_QM = hbar omega_FS,
iota^*Omega_GR = kappa c^3 epsilon^2/G omega_FS,
iota^*Omega_GR = Omega_QM,
kappa>0,
epsilon>0.
```

Prove

```text
epsilon = l_P/sqrt(kappa).
```

Under `kappa=1/4`, prove

```text
epsilon=a_*=2l_P,
l_*=l_P.
```

## Exact dependency boundary

```text
QMGI_QUANTUM_ACTION_ORBIT
QMGI_QM_TO_CHARGE
QMGI_QM_TO_MAXWELL
QMGI_GAUSSIAN_SCALE
GR_REDUCED_PHASE_ENTRY
GR_PULLBACK_PROPORTIONAL
QM_GR_ORBIT_MATCHING
```

The first four are exact B-tier endpoints. The final three remain explicit GR premises.

## Circularity exclusion

The GR pullback coefficient must be computed without inserting any of

```text
hbar
l_P
epsilon=2l_P
kappa=1/4
```

as target-derived inputs.

## Promotion checklist

- [x] Exact scoped theorem frozen.
- [x] Complete conditional B-tier derivation recorded.
- [x] QM, Maxwell, Gaussian, and GR layers separated.
- [x] Universality and coefficient-nonselection gates recorded.
- [ ] GR reduced phase space constructed.
- [ ] GR pullback law proved.
- [ ] Same-orbit semantic matching proved.
- [ ] `kappa=1/4` independently derived.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.

## Planned artifacts

```text
QM_MAXWELL_GR_INTERSECTION_B_TIER.txt
QM_MAXWELL_GR_INTERSECTION.lean
QM_MAXWELL_GR_INTERSECTION_A_TIER.txt
run.cmd
```

[Canonical derivation](../B_TIER/QM_MAXWELL_GR_INTERSECTION_B_TIER.txt)
