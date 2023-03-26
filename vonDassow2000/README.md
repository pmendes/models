# von Dassow et al. (2000) model of segment polarity network

This contains implementations of the segment polarity network of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085) in COPASI. Model construction was done with python scripts using [BasiCO](https://github.com/copasi/basico), the scripts are included here.

 - **Python scrips**
    - **vonDassow2000_1cell.py** python script to construct a COPASI model that contains the segment polarity network in a single cell
    - **vonDassow2000.py** constructs a COPASI model with an array of hexagonal cells of arbitrary dimensions given two arguments on the command line (rows and colums). If arguments are missing it will default to an 2x8 grid. It can use alternative rate laws, given a 3rd command line argument "alt"
    - **vonDassow2000_loadParameters.py** given a COPASI model created with the scripts above, and parameter sets contained in a TSV file, this adds the parameter sets to the COPASI file. First argument is COPASI file, second is the TSV file, third optional is a name for the parameter sets. Note that this requires the TSV file has headers; a convenient file would be the output from a parameter scan encoded in models created by _vonDassow2000.py_
    - **runTellurium.py** script to run the timecourse1 simulation from an SBML file (exported from COPASI) by the Tellurium/libRoadRunner simulator

 - **Model files**
  - COPASI files are those with the extension **.cps**
  - Files with **.xml** extension are [SBML](https://sbml.org/) L4V2 files
