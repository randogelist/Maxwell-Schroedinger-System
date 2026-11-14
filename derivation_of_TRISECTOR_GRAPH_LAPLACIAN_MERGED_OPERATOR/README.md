# derivation_of_TRISECTOR_GRAPH_LAPLACIAN_MERGED_OPERATOR

```text
ENDPOINT = TRISECTOR_GRAPH_LAPLACIAN_MERGED_OPERATOR
STATUS = CONDITIONAL_B_TIER_WITH_EXPLICIT_GRAPH_OPERATOR
MARKER = !
SIGNAL = !=! ON THE FROZEN SYNCHRONIZED REDUCED ORBIT
LEAN_STATUS = NOT_EMITTED
A_TIER_STATUS = NOT_ESTABLISHED
LOCAL_LEAN_EXECUTIONS = 0
```

## Exact target

From a complete common reduced orbit and three injective gauge-reduced readouts, construct canonical sector Hilbert spaces, the common sector Koopman generators, the synchronization projector, and the tri-sector graph Laplacian satisfying

```text
Delta_tri = 3(I-P_sync)
ker Delta_tri = range(J).
```

## Exact consequence

```text
exp(-tau Delta_tri)
  = P_sync + exp(-3tau)(I-P_sync)
```

and therefore

```text
||exp(-tau Delta_tri)-P_sync|| = exp(-3tau).
```

For an imperfect self-adjoint block generator,

```text
||(I-P_sync)exp(-itL_tilde)P_sync||
  <= 2|t|||D_tilde||,

D_tilde=(I-P_sync)L_tilde P_sync.
```

## Named premises

```text
REDUCED_READOUT_EMBEDDINGS
COMMON_COMPLETE_REDUCED_FLOW
SELF_ADJOINT_COMMON_GENERATOR
DOMAIN_PRESERVATION
BOUNDED_COMMUTATOR_FOR_APPROXIMATE_LEAKAGE
```

## Physical open gates

```text
DRESSED_EMD_CP1_EMBEDDING_CONSTRUCTION
DRESSED_EMD_TANGENCY_VERIFICATION
EMD_GR_PHYSICAL_SAME_ORBIT
GLOBAL_SOURCED_NONLINEAR_PERSISTENCE
```

## Artifacts

- [B-tier derivation](../B_TIER/ONE_ELECTRON_QM_MAXWELL_GR_GRAPH_LAPLACIAN_OPERATOR_B_TIER.txt)
- [Endpoint index](../B_TIER/ONE_ELECTRON_QM_MAXWELL_GR_GRAPH_LAPLACIAN_OPERATOR_ENDPOINT_INDEX.md)
- [Lean module plan](../Lean_Adapter/ONE_ELECTRON_QM_MAXWELL_GR_GRAPH_LAPLACIAN_OPERATOR_MODULE_PLAN.md)

Prepared Lean code does not establish A-tier status. The theorem, hypotheses, sector semantics, and physical open gates may not change during promotion.
