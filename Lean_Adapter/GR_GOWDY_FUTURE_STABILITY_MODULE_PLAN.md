# GR Gowdy future completeness and stability — Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = QM_MAXWELL_GR_GOWDY_FUTURE_STABILITY
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/
  GRT2Symmetry.lean
  GRTwist.lean
  GRArealExpansion.lean
  GRRaychaudhuri.lean
  GRGowdyClassification.lean
  GRGowdyCompleteness.lean
  GRCurvatureDefect.lean
  GRGowdyStability.lean
```

## Native algebraic endpoints

```text
CIRCULAR_DATA_T2_SYMMETRIC
EXPANDING_BRANCH_AREAL_SIGN
INITIAL_RAYCHAUDHURI_DECELERATION
CIRCULAR_DATA_GENUINELY_UNPOLARIZED
HIGH_FREQUENCY_CURVATURE_DEFECT_SCALING
CIRCULAR_NO_CORRECTOR_SUFFICIENT_GATE
```

## Standard-GR interface endpoints

```text
SYMMETRY_INHERITANCE
CIRCULAR_DATA_GOWDY_TWIST_ZERO
CIRCULAR_DATA_GOWDY
```

The exact theorem statements must expose the sign convention

```text
K_ij = -(1/2) L_n g_ij
```

and the orientation convention used in the twist scalars.

## Literature interface endpoints

```text
GOWDY_GLOBAL_AREAL_FOLIATION
GOWDY_FUTURE_TIMELIKE_COMPLETENESS
TORUS_WELL_PREPARED_STABILITY
TORUS_OSCILLATORY_CORRECTOR_STRESS
```

These remain explicit opaque theorem inputs until their analytic hypotheses are formalized. The current B-tier artifact cites:

```text
arXiv:1403.6252
arXiv:2605.31585
arXiv:1912.12981
```

## Root signature plan

```lean
namespace MaxwellSchroedingerSystem

structure CircularGowdyData where
  epsilon : ℝ
  amplitude : ℝ
  waveNumber : ℤ
  phase : ℝ
  epsilon_pos : 0 < epsilon
  amplitude_pos : 0 < amplitude
  waveNumber_ne : waveNumber ≠ 0

-- Native identities.
def T2Symmetric (D : CircularGowdyData) : Prop := ...
def TwistZero (D : CircularGowdyData) : Prop := ...
def FutureExpanding (D : CircularGowdyData) : Prop := ...
def GenuinelyUnpolarized (D : CircularGowdyData) : Prop := ...

-- Imported analytic conclusions.
def GlobalArealDevelopment (D : CircularGowdyData) : Prop := ...
def FutureTimelikeComplete (D : CircularGowdyData) : Prop := ...

theorem QM_MAXWELL_GR_GOWDY_FUTURE_STABILITY
    (D : CircularGowdyData)
    (hSymmetryInheritance : ...)
    (hAreal : ...)
    (hCompleteness : ...) :
    T2Symmetric D ∧
    TwistZero D ∧
    FutureExpanding D ∧
    GenuinelyUnpolarized D ∧
    GlobalArealDevelopment D ∧
    FutureTimelikeComplete D := ...

end MaxwellSchroedingerSystem
```

## Proof spine

```text
circular field identities
-> exact CMC vacuum data
-> T2 invariance
-> block orthogonality
-> twist-zero identity
-> areal sign
-> Gowdy theorem interfaces
-> root chain
```

The high-frequency branch is independent:

```text
explicit Weyl norms
-> sequence-limit identities
-> curvature-defect/no-defect dichotomy
```

## Promotion rules

Prepared `.lean` files establish only `A_TIER_CANDIDATE`. Promotion requires a matching cached external Lean compiler run and theorem-level axiom audit. Literature interfaces must remain named assumptions unless independently formalized. No local Lean execution is permitted.
