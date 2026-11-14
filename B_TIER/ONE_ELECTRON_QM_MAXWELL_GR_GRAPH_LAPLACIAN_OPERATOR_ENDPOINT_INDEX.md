# One-electron QM–Maxwell–GR graph-Laplacian operator endpoints

`! = B_TIER`; `!=!` denotes exact graph-operator closure on the explicitly frozen synchronized reduced orbit. No endpoint below is A-tier.

| ID | Endpoint | Status |
|---|---|---|
| GRAPH-01 | `CANONICAL_READOUT_UNITARY` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-02 | `CANONICAL_SECTOR_INTERTWINING` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-03 | `EXPLICIT_SYNCHRONIZATION_PROJECTOR` | `EXACT_B_TIER` |
| GRAPH-04 | `GRAPH_LAPLACIAN_DISAGREEMENT_IDENTITY` | `EXACT_B_TIER` |
| GRAPH-05 | `GRAPH_LAPLACIAN_PROJECTOR_IDENTITY` | `EXACT_B_TIER` |
| GRAPH-06 | `GRAPH_LAPLACIAN_COMMUTES_WITH_TIME_EVOLUTION` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-07 | `SYNCHRONIZED_COMPRESSED_GENERATOR` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-08 | `GRAPH_PENALTY_MASTER_GENERATOR` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-09 | `EXACT_GRAPH_RIGGING_FILTER` | `EXACT_B_TIER` |
| GRAPH-10 | `EXACT_LEAKAGE_CRITERION` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-11 | `FINITE_TIME_SYNCHRONIZATION_LEAKAGE_BOUND` | `EXACT_CONDITIONAL_B_TIER` |
| GRAPH-12 | `TRISECTOR_GRAPH_LAPLACIAN_MERGED_OPERATOR` | `CONDITIONAL_B_TIER_WITH_EXPLICIT_GRAPH_OPERATOR` |
| GRAPH-13 | `DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION` | `OPEN_DECISIVE` |
| GRAPH-14 | `DRESSED_EMD_TANGENCY_VERIFICATION` | `OPEN_DECISIVE` |
| GRAPH-15 | `EMD_GR_PHYSICAL_SAME_ORBIT` | `OPEN_DECISIVE` |
| GRAPH-16 | `GLOBAL_SOURCED_NONLINEAR_PERSISTENCE` | `OPEN_ANALYTIC` |

## Exact graph identities

```text
Delta_tri = 3(I-P_sync)
ker Delta_tri = K_sync
P_sync = I-(1/3)Delta_tri
```

For sector representatives `x_s=W_s^*g_s`,

```text
<g,Delta_tri g>
  = ||x_Q-x_M||^2
  + ||x_M-x_G||^2
  + ||x_G-x_Q||^2.
```

## Exact rigging filter

```text
exp(-tau Delta_tri)
  = P_sync + exp(-3tau)(I-P_sync)
```

and

```text
||exp(-tau Delta_tri)-P_sync|| = exp(-3tau).
```

## Approximate leakage

For a self-adjoint imperfect block generator with bounded commutator,

```text
||(I-P_sync) exp(-it L_tilde) P_sync||
  <= |t| ||[L_tilde,P_sync]||
  <= 2|t| ||(I-P_sync)L_tilde P_sync||.
```

## Scope

The graph Laplacian acts on three observable representations of one reduced orbit. It is not a physical spatial Laplacian and does not quantize Maxwell or GR.

[Canonical derivation](ONE_ELECTRON_QM_MAXWELL_GR_GRAPH_LAPLACIAN_OPERATOR_B_TIER.txt)
