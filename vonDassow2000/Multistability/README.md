# von Dassow et al. (2000) model of segment polarity network - Multistability Sampling
This folder contains the simulations and results of the MultitabilitySampling1 for the segment polarity network with [COPASI](https://copasi.org).

As a demonstratation of how the model can be re-use for other purposes, a new COPASI file was created (_vonDassow2000_1x4_alt_ss_multistab.cps_) to sample 5,000 random parameter sets (for all 48 parameters). For each random parameter set 15 random initial conditions are sampled and a steady state calculated. Post-processing (with _processdata.sh_) separates the parameter sets into two groups: those that have only a single steady state, and those that have multiple steady states. Finally the distributions of each parameter value in the single steady state class and multiple steady state classes are plotted and compared (with _stability_stats.py_). The latter script creates Fig5, and FigS1, FigS2, and FigS3.

### Simulation files
- **vonDassow2000_1x4_alt_ss_multistab.cps** COPASI file encoding a 1x4 array of cells encoding the semgment polarity network model. The parameter scan task is programmed to generate 5000 sets of random parameter values, then for each one of these calculate steady state (by integration only) for 15 different random initial conditions.

### Result files
- **MultistabilitySampling1.tsv** sampling results by COPASI (steady state resolution of 0.0001). Note that from 5,000 samples only 3,387 have at least one steady state. The others may either contain limit cycles or more complex dynamic behaviours, or the steady state solver did not converge.
- **MultistabilitySampling1_allSS.tsv** cleaned up version of _MultistabilitySampling1.tsv_ with only each unique steady state.
- **MultistabilitySampling1_singleSS.tsv** cleaned up version of _MultistabilitySampling1.tsv_ with only the parameter sets for which a unique steady state was obtained.
- **MultistabilitySampling1_multipleSS.tsv** cleaned up version of _MultistabilitySampling1.tsv_ with only the parameter sets for which more that one steady state was obtained.
- **MultistabilitySampling1_parameters.tsv** Parameter values of each random set in _MultistabilitySampling1.tsv_ classified either as multi-stable (class=1) or as single steady state (class=0).

### Files for Figures 5, S1, S2, and S3
- **stability_stats.py** Python script to produce figures 5, S1, S2, and S3. Requires the packages pandas, matplotlib, seaborn
- **Fig5.png** Figure 5 - distributions of values for unique (blue) and multiple (orange) steady states for parameters kappa_CNptc and kappa_CNen
- **FigS1.png** Figure S1 - distributions of values for unique (blue) and multiple (orange) steady states for 16 of the 48 parameters
- **FigS2.png** Figure S2 - distributions of values for unique (blue) and multiple (orange) steady states for 16 of the 48 parameters
- **FigS3.png** Figure S3 - distributions of values for unique (blue) and multiple (orange) steady states for 16 of the 48 parameters
