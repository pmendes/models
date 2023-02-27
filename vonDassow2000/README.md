# von Dassow et al. (2000) model of segment polarity network

This contains implementations of the segment polarity network of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085) in COPASI. Model construction was done with python scripts using [BasiCO](https://github.com/copasi/basico), the scripts are included here.

 - **vonDassow2000_1cell.py** constructs a COPASI model that contains the interaction network in a single cell
 -  **vonDassow2000.py** constructs a COPASI model with an array of hexagonal cells of any dimensions given two arguments on the command line (rows and colums). If arguments are missing it will default to an 2x8 grid
 - **vonDassow2000_loadParameters.py** given a COPASI model and a parameter set in a TSV file, this adds the parameter sets in that file to the COPASI model. First argument is COPASI model, second is TSV file, third optional is a name for the parameter sets
 - COPASI files are those with the extension **.cps**
 - Files with **.xml** extension are [SBML](https://sbml.org/) L4V2 files
