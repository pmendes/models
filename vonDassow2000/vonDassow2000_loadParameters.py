#!/usr/bin/python3
#
# vonDassow2000_loadParameters.py
# This file takes a von Dassow et al (2000) model of segment
# polarity network built with vonDassow2000.py and a tsv file
# with parameters, and adds each line as a new parameter set
#
# Written in Feb 2023 by Pedro Mendes <pmendes@uchc.edu>
# this code is released under the MIT license

import sys
import csv
import re
from pathlib import Path
if '../..' not in sys.path:
    sys.path.append('../..')

from basico import *
import numpy as np
import time
from datetime import date
#import matplotlib.pyplot as plt
#%matplotlib inline

# highest version that this file can deal with
mversion = 4

# check arguments
n = len(sys.argv)

# make sure there are at least 2 arguments
if(n <= 2):
    # invalid number of arguments, complain and keep default
    print("\nUsage: vonDassow2000_loadParameters.py modelfile.cps datafile.tsv [setname]\n")
    exit()
# get the filenames
modelfile = sys.argv[1]
datafile = sys.argv[2]
if(n>3):
    setname = sys.argv[3]
else:
    fname = Path(datafile)
    setname = fname.with_suffix('')

# load the model
load_model(modelfile)

# check that we can work with this model version
vrs = re.search(r"<p>version: (\d+)\.\d+x\d+", model_info.get_notes())
# if no version then we quit
if( vrs==None ):
    print(f'\n{modelfile} does not seem to be a compatible model created by vonDassow2000.py\n')
    exit()
fversion = int(vrs.group(1))
# give warnings if version is outside our domain
if fversion < 1:
    print(f'\n{modelfile} has a strange version number ({fversion}), this may not work well...\n')
if fversion > mversion:
    print(f'\n{modelfile} was created with a version more recent that this file ({fversion} > {mversion}), this may not work well...\n')

# load the parameter set data file
index = 0
with open(datafile) as fd:
    psets = csv.DictReader(fd, delimiter="\t")
    for row in psets:
        # set each of the parameters by name
        for par in {'H_ci', 'H_wg', 'H_EWG', 'H_PTC', 'H_IWG', 'H_PH', 'H_HH', 'H_ptc', 'H_hh', 'H_en', 'H_EN', 'H_CI', 'kappa_CIwg', 'kappa_Bci', 'kappa_PTCHH', 'kappa_ENhh', 'kappa_CNptc', 'kappa_CIptc', 'kappa_WGen', 'kappa_PTCCI', 'nu_WGen', 'kappa_CNhh', 'kappa_CNwg', 'kappa_WGwg', 'kappa_CNen', 'kappa_ENci', 'nu_CNwg', 'nu_PTCCI', 'nu_CNen', 'nu_WGwg', 'nu_ENhh', 'nu_CNhh', 'nu_CIptc', 'nu_ENci', 'nu_CIwg', 'nu_CNptc', 'nu_Bci', 'alpha_WGwg', 'alpha_CIwg', 'r_LMxferPTC', 'r_LMxferHH', 'r_ExoWG', 'r_MxferWG', 'r_LMxferWG', 'r_EndoWG', 'C_CI', 'PTC_0', 'HH_0'}:
            if par in row:
                set_parameters(name=par, exact=True, initial_value= row[par])
        index += 1
        # add this as a parameter set
        add_parameter_set(f'{setname} {index}')

# write a new copasi file, prefix name with setname.
newfile = f'{setname}.{modelfile}'
save_model(newfile, overwrite=False)
