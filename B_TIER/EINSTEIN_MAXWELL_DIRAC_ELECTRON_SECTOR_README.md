# Einstein–Maxwell–Dirac electron sector

```text
MARKER = !
TIER = B_TIER
ROOT = EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL
LEAN_STATUS = NOT_EMITTED
A_TIER_STATUS = NOT_ESTABLISHED
```

## Canonical artifacts

- [`EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_B_TIER.txt`](EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_B_TIER.txt) — complete B-tier derivation and closure classification.
- [`EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_ENDPOINT_INDEX.md`](EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_ENDPOINT_INDEX.md) — twenty-one endpoint register.
- [`../Lean_Adapter/EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_MODULE_PLAN.md`](../Lean_Adapter/EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_MODULE_PLAN.md) — planned formalization architecture.
- [`../derivation_of_EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL/`](../derivation_of_EINSTEIN_MAXWELL_DIRAC_ELECTRON_SECTOR_HULL/) — root derivation directory.

## Frozen equations

```text
(i hbar c gamma^mu D_mu - m_e c^2) Psi = 0

nabla_mu F^{mu nu} = mu0 j_e^nu

dF = 0

G_{mu nu}+Lambda g_{mu nu}
  = (8 pi G/c^4)(T_D+T_EM)_{mu nu}

j_e^mu = -e c bar(Psi) gamma^mu Psi
```

## Frozen electron normalization

```text
N_Sigma[Psi] = 1
Q_Sigma[Psi] = -e
```

This is a classical-field normalization. It is not an interacting-QED Fock-sector theorem.

## Exact structural conclusions

```text
U(1) gauge covariance
Dirac-current conservation
Cauchy-independent electron number and charge
Maxwell-source compatibility
Dirac/electromagnetic stress exchange
total stress conservation
Bianchi compatibility
Einstein-Maxwell Cauchy constraints
compact total-charge neutrality
stationary bilinears under a stationary ansatz
explicit a_dagger defect-current classification
```

## Sector variants

```text
ASYMPTOTICALLY_FLAT:
  isolated one-electron-normalized classical field; Q=-e

COMPACT:
  total charge must vanish;
  Q_e=-e requires Q_background=+e and a declared background stress tensor
```

## Open decisive endpoints

```text
EMD_LOCAL_WELLPOSEDNESS_IMPORT
EMD_STATIONARY_EXISTENCE
EMD_GLOBAL_STABILITY
EMD_QFT_ONE_ELECTRON_IDENTIFICATION
self-generation of the specified a_dagger field
```

## Interpretation

The sector contains electron mass, electric charge, spin `1/2`, electromagnetic backreaction, and gravitational backreaction. It omits photon quantization, pair creation, radiative corrections, renormalization, and the anomalous magnetic moment.
