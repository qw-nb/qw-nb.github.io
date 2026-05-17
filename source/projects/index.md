---
title: Projects
date: 2026-05-17
layout: page
---

## QAWS — Quantum *Ab Initio* Wee Script

**QAWS** is my personal platform for prototyping ideas and conducting research projects in electronic structure theory. Written in C++, it is built on a self-developed tensor library (**xtensor**) and an electron repulsion integral engine (**xint**). QAWS is not publicly released.

### Core Focus

The central goal of QAWS is to achieve **rigorously O(N³)-scaling electronic structure calculations** for large molecular systems through low-rank tensor decomposition techniques. All methods listed below benefit from tensor compression, keeping the formal scaling at N³.

### Implemented Methods

- **GW**: Quasiparticle energy calculations with block tensor decomposition
- **RPA + SOSEX**: Random phase approximation with and without screened exchange corrections
- **MP2**: Second-order Moller-Plesset perturbation theory
- **SAPT**: Symmetry-adapted perturbation theory for intermolecular interactions
- **ADC(2)**: Algebraic-diagrammatic construction for excited states (second order)

### Key Ingredients

- **Block tensor decomposition** / **tensor hypercontraction (THC)**: Compress two-electron integral tensors for O(N³) scaling
- **xtensor**: In-house C++ tensor algebra library
- **xint**: In-house electron integral engine
