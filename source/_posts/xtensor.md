---
title: "xtensor: A Lightweight C++ Tensor Contraction Library with Einstein Summation"
date: 2026-05-17
academia: true
---

## Overview

**xtensor** is the tensor algebra engine powering QAWS. It implements efficient **Einstein summation (einsum)** over arbitrary-rank tensors — the core computational kernel underlying all N³-scaling electronic structure methods in QAWS, from GW and RPA to MP2 and ADC(2).

xtensor has been released as an **independent open-source** component. While QAWS itself remains private, xtensor is freely available for the community to use, modify, and contribute to.

## Features

- **Einstein summation**: Expressive tensor contraction syntax — specify complex multi-tensor operations in a single string
- **Arbitrary-rank tensors**: No restriction on tensor orders; handles scalars through rank-N arrays uniformly
- **Block-tensor aware**: Designed to interface naturally with block tensor decomposition and THC workflows
- **Header-only C++**: Minimal dependencies, easy to integrate into existing electronic structure codes
- **Performance-oriented**: Loop fusion and memory layout optimization for contraction-heavy workloads

## Why einsum?

In electronic structure theory, the computational bottleneck almost always reduces to a sequence of tensor contractions. For example, the GW self-energy, RPA correlation energy, and MP2 amplitudes can all be expressed as einsum operations over two-electron integral tensors. A well-optimized einsum engine is therefore the single most impactful component for achieving practical O(N³) scaling.

## Getting Started

xtensor is available at [github.com/qw-nb/xtensor](https://github.com/qw-nb/xtensor).
