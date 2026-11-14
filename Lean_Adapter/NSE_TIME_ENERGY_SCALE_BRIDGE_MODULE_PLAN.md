# NSE time–energy scale bridge Lean module plan

```text
STATUS = B_TIER_INTERFACE_SCAFFOLD
ROOT = ONE_ELECTRON_QM_MAXWELL_GR_TO_NSE_TIME_ENERGY_SCALE
LOCAL_LEAN_EXECUTIONS = 0
```

## Planned modules

```text
MaxwellSchroedingerSystem/NSEBridge/PhysicalTorus.lean
MaxwellSchroedingerSystem/NSEBridge/CircularProfile.lean
MaxwellSchroedingerSystem/NSEBridge/ExactSolution.lean
MaxwellSchroedingerSystem/NSEBridge/TimeScales.lean
MaxwellSchroedingerSystem/NSEBridge/EnergyLaw.lean
MaxwellSchroedingerSystem/NSEBridge/PhaseRadiusSemigroup.lean
MaxwellSchroedingerSystem/NSEBridge/ClockMatching.lean
MaxwellSchroedingerSystem/NSEBridge/CertificateEnergy.lean
MaxwellSchroedingerSystem/NSEBridge/Main.lean
```

## Planned theorem spine

```text
CIRCULAR_NSE_EIGENPROFILE
ADVECTED_CIRCULAR_NSE_SOLUTION
NSE_PHASE_AMPLITUDE_ENERGY_TIMES
CIRCULAR_NSE_ENERGY_DISSIPATION
NSE_PHASE_RADIUS_SEMIGROUP
NSE_QM_PHASE_CLOCK_MATCHING
NSE_ACTION_SCALE_CALIBRATION
NSE_CERTIFICATE_ENERGY_TRANSLATION
CIRCULAR_NSE_SEMIGROUP_INTERTWINING
ONE_ELECTRON_QM_MAXWELL_GR_TO_NSE_TIME_ENERGY_SCALE
```

## Frozen algebraic carrier

```lean
namespace MaxwellSchroedingerSystem.NSEBridge

structure ScaleData where
  L : ℝ
  rho : ℝ
  nu : ℝ
  k : ℝ
  U0 : ℝ
  amplitude : ℝ
  deltaE : ℝ
  hbar : ℝ

-- Exact scale formulas after positivity and nonzero hypotheses.
def phaseRate (d : ScaleData) : ℝ := d.k * d.U0
def decayRate (d : ScaleData) : ℝ := d.nu * d.k^2
def kineticEnergy0 (d : ScaleData) : ℝ :=
  (d.rho * d.L^3 / 2) * d.amplitude^2

def ClockMatched (d : ScaleData) : Prop :=
  d.k * d.U0 = d.deltaE / d.hbar

end MaxwellSchroedingerSystem.NSEBridge
```

Prepared files establish at most `A_TIER_CANDIDATE`. Promotion requires a matching cached external compiler and theorem-level axiom audit. The premises `EMD_TO_NSE_PHASE_RADIUS_SEMICONJUGACY`, `PHYSICAL_NSE_MASS_DENSITY_IDENTIFICATION`, and `NSE_ENERGY_TO_ELECTRON_GAP_CALIBRATION` must remain explicit.
