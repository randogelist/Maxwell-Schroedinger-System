# QM–Maxwell–GR intersection Lean module plan

```text
STATUS = B_TIER_INTERFACE_PLAN
ROOT = MaxwellSchroedingerSystem.QMMaxwellGRIntersection
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/QuantumProjective.lean
MaxwellSchroedingerSystem/ProfileCharge.lean
MaxwellSchroedingerSystem/StationaryMaxwellEncoding.lean
MaxwellSchroedingerSystem/GaussianKernelScale.lean
MaxwellSchroedingerSystem/QMMaxwellBridgeDatum.lean
MaxwellSchroedingerSystem/GRReducedPhaseEntry.lean
MaxwellSchroedingerSystem/QMMaxwellGRIntersection.lean
MaxwellSchroedingerSystem/QMMaxwellGRPlanckEndpoint.lean
```

## Planned endpoint signatures

```text
QMGI_QUANTUM_ACTION_ORBIT
QMGI_QM_TO_CHARGE
QMGI_QM_TO_MAXWELL
QMGI_GAUSSIAN_SCALE
QM_MAXWELL_BRIDGE_DATUM
GR_REDUCED_PHASE_ENTRY
GR_PULLBACK_PROPORTIONAL
QM_GR_ORBIT_MATCHING
QM_MAXWELL_GR_INTERSECTION
QM_MAXWELL_GR_PLANCK_ENDPOINT
QMGI_ORBIT_UNIVERSALITY_GATE
QMGI_COEFFICIENT_NONSELECTION
GR_COEFFICIENT_ONE_QUARTER
```

## Proof spine

```text
projective orbit and FS form
-> stationary profile projector
-> relative charge defect
-> periodic Poisson encoding
-> Gaussian kernel scale
-> bridge datum
-> explicit GR premise signatures
-> scalar coefficient equality
-> Planck-kernel specialization
```

## Formal boundary

The final theorem must retain the following hypotheses explicitly until independently discharged:

```text
GR_REDUCED_PHASE_ENTRY
GR_PULLBACK_PROPORTIONAL
QM_GR_ORBIT_MATCHING
GR_COEFFICIENT_ONE_QUARTER
```

No theorem may infer the existence of the GR embedding from dimensional analysis. No theorem may insert `hbar`, `l_P`, or the target coefficient into the GR construction as a premise hidden inside a definition.

Prepared Lean files remain `A_TIER_CANDIDATE`. Promotion requires a matching cached external compiler run and theorem-level standard-axiom audit. No local Lean execution is permitted.
