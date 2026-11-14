# Lean module and endpoint plan

| Planned module | Responsibility |
|---|---|
| `Geometry.lean` | Unit torus, derivatives, means, periodicity |
| `Parameters.lean` | Positive constants and `c²=(ε₀μ₀)⁻¹` |
| `Spaces.lean` | Matter, Coulomb-gauge, energy, Fock, and outsider spaces |
| `FourierHodge.lean` | `L=(-Δ)⁻¹₀`, Leray projection, inverse curl |
| `Gauge.lean` | Coulomb gauge and gauge transformations |
| `Matter.lean` | Covariant derivative and Schrödinger equation |
| `ChargeCurrent.lean` | Neutralized charge, minimal-coupling current, continuity |
| `Maxwell.lean` | First-order Maxwell system and constraints |
| `CoulombReduction.lean` | Maxwell iff Poisson–wave reduction |
| `Conservation.lean` | Mass, constraints, total energy |
| `StationaryProfile.lean` | `χ`, `Φχ`, `Wχ`, stationary solution |
| `GroundStateTransform.lean` | Ground-state representation identity |
| `EnergyGap.lean` | Exact nonnegative energy-gap decomposition |
| `OrbitalStability.lean` | Coercivity and conditional stability |
| `ProfileTransfer.lean` | CAR transfer, commutator, relative charge |
| `ADagger.lean` | Heat regularization, weighted phase, defect, no-go |
| `RegularityBridge.lean` | NSE certificate and coherent-radius translation |
| `Validation.lean` | Residual, gauge, conservation, defect, benchmark predicates |
| `Main.lean` | Exact endpoint assembly |

## Required main imports

```lean
import MaxwellSchroedingerSystem.Conservation
import MaxwellSchroedingerSystem.EnergyGap
import MaxwellSchroedingerSystem.ProfileTransfer
import MaxwellSchroedingerSystem.ADagger
import MaxwellSchroedingerSystem.RegularityBridge
import MaxwellSchroedingerSystem.Validation
```

## Formalization order

1. Geometry, parameters, spaces.
2. Fourier–Hodge identities.
3. Charge/current and continuity.
4. Maxwell constraints and Coulomb reduction.
5. Mass and energy identities.
6. Stationary profile and energy gap.
7. Profile-transfer algebra.
8. `a_dagger` conditional extension and no-go theorem.
9. Regularity/photon bridge with named premises.
10. Validation predicates and root assembly.

## Cached-run outputs

The future A-tier package must contain:

```text
MaxwellSchroedingerSystem.lean
MAXWELL_SCHROEDINGER_SYSTEM_A_TIER.txt
run.cmd
```

No such files are certified by the current B-tier scaffold.
