# von Dassow et al. (2000) model of segment polarity network - Random sampling results

This folder contains the results of random sampling the the segment polarity network with [COPASI](https://copasi.org). These results correspond to Fig. 2 and Table 2 of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085). The random sampling was carried out with file _vonDassow2000_1x4_alt.cps_ (located in the folder above this one), by selecting the appropriate parameter set named as the files below, and setting the number of repeats in the parameter scan task to the desired number (see Table 2 below). Results are contained in **.tsv** files, whose filenames are prefixed with the corresponding row of Table 2 (see below). Files contain only smaples for which the score was below 0.2 (full results files exceed GitHub limit and will be uploaded to Zenodo).

## Result files
- **1-crisp-hits.tsv** results from random sampling with an initial condition named "Crisp" that have scores below 0.2
- **2-degraded-hits.tsv** results from random sampling with an initial condition named "Degraded" that have scores below 0.2
- **3-crisp-ci-ptc-hits.tsv** results from random sampling with an initial condition named "Crisp, plus ubiquitous low-level _ci_ and _ptc_" that have scores below 0.2
- **4-band-ci-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ci_, stripe of _wg_ on posterior margin" that have scores below 0.2
- **5-band-ptc-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ptc_, stripe of _en_ on anterior margin" that have scores below 0.2
- **6-band-ptc-ci-hits.tsv** results from random sampling with an initial condition named "Three-cell band of _ptc_, out-phase three-cell band of _ci_" that have scores below 0.2
- **7-close-hits.tsv** results from random sampling with an initial condition named "Close to target pattern" that have scores below 0.2

## Processed files for Figure
- **1-log-hits-spider.tsv** contains the data in _1-crisp-hits.tsv_ for a selected set of columns after applying log base 10 (the columns were re-ordered to have the same order as in Fig 2 of the original paper)
- **1-log-hits-stats-spider.tsv** contains the parameter values of the mean of all values in _1-log-hits-spider.tsv_ and a row with those mean minus standard deviation, and another row with mean plus standard deviation
- **param_radial.plt** gnuplot script to produce a figure equivalent to Fig.2A of the original paper (requires gnuplot version 5.2.0 or above)

## Results
Note the table and figure numbers are the same as in the forthcoming publication.

**Table 2** - Frequency of solutions as a function of initial conditions.

|  | von Dassow | et al. (2000)  |  | this work |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Initial conditions** | **Hits** | **Tries** | **Hit rate** | **Hits** | **Tries** | **Hit rate** |
| Crisp | 1,192 | 240,000 | 1/201 | 1,015 | 239,272 | 1/236 |
| Degraded | 149 | 750,000 | 1/5,000 | 22 | 749,988 | 1/34,090 |
|Crisp, plus ubiquitous low-level ci and ptc | 110 | 41,258 | 1/375 | 91 | 41,941 | 1/461 |
|3-cell band of ci, wg stripe on posterior margin | 69 | 40,338 | 1/585 | 97 | 41,994 | 1/433 |
|3-cell band of ptc, en stripe on anterior margin | 127 | 36,196 | 1/285 | 102 | 37,994 | 1/372 |
|3-cell band of ptc, out-of-phase 3-cell band of ci | 16 | 226,084 | 1/14,130 | 168 | 229,996  | 1/1,369 |
|Close to target pattern | 464 | 21,526 | 1/46 | 556 | 21,992 | 1/39|

![Graphic representation of 'solutions’ obtained with crisp initial conditions. All 1,015 parameter sets with a  score below 0.2 are displayed. Black lines plot mean and standard deviation. Each spoke represents the log-scale range of one parameter. Half-lives and cooperativity coefficients are omitted, as in Fig. 2A of von Dassow et al (2000).](https://github.com/pmendes/models/blob/main/vonDassow2000/Sampling/Fig2.png)
**Fig.2** - Graphic representation of 'solutions’ obtained with crisp initial conditions. All 1,015 parameter sets with a  score below 0.2 are displayed. Black lines plot mean and standard deviation. Each spoke represents the log-scale range of one parameter. Half-lives and cooperativity coefficients are omitted, as in Fig. 2A of von Dassow et al (2000).
