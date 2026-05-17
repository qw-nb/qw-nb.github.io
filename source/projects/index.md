---
title: Projects
date: 2026-05-17
layout: page
---

## xint_mast — Large-Scale Molecular GW Calculations via Low-Rank Tensor Decomposition

**xint_mast** is a high-performance electronic structure code implementing **formally O(N³)-scaling GW calculations** for large molecular systems. The key innovation is the use of **block tensor decomposition** and **tensor hypercontraction (THC)** to compress the two-electron integral tensors, dramatically reducing computational cost without sacrificing accuracy.

### Key Features

- **O(N³) GW**: Block tensor decomposition enables GW-level accuracy at dramatically reduced scaling
- **Dual-grid THC**: A novel dual-grid scheme for efficient tensor hypercontraction of molecular systems
- **Energy Decomposition Analysis (EDA)**: Real-space EDA implementation in density matrix formulation for qualitative and quantitative interpretation of intermolecular interactions
- **Davidson diagonalization**: Efficient algorithms for excited-state computations
- **DFTB-TS**: Tight-binding methods with Tkatchenko-Scheffler dispersion

### Related Repositories

- [qw-nb/xint_mast](https://github.com/qw-nb/xint_mast) — Main codebase
- [qw-nb/simple_tensor](https://github.com/qw-nb/simple_tensor) — Tensor decomposition library
