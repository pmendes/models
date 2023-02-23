# von Dassow et al. (2000) model of segment polarity network

This contains implementations of the segment polarity network of [von Dassow et. al (2000)](https://doi.org/10.1038/35018085) in COPASI. Model construction was done with python scripts using [BasiCO](https://github.com/copasi/basico), the scripts are included here.

 - **vonDassow2000_1cell.py** constructs a COPASI model that contains the interaction network in a single cell
 -  **vonDassow2000.py** constructs a COPASI model with an array of hexagonal cells of any dimensions given two arguments on the command line (rows and colums). If arguments are missing it will default to an 8x2 grid
 - COPASI files are those with the extension **.cps**
 - Files with **.xml** extension are [SBML](https://sbml.org/) L4V2 files
