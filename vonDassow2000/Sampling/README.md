# von Dassow et al. (2000) model of segment polarity network - Random sampling results

This folder contains the results of random sampling the the segment polarity network with [COPASI](https://copasi.org). These results correspond to Fig. 2 and Table 2 of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085). Results are contained in **.tsv** files, whose filenames are prefixed with the corresponding row of Table 2 (see below). Files contain only smaples for which the score was below 0.2 (full results files exceed GitHub limit and will be uploaded to Zenodo).

**Result files**
- **1-crisp-hits.tsv** results from random sampling with an initial condition named "Crisp" that have scores below 0.2
- **2-degraded-hits.tsv** results from random sampling with an initial condition named "Degraded" that have scores below 0.2
- **3-crisp-ci-ptc-hits.tsv** results from random sampling with an initial condition named "Crisp, plus ubiquitous low-level _ci_ and _ptc_" that have scores below 0.2
- **4-band-ci-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ci_, stripe of _wg_ on posterior margin" that have scores below 0.2
- **5-band-ptc-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ptc_, stripe of _en_ on anterior margin" that have scores below 0.2
- **6-band-ptc-ci-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ptc_, out-phase three-cell band of _ci_" that have scores below 0.2
- **7-close-hits.tsv** results from random sampling with an initial condition named "Close to target pattern" that have scores below 0.2

**Processed files for Figure**
- **1-log-hits-spider.tsv** contains the data in _1-crisp-hits.tsv_ for a selected set of columns after applying log base 10 (the columns were re-ordered to have the same order as in Fig 2 of the original paper)
- **1-log-hits-stats-spider.tsv** contains the parameter values of the mean of all values in _1-log-hits-spider.tsv_ and a row with those mean minus standard deviation, and another row with mean plus standard deviation
- **param_radial.plt** gnuplot script to produce a figure equivalent to Fig.2A of the original paper (requires gnuplot version 5.2.0 or above)


![Graphic representation of 'solutions’ obtained with crisp initial conditions. All 1,015 parameter sets with a  score below 0.2 are displayed. Black lines plot mean and standard deviation. Each spoke represents the log-scale range of one parameter. Half-lives and cooperativity coefficients are omitted, as in Fig. 2A of von Dassow et al (2000).](https://github.com/pmendes/models/tree/main/vonDassow2000/Sampling/Fig2.png)
