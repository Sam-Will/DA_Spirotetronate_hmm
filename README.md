# HMM Profile for Diels-Alderase Spirotetronate Cyclase Enzymes

This repository contains the scripts, data, and documentation necessary for building and validating the HMM profile for Diels-Alderase Spirotetronate cyclase enzymes.

## Project Overview

### Motivation
Diels-Alderase spirotetronate cyclases catalyze [4+2] cycloaddition reactions in natural product biosynthesis. Many spirotetronate compounds exhibit potent bioactivities, including acting as antimicrobial, antiviral and/or anticancer agents.

### Cutoff
In leave-one-out validation, the lowest scoring hit was 59.4.
However, there is a false positive within the MIBiG database scoring 64.3.
Due to this, a cutoff of 68 was chosen as a compromise.

### Data Source
The data for this project is curated from:
> **Interrogation of an Enzyme Library Reveals the Catalytic Plasticity of Naturally Evolved [4+2] Cyclases**  
> *ChemBioChem, 2023*  
> [Read the article](https://chemistry-europe.onlinelibrary.wiley.com/doi/10.1002/cbic.202300382)