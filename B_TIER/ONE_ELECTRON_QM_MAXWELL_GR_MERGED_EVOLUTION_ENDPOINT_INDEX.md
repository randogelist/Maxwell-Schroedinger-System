# One-electron QM–Maxwell–GR merged-evolution endpoint index

`! = B_TIER`; `!=!` denotes exact merged time evolution on the explicitly frozen synchronized reduced orbit. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| MERGE-01 | `MERGED_GRAPH_CARRIER` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-02 | `MERGED_SECTOR_EVOLUTION` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-03 | `MERGED_OBSERVABLE_AUTOMORPHISM` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-04 | `TRISECTOR_KOOPMAN_UNITARY_GROUP` | `EXACT_B_TIER` |
| MERGE-05 | `SECTOR_GENERATORS_ARE_UNITARILY_EQUIVALENT` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-06 | `TRISECTOR_SYNCHRONIZATION_PROJECTOR` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-07 | `MERGED_LEAKAGE_ZERO_IFF_GENERATOR_TANGENCY` | `EXACT_CONDITIONAL_B_TIER` |
| MERGE-08 | `MERGED_OPERATOR_SPECTRUM_ON_ANGULAR_MODES` | `EXACT_B_TIER` |
| MERGE-09 | `MERGED_TT_MATCHING_CONDITIONS` | `EXACT_B_TIER` |
| MERGE-10 | `ONE_ELECTRON_QM_MAXWELL_GR_MERGED_EVOLUTION` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_OPERATOR_MODEL` |
| MERGE-11 | `DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION` | `OPEN_DECISIVE` |
| MERGE-12 | `DRESSED_EMD_TANGENCY_VERIFICATION` | `OPEN_DECISIVE` |
| MERGE-13 | `EMD_GR_PHYSICAL_SAME_ORBIT` | `OPEN_DECISIVE` |
| MERGE-14 | `GLOBAL_SOURCED_NONLINEAR_PERSISTENCE` | `OPEN_ANALYTIC` |
| MERGE-15 | `SECTOR_READOUT_ISOMETRIES` | `OPEN_FUNCTIONAL_ANALYTIC` |

## Merged object

```text
Z_merge(z) = (Gamma_z, F_z, gamma_z)
```

with one common reduced flow

```text
Phi_t(u,phi) = (u, phi-(Delta_E/hbar)t).
```

## Common operator

```text
L_merge = -i(Delta_E/hbar) partial_phi
U_merge(t) = exp(-it L_merge).
```

## Synchronization projector

```text
J f = (1/sqrt(3))(W_QM f, W_M f, W_GR f)
P_sync = J J^*
[P_sync,U_block(t)] = 0
[P_sync,L_block] = 0.
```

## Exact reduced matching conditions

```text
K_QR = hbar
Delta_omega = Delta_E/hbar.
```

## Scope

This is a common Koopman–Liouville representation of the synchronized reduced orbit. It does not quantize Maxwell or GR and does not establish the nonlinear dressed EMD orbit.

[Canonical derivation](ONE_ELECTRON_QM_MAXWELL_GR_MERGED_EVOLUTION_B_TIER.txt)
