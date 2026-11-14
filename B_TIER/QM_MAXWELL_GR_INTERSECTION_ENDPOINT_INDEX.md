# QM–Maxwell–GR intersection endpoint index

`! = B_TIER`; no endpoint below is A-tier.

| ID | Endpoint | Status | Derivation source |
|---|---|---|---|
| QMGI-01 | `QMGI_QUANTUM_ACTION_ORBIT` | `EXACT_B_TIER` | `QM_MAXWELL_GR_INTERSECTION_B_TIER.txt §1` |
| QMGI-02 | `QMGI_QM_TO_CHARGE` | `EXACT_B_TIER` | `§3` |
| QMGI-03 | `QMGI_QM_TO_MAXWELL` | `EXACT_B_TIER` | `§4` |
| QMGI-04 | `QMGI_GAUSSIAN_SCALE` | `EXACT_B_TIER` | `§5` |
| QMGI-05 | `QM_MAXWELL_BRIDGE_DATUM` | `EXACT_B_TIER` | `§6` |
| QMGI-06 | `GR_REDUCED_PHASE_ENTRY` | `NAMED_UNRESOLVED_PREMISE` | `§7` |
| QMGI-07 | `GR_PULLBACK_PROPORTIONAL` | `NAMED_UNRESOLVED_PREMISE` | `§7` |
| QMGI-08 | `QM_GR_ORBIT_MATCHING` | `NAMED_UNRESOLVED_PREMISE` | `§7` |
| QMGI-09 | `QM_MAXWELL_GR_INTERSECTION` | `CONDITIONAL_B_TIER` | `§8` |
| QMGI-10 | `QM_MAXWELL_GR_PLANCK_ENDPOINT` | `CONDITIONAL_B_TIER` | `§9` |
| QMGI-11 | `QMGI_ORBIT_UNIVERSALITY_GATE` | `EXACT_B_TIER` | `§10` |
| QMGI-12 | `QMGI_COEFFICIENT_NONSELECTION` | `EXACT_B_TIER` | `§10` |
| QMGI-13 | `GR_COEFFICIENT_ONE_QUARTER` | `OPEN_DECISIVE_GR_ENDPOINT` | external GR derivation required |

## Preserved chain

```text
Gamma_chi
-> P_chi-P_0
-> rho_chi=q(chi^2-1)
-> -epsilon0 Delta Phi_chi=rho_chi
-> E_chi=-grad Phi_chi
```

```text
a_dagger
-> a_epsilon=exp((epsilon^2/4)Delta)a_dagger
-> a_*=epsilon
-> l_*=epsilon/2
```

```text
quantum action = hbar omega_FS
+ GR pullback = kappa c^3 epsilon^2/G omega_FS
+ same-orbit matching
-> epsilon=l_P/sqrt(kappa)
```

```text
kappa=1/4
-> epsilon=a_*=2l_P
-> l_*=l_P
```

## Closure boundary

The exact implication from `QMGI-06..08` to `QMGI-09` is B-tier. The existence and coefficient of the GR entry are not established by the current branch. `QMGI-10` additionally requires `QMGI-13`.

[Canonical B-tier derivation](QM_MAXWELL_GR_INTERSECTION_B_TIER.txt)
