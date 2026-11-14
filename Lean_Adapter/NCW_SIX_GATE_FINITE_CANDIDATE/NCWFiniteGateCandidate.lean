import Mathlib

/-!
# NCW finite algebra candidate
These lemmas formalize only finite rational anomaly sums and scalar
current / dissipation identities from the NCW six-gate B-tier note.

They do not formalize the full Standard Model, the two-electron
Lindblad semiconjugacy, Maxwell backreaction, or 3D NSE PDE regularity.
Prepared for the user's externally cached Mathlib environment only.
No local Lean run or theorem-level compiler/axiom-audit result exists.
-/

namespace NCWFiniteGateCandidate

theorem su3_squared_u1_anomaly :
    (2 : ℚ) * (1 / 6) + (-2 / 3) + (1 / 3) = 0 := by
  norm_num

theorem su2_squared_u1_anomaly :
    (3 : ℚ) * (1 / 6) + (-1 / 2) = 0 := by
  norm_num

theorem grav_squared_u1_anomaly :
    (6 : ℚ) * (1 / 6)
      + 3 * (-2 / 3) + 3 * (1 / 3)
      + 2 * (-1 / 2) + 1 = 0 := by
  norm_num

theorem u1_cubed_anomaly :
    (6 : ℚ) * (1 / 6) ^ 3
      + 3 * (-2 / 3) ^ 3 + 3 * (1 / 3) ^ 3
      + 2 * (-1 / 2) ^ 3 + 1 = 0 := by
  norm_num

theorem current_residual_split (source fluid : ℝ) :
    source = fluid + (source - fluid) := by
  ring

theorem reciprocal_edge_force_cancel (κ u v : ℝ) :
    -κ * (u - v) + -κ * (v - u) = 0 := by
  ring

theorem graph_edge_nonnegative (κ u v : ℝ) (hκ : 0 ≤ κ) :
    0 ≤ κ * (u - v) ^ 2 := by
  exact mul_nonneg hκ (sq_nonneg _)

theorem dephasing_offdiag_algebra (γ z : ℂ) :
    (γ / 2) * (-z - z) = -(γ * z) := by
  ring

theorem coherence_current_energy_identity (gap r : ℝ) :
    (gap / 8) * r ^ 2 =
      (gap / 4) * ((1 + r ^ 2) / 2 - 1 / 2) := by
  ring

theorem coulomb_angular_slip (ΔE ΔC h : ℝ) :
    (ΔE + ΔC) / h - ΔE / h = ΔC / h := by
  ring

theorem field_fluid_reservoir_power_cancel
    (work visc drag : ℝ) :
    (-work) + (work - visc - drag) + visc + drag = 0 := by
  ring

end NCWFiniteGateCandidate

-- The following commands emit theorem-level dependency evidence.
-- Outputs are valid audit evidence only with a matching external compiler log.
#print axioms NCWFiniteGateCandidate.su3_squared_u1_anomaly
#print axioms NCWFiniteGateCandidate.su2_squared_u1_anomaly
#print axioms NCWFiniteGateCandidate.grav_squared_u1_anomaly
#print axioms NCWFiniteGateCandidate.u1_cubed_anomaly
#print axioms NCWFiniteGateCandidate.current_residual_split
#print axioms NCWFiniteGateCandidate.reciprocal_edge_force_cancel
#print axioms NCWFiniteGateCandidate.graph_edge_nonnegative
#print axioms NCWFiniteGateCandidate.dephasing_offdiag_algebra
#print axioms NCWFiniteGateCandidate.coherence_current_energy_identity
#print axioms NCWFiniteGateCandidate.coulomb_angular_slip
#print axioms NCWFiniteGateCandidate.field_fluid_reservoir_power_cancel
