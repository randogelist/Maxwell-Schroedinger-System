# derivation_of_MS_TOTAL_ENERGY_CONSERVATION

```text
ENDPOINT_ID = MS-06
ENDPOINT = MS_TOTAL_ENERGY_CONSERVATION
GROUP = A. Native Maxwell–Schrödinger core
STATUS = B_TIER_DERIVED_FOR_SMOOTH_SOLUTIONS
MARKER = !
LEAN_STATUS = NOT_EMITTED
```

## Exact theorem

Let `(psi,A,Phi,E,B)` be a sufficiently regular periodic solution of the complete Maxwell–Schrödinger system. Assume `W` is real and time-independent. Define

```text
H_mat = (1/(2m)) ||D_A psi||_2^2 + integral W |psi|^2
H_EM  = (epsilon0/2)||E||_2^2 + (1/(2mu0))||B||_2^2
H_MS  = H_mat + H_EM.
```

Then

```text
d/dt H_MS = 0.
```

## Matter power identity

Differentiate `H_mat`, use `partial_t D_A=-q partial_t A`, substitute the Schrödinger equation, and integrate covariant derivatives by parts. Real static `W` contributes no explicit time term. The remaining identity is

```text
d/dt H_mat = integral J dot E.
```

## Electromagnetic power identity

Pair Ampère with `epsilon0 E` and Faraday with `B/mu0`. Periodicity and

```text
epsilon0 c^2 = 1/mu0
```

cancel the curl pairings, producing

```text
d/dt H_EM = -integral J dot E.
```

Summation gives total-energy conservation.

## Scope boundary

This endpoint is exact for sufficiently regular solutions. Extension to weak energy solutions requires a separate approximation theorem and a justified limit passage; equality may weaken to an energy inequality without additional regularity.

## Sign audit

- Ampère convention: `partial_t E-c^2 curl B=-J/epsilon0`.
- Faraday convention: `partial_t B+curl E=0`.
- Matter power has sign `+ integral J dot E`.
- Field power has sign `- integral J dot E`.
- No separate `integral rho Phi` term is added; longitudinal electric energy already carries electrostatic interaction energy.

## Endpoint checklist

- [x] Exact scoped statement frozen.
- [x] Complete B-tier derivation recorded for smooth solutions.
- [x] Regularity and static-potential premises explicit.
- [x] Sign conventions and interaction-energy accounting audited.
- [ ] Weak-solution limit theorem recorded.
- [ ] Numerical energy-drift validation attached.
- [ ] Exact Lean theorem signature emitted.
- [ ] Matching cached external compiler PASS.
- [ ] Theorem-level axiom audit PASS.
- [ ] Promotion above B-tier assigned.

## Artifacts

```text
MS_TOTAL_ENERGY_CONSERVATION_B_TIER.txt
MS_TOTAL_ENERGY_CONSERVATION.lean
MS_TOTAL_ENERGY_CONSERVATION_A_TIER.txt
run.cmd
```

[Canonical branch B-tier TXT](../B_TIER/MAXWELL_SCHROEDINGER_BRANCH_B_TIER.txt)

[Return to root checklist](../README.md)
