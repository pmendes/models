# von Dassow et al. (2000) model of segment polarity network

This contains implementations of the segment polarity network of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085) in [COPASI](https://copasi.org). Model construction was done with python scripts using [BasiCO](https://github.com/copasi/basico), the scripts are included here.

Files with the extension **.cps** are COPASI files, extension **.xml** are [SBML](https://sbml.org/) files, extension **.omex** are [OMEX/COMBINE archive](https://combinearchive.org/index/) files, extension **.py** are python scripts.

 - **Python scrips**
    - **vonDassow2000_1cell.py** python script to construct a COPASI model that contains the segment polarity network in a single cell
    - **vonDassow2000.py** constructs a COPASI model with an array of hexagonal cells of arbitrary dimensions given two arguments on the command line (rows and colums). If arguments are missing it will default to an 2x8 grid. It can use alternative rate laws, given a 3rd command line argument "alt"
    - **vonDassow2000_loadParameters.py** given a COPASI model created with the scripts above, and parameter sets contained in a TSV file, this adds the parameter sets to the COPASI file. First argument is COPASI file, second is the TSV file, third optional is a name for the parameter sets. Note that this requires the TSV file has headers; a convenient file would be the output from a parameter scan encoded in models created by _vonDassow2000.py_
    - **runTellurium.py** script to run the timecourse1 simulation from an SBML file (exported from COPASI) by the [Tellurium/libRoadRunner](https://tellurium.analogmachine.org/) simulator (appropriate input would be file _vonDassow2000_1x4.timecourse1.xml_


 - **Model files**
    - **vonDassow2000_1cell.cps** COPASI file encoding the segment polarity network in a single cell. The species from neighboring cells are included but have fixed concentrations
    - **vonDassow2000_1x4_alt.cps** COPASI file used for sampling parameter sets randomly as in the [original paper's](https://doi.org/10.1038/35018085) Fig. 2 and Table 2. This uses alternative rate laws to protect against floating point invalid operations.
    - **vonDassow2000_1x4.timecourse1.cps** COPASI file encoding a 1x4 array of cells encoding the semgment polarity network model with a parameter set that converges to the appropriate segmentation pattern
    - **vonDassow2000_1x4.timecourse1.omex** OMEX file corresponding to the equivalent COPASI file (above). Contains the appropriate SBML and SED-ML files encoding the simulation
    - **vonDassow2000_1x4.timecourse1.xml** SBML L3V1 file with the model in the equivalent COPASI file (above). This includes the appropriate model parameters and initial conditions for the timecourse1 simulation. Can be used as input to _runTellurium.py_
    - **vonDassow2000_1x4_alt_ss_multistab.cps** COPASI file encoding a 1x4 array of cells encoding the semgment polarity network model. The parameter scan task is programmed to generate 5000 sets of random parameter values, then for each one of these calculate steady state (by integration only) for 15 different random initial conditions.


 - **Result folders**
 Note that some of the primary result files are not included here because they are too large for this repository. They can be found in the Zenodo dataset doi:10.5281/zenodo.7772570.
    - **Sampling** results from the random sampling with COPASI using _vonDassow2000_1x4_alt.cps_, as described in the Table 2 of the original paper
    - **timecourse1** results from a time course simulation of a specific parameter set using four different simulators that used either _vonDassow2000_1x4.timecourse1.cps_, _vonDassow2000_1x4.timecourse1.xml_ or _vonDassow2000_1x4.timecourse1.omex_
    - **Multistability** results from study to detect multistability, through a random parameter sampling and random initial conditions sampling and steady state solution using _vonDassow2000_1x4_alt_ss_multistab.cps_.
