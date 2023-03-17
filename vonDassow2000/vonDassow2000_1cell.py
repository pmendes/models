#!/usr/bin/python3
#
# vonDassow2000_1cell.py
# Creates a COPASI model of the von Dassow et al. (2000) model
# of segment polarity network for a single cell
#
# Written Dec 2022 - Mar 2023 by Pedro Mendes <pmendes@uchc.edu>
# this code is released under the MIT license, the COPASI model
# produced by this code is released under the Creative Commons
# CC0 1.0 license

import sys
if '../..' not in sys.path:
    sys.path.append('../..')

from basico import *
import numpy as np
import time
from datetime import date
import re

# MODEL VERSION
mversion = 4

# value for nearly zero concentrations (for stability)
zero_conc = 1e-20 #

# check if arguments were passed to size the grid
n = len(sys.argv)

# make sure there none or exactly 2 arguments
if(n > 2):
    # invalid number of arguments, complain and keep default
    print("\nUsage: vonDassow2000_1cell.py [alt]\n  (alt optional argument is for alternative rate laws)\n")
    exit()

altratelaws = False

if(n==2):
    # we got one argument, check for "alt" or error
    if sys.argv[1] == "alt":
        altratelaws = True
    else:
        altratelaws = False

if altratelaws:
    print("using alternative rate laws to avoid numerical errors\n")

# Comments for the whole model
model_notes=f'<body xmlns="http://www.w3.org/1999/xhtml"><h1>Segment polarity network model in one cell</h1><p>This is an implementation of the  model in von Dassow et al (2000) for a single cell. Note that the original paper describes an arrangement of several hexagonal cells. This model was created as a building block but may also be useful as a way to analyze the original network without cell-cell communication.</p><p>The model contains species that reside in the cell membrane (<i>EWG</i>, <i>PTC</i>, <i>HH</i>, and <i>PH</i>). Since the cells are hexagonal, the model partitions these species into 6 different pools, one per side of the hexagon. The model allows for these species to diffuse around the membrane, which is implemented (in the original and here) by transfer reactions between a pool and the two neighboring pools. The sides of the hexagon are labelled 1-6, with 1 at the base, and numbered clockwise (this is more important in the multicellular version of this model).</p><p>In the multicellular model, the reactions below include components from neighboring cells. Here we set those components to be the ones in this cell:<ul> <li>Induction of <i>en</i> by <i>EWG</i> (reaction <i>R01</i>) should be from all 6 neighboring cells, here it is <i>EWG</i> in this cell.</li> <li>The complex <i>PH</i> should be composed by <i>PTC</i> in this cell and <i>HH</i> from one neighboring cell (reactions <i>R29_i</i>). Here we use <i>HH</i> from this cell.</li> <li><i>EWG</i> could exchange with the neighboring cells, that reaction is ommitted here</li></ul></p><h2>Reference</h2><p>von Dassow G, Meir E, Munro EM, Odell GM (2000) <a href="https://doi.org/10.1038/35018085">The segment polarity network is a robust developmental module</a> Nature 406:188–192</p><hr width="70%" /><p>This COPASI file was created by Pedro Mendes with a python script, <i>vonDassow2000_1cell.py</i>, using <a href="https://github.com/copasi/basico">BasiCO, a simplified python interface to COPASI</a>.</p><p>version: {mversion}</p><hr width="70%" /><p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p></body>'

# Create the Segment Polarity Network model in COPASI format
new_model(name='Segment Polarity Network model in a single cell', time_unit='1', quantity_unit='1', length_unit='1',area_unit='1', volume_unit='1', notes=model_notes)

# Add some METADATA
set_miriam_annotation(created=date.today(), creators=[{'first_name': 'Pedro', 'last_name': 'Mendes', 'email': 'pmendes@uchc.edu', 'organization': 'University of Connecticut School of Medicine' }], references=[{'resource': 'DOI', 'id': '10.1038/35018085'}])

set_miriam_annotation(descriptions=[{'id': 'GO:0007367','qualifier': 'is','uri': 'http://identifiers.org/go/GO:0007367','resource': 'Gene Ontology'},{'id': '1830','qualifier': 'has taxon','uri': 'http://identifiers.org/taxonomy/1830','resource': 'Taxonomy'}])


# GLOBAL QUANTITIES (mostly constants, some assignments)
# these are the same for all cells
add_parameter('T0', initial_value=1.0, unit="1")
add_parameter('H_en', initial_value=7.0, unit="1")
add_parameter('H_EN', initial_value=15.0, unit="1")
add_parameter('H_wg', initial_value=7.0, unit="1")
add_parameter('H_IWG', initial_value=15.0, unit="1")
add_parameter('H_EWG', initial_value=15.0, unit="1") #note this parameter does not show in the SuppData for the main paper, but it became obvious from other papers that it was a mistake
add_parameter('H_ptc', initial_value=7.0, unit="1")
add_parameter('H_PTC', initial_value=15.0, unit="1")
add_parameter('H_ci', initial_value=7.0, unit="1")
add_parameter('H_CI', initial_value=15.0, unit="1")
add_parameter('H_hh', initial_value=7.0, unit="1")
add_parameter('H_HH', initial_value=15.0, unit="1")
add_parameter('H_PH', initial_value=15.0, unit="1")
add_parameter('C_CI', initial_value=0.1, unit="1")
add_parameter('kappa_WGen', initial_value=0.1, unit="1")
add_parameter('nu_WGen', initial_value=1, unit="1")
add_parameter('kappa_CNen', initial_value=0.1, unit="1")
add_parameter('nu_CNen', initial_value=1, unit="1")
add_parameter('kappa_CNwg', initial_value=0.1, unit="1")
add_parameter('nu_CNwg', initial_value=1, unit="1")
add_parameter('kappa_CIwg', initial_value=0.1, unit="1")
add_parameter('nu_CIwg', initial_value=1, unit="1")
add_parameter('kappa_WGwg', initial_value=0.1, unit="1")
add_parameter('nu_WGwg', initial_value=1, unit="1")
add_parameter('alpha_CIwg', initial_value=1, unit="1")
add_parameter('alpha_WGwg', initial_value=1, unit="1")
add_parameter('kappa_CNptc', initial_value=0.1, unit="1")
add_parameter('nu_CNptc', initial_value=1, unit="1")
add_parameter('kappa_CIptc', initial_value=0.1, unit="1")
add_parameter('nu_CIptc', initial_value=1, unit="1")
add_parameter('kappa_Bci', initial_value=0.1, unit="1")
add_parameter('nu_Bci', initial_value=1, unit="1")
add_parameter('kappa_ENci', initial_value=0.1, unit="1")
add_parameter('nu_ENci', initial_value=1, unit="1")
add_parameter('kappa_ENhh', initial_value=0.1, unit="1")
add_parameter('nu_ENhh', initial_value=1, unit="1")
add_parameter('kappa_CNhh', initial_value=0.1, unit="1")
add_parameter('nu_CNhh', initial_value=1, unit="1")
add_parameter('kappa_PTCCI', initial_value=0.1, unit="1")
add_parameter('nu_PTCCI', initial_value=1, unit="1")
add_parameter('r_ExoWG', initial_value=0.1, unit="1")
add_parameter('r_EndoWG', initial_value=0.001, unit="1")
add_parameter('r_MxferWG', initial_value=0.1, unit="1")
add_parameter('r_LMxferWG', initial_value=0.1, unit="1")
add_parameter('r_LMxferPTC', initial_value=0.1, unit="1")
add_parameter('r_LMxferHH', initial_value=0.1, unit="1")
add_parameter('kappa_PTCHH', initial_value=0.1, unit="1")
add_parameter('PTC_0', initial_value=1000, unit="1")
add_parameter('HH_0', initial_value=1000, unit="1")

for den in {'H_en','H_EN','H_wg','H_IWG','H_EWG','H_ptc','H_PTC','H_ci','H_CI','H_hh','H_HH','H_PH'}:
    pname = "T0/{}".format(den)
    fexpression = "Values[T0] / Values[{}]".format(den)
    add_parameter(name=pname, status='assignment', expression=fexpression, unit="1")

add_parameter('T0/6H_HH', status='assignment', unit="1", expression="Values[T0] / ( 6 * Values[H_HH] )")
add_parameter('T0/6H_PTC', status='assignment', unit="1", expression="Values[T0] / ( 6 * Values[H_PTC] )")
add_parameter('T0.r_ExoWG/6', status='assignment', unit="1", expression="Values[T0] * Values[r_ExoWG] / 6")
add_parameter('T0.r_EndoWG', status='assignment', unit="1", expression="Values[T0] * Values[r_EndoWG]")
add_parameter('T0.C_CI', status='assignment', unit="1", expression="Values[T0] * Values[C_CI]")
add_parameter('T0.r_MxferWG', status='assignment', unit="1", expression="Values[T0] * Values[r_MxferWG]")
add_parameter('T0.r_LMxferWG', status='assignment', unit="1", expression="Values[T0] * Values[r_LMxferWG]")
add_parameter('T0.r_LMxferHH', status='assignment', unit="1", expression="Values[T0] * Values[r_LMxferHH]")
add_parameter('T0.kappa_PTCHH.HH_0', status='assignment', unit="1", expression="Values[T0] * Values[kappa_PTCHH] * Values[HH_0]")
add_parameter('T0.kappa_PTCHH.PTC_0', status='assignment', unit="1", expression="Values[T0] * Values[kappa_PTCHH] * Values[PTC_0]")

# Add kinetic rate laws needed
# optionally the user can select alternative rate laws where any base raised to a power is substituted by
# max(1e-80, base) this allows avoiding numerical errors that appear when the exponent is fractional and
# the base is very close to zero. In COPASI using the original rate laws generates about 3-4% errors
# when sampling parameters randomly (for Table 1 of the original paper). von Dassow et al. never mention
# any problems, perhaps their own integrator avoids these problems?

nsuf=""
if altratelaws:
    f1="V*((M1*max(1e-80,(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1)/(k1^h1+M1*max(1e-80,(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1))"
    f2="V*((alpha1*((max(1e-80,M1*(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1)/(k1^h1+max(1e-80,M1*(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1))+alpha3*(max(1e-80,M3)^h3)/(k3^h3+max(1e-80,M3)^h3))/(1+alpha1*((max(1e-80,M1*(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1)/(k1^h1+max(1e-80,M1*(1-((max(1e-80,M2)^h2)/(k2^h2+max(1e-80,M2)^h2))))^h1))+alpha3*(max(1e-80,M3)^h3)/(k3^h3+max(1e-80,M3)^h3)))"
    f3="V*S*(max(1e-80,M)^h)/(k^h+max(1e-80,M)^h)"
    nsuf=" (guarded)"
else:
    f1="V*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))"
    f2="V*((alpha1 * ((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1 + M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3))/(1+alpha1*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3)))"
    f3="V*S*(M^h)/(k^h+M^h)"

add_function(name='translation', type='general',
             infix='k*mRNA',
             mapping={ 'k': 'parameter', 'mRNA': 'modifier'})

add_function(name=f'transcription inducer-repressor pair{nsuf}', type='general',
             infix=f1,
             mapping={ 'V': 'parameter', 'M1': 'modifier', 'M2': 'modifier', 'k1': 'parameter', 'h1': 'parameter', 'k2': 'parameter', 'h2': 'parameter'})

add_function(name=f'transcription inducer-repressor pair + inducer{nsuf}', type='general',
             infix=f2,
             mapping={ 'V': 'parameter', 'M1': 'modifier', 'M2': 'modifier', 'M3': 'modifier', 'alpha1': 'parameter', 'alpha3': 'parameter', 'k1': 'parameter', 'h1': 'parameter', 'k2': 'parameter', 'h2': 'parameter', 'k3': 'parameter', 'h3': 'parameter'})

add_function(name=f'first order w/ activator{nsuf}', type='irreversible',
             infix=f3,
             mapping={ 'V': 'parameter', 'S': 'substrate', 'M': 'modifier', 'k': 'parameter', 'h': 'parameter'})

add_function(name='Uni-molecular transport', type='irreversible',
             infix='Vol*k1*S',
             mapping={ 'Vol': 'volume', 'k1': 'parameter', 'S': 'substrate'})

add_function(name='Pseudo bi-molecular reaction with transport', type='irreversible',
             infix='k1*Vol1*S1*Vol2*S2',
             mapping={ 'k1': 'parameter', 'Vol1': 'volume', 'S1': 'substrate', 'Vol2': 'volume', 'S2': 'modifier'})

# we need only one compartment for this cell, but we create one other for all external species
add_compartment(name="cell")
add_compartment(name="external")

# species and reactions

# we will use the first initial condition in row 1 of Table 1
iconc = 0.1    # initial concentration other than zero
econc = 0.2    # initial concentration for externals

# add species and initial concentrations
add_species('en', compartment_name='cell', initial_concentration=iconc)
add_species('EN', compartment_name='cell', initial_concentration=zero_conc)
add_species('ci', compartment_name='cell', initial_concentration=iconc)
add_species('CI', compartment_name='cell', initial_concentration=zero_conc)
add_species('CN', compartment_name='cell', initial_concentration=zero_conc)
add_species('hh', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH1', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH2', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH3', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH4', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH5', compartment_name='cell', initial_concentration=zero_conc)
add_species('HH6', compartment_name='cell', initial_concentration=zero_conc)
add_species('ptc', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC1', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC2', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC3', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC4', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC5', compartment_name='cell', initial_concentration=zero_conc)
add_species('PTC6', compartment_name='cell', initial_concentration=zero_conc)
add_species('wg', compartment_name='cell', initial_concentration=zero_conc)
add_species('IWG', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG1', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG2', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG3', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG4', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG5', compartment_name='cell', initial_concentration=zero_conc)
add_species('EWG6', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH1', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH2', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH3', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH4', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH5', compartment_name='cell', initial_concentration=zero_conc)
add_species('PH6', compartment_name='cell', initial_concentration=zero_conc)
add_species('B', compartment_name='cell', initial_concentration=0.4, status='fixed')

# these are the external species from neighboring cells
add_species('EWG1_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('EWG2_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('EWG3_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('EWG4_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('EWG5_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('EWG6_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH1_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH2_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH3_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH4_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH5_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('HH6_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC1_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC2_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC3_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC4_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC5_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PTC6_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH1_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH2_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH3_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH4_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH5_ext', compartment_name='external', initial_concentration=econc, status='fixed')
add_species('PH6_ext', compartment_name='external', initial_concentration=econc, status='fixed')

# add PTC total
add_species('PTC_T', compartment_name='cell', status='assignment', expression='[PTC1] + [PTC2] + [PTC3] + [PTC4] + [PTC5] + [PTC6]', unit="1")
# HH total
add_species('HH_T', compartment_name='cell', status='assignment', expression='[HH1] + [HH2] + [HH3] + [HH4] + [HH5] + [HH6]', unit="1")
# PH total
add_species('PH_T', compartment_name='cell', status='assignment', expression='[PH1] + [PH2] + [PH3] + [PH4] + [PH5] + [PH6]', unit="1")
# EWG_T is the sum of the EWGi neighboring sides
set_species(name='EWG_T', compartment_name='cell', status='assignment', expression='[EWG1_ext] + [EWG2_ext] + [EWG3_ext] + [EWG4_ext] + [EWG5_ext] + [EWG6_ext]', unit="1")

# REACTIONS
add_reaction(name='R01', scheme='-> en; EWG_T CN', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': 'EWG_T', 'M2': 'CN', 'V': 'T0/H_en', 'k1': 'kappa_WGen', 'h1': 'nu_WGen', 'k2': 'kappa_CNen', 'h2': 'nu_CNen'})

add_reaction(name='R02', scheme='en ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_en'})

add_reaction(name='R03', scheme='-> EN; en', function='translation', mapping={'k': 'T0/H_EN', 'mRNA': 'en'})

add_reaction(name='R04', scheme='EN ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EN'})

add_reaction(name=f'R05', scheme='-> ci; B EN', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': 'B', 'M2': 'EN', 'V': 'T0/H_ci', 'k1': 'kappa_Bci', 'h1': 'nu_Bci', 'k2': 'kappa_ENci', 'h2': 'nu_ENci'})

add_reaction(name='R06', scheme='ci ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_ci'})

add_reaction(name='R07', scheme='-> CI; ci', function='translation', mapping={'k': 'T0/H_CI', 'mRNA': 'ci'})

add_reaction(name='R08', scheme='CI ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI'})

add_reaction(name='R09', scheme='CI -> CN; PTC_T', function=f'first order w/ activator{nsuf}', mapping={'M': 'PTC_T', 'V': 'T0.C_CI', 'k': 'kappa_PTCCI', 'h': 'nu_PTCCI'})

add_reaction(name='R10', scheme='CN ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI'})

add_reaction(name='R11', scheme='-> hh; EN CN', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': 'EN', 'M2': 'CN', 'V': 'T0/H_hh', 'k1': 'kappa_ENhh', 'h1': 'nu_ENhh', 'k2': 'kappa_CNhh', 'h2': 'nu_CNhh'})

add_reaction(name='R12', scheme='hh ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_hh'})

add_reaction(name='R13_1', scheme='-> HH1; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_2', scheme='-> HH2; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_3', scheme='-> HH3; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_4', scheme='-> HH4; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_5', scheme='-> HH5; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_6', scheme='-> HH6; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})

add_reaction(name='R14_1', scheme='HH1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
add_reaction(name='R14_2', scheme='HH2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
add_reaction(name='R14_3', scheme='HH3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
add_reaction(name='R14_4', scheme='HH4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
add_reaction(name='R14_5', scheme='HH5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
add_reaction(name='R14_6', scheme='HH6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})

add_reaction(name='R15', scheme='-> ptc; CI CN', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': 'CI', 'M2': 'CN', 'V': 'T0/H_ptc', 'k1': 'kappa_CIptc', 'h1': 'nu_CIptc', 'k2': 'kappa_CNptc', 'h2': 'nu_CNptc'})

add_reaction(name='R16', scheme='ptc ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_ptc'})

add_reaction(name='R17_1', scheme='-> PTC1; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})
add_reaction(name='R17_2', scheme='-> PTC2; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})
add_reaction(name='R17_3', scheme='-> PTC3; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})
add_reaction(name='R17_4', scheme='-> PTC4; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})
add_reaction(name='R17_5', scheme='-> PTC5; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})
add_reaction(name='R17_6', scheme='-> PTC6; ptc', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': 'ptc'})

add_reaction(name='R18_1', scheme='PTC1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
add_reaction(name='R18_2', scheme='PTC2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
add_reaction(name='R18_3', scheme='PTC3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
add_reaction(name='R18_4', scheme='PTC4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
add_reaction(name='R18_5', scheme='PTC5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
add_reaction(name='R18_6', scheme='PTC6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})

add_reaction(name='R19', scheme='-> wg; CI CN IWG', function=f'transcription inducer-repressor pair + inducer{nsuf}', mapping={'M1': 'CI', 'M2': 'CN', 'M3': 'IWG', 'V': 'T0/H_wg', 'alpha1': 'alpha_CIwg', 'alpha3': 'alpha_WGwg',  'k1': 'kappa_CIwg', 'h1': 'nu_CIwg', 'k2': 'kappa_CNwg', 'h2': 'nu_CNwg', 'k3': 'kappa_WGwg', 'h3': 'nu_WGwg' })

add_reaction(name='R20', scheme='wg ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_wg'})

add_reaction(name='R21', scheme='-> IWG; wg', function='translation', mapping={'k': 'T0/H_IWG', 'mRNA': 'wg'})

add_reaction(name='R22',scheme='IWG ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})

add_reaction(name='R23_1', scheme='IWG -> EWG1', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
add_reaction(name='R23_2', scheme='IWG -> EWG2', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
add_reaction(name='R23_3', scheme='IWG -> EWG3', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
add_reaction(name='R23_4', scheme='IWG -> EWG4', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
add_reaction(name='R23_5', scheme='IWG -> EWG5', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
add_reaction(name='R23_6', scheme='IWG -> EWG6', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})

add_reaction(name='R24_1', scheme='EWG1 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
add_reaction(name='R24_2', scheme='EWG2 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
add_reaction(name='R24_3', scheme='EWG3 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
add_reaction(name='R24_4', scheme='EWG4 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
add_reaction(name='R24_5', scheme='EWG5 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
add_reaction(name='R24_6', scheme='EWG6 -> IWG', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})

add_reaction(name='R25_1', scheme='EWG1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
add_reaction(name='R25_2', scheme='EWG2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
add_reaction(name='R25_3', scheme='EWG3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
add_reaction(name='R25_4', scheme='EWG4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
add_reaction(name='R25_5', scheme='EWG5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
add_reaction(name='R25_6', scheme='EWG6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})

add_reaction(name='R26_16', scheme='EWG1 -> EWG6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_61', scheme='EWG6 -> EWG1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_12', scheme='EWG1 -> EWG2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_21', scheme='EWG2 -> EWG1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_23', scheme='EWG2 -> EWG3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_32', scheme='EWG3 -> EWG2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_34', scheme='EWG3 -> EWG4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_43', scheme='EWG4 -> EWG3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_45', scheme='EWG4 -> EWG5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_54', scheme='EWG5 -> EWG4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_56', scheme='EWG5 -> EWG6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R26_65', scheme='EWG6 -> EWG5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})

add_reaction(name='R27_16', scheme='PTC1 -> PTC6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_61', scheme='PTC6 -> PTC1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_12', scheme='PTC1 -> PTC2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_21', scheme='PTC2 -> PTC1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_23', scheme='PTC2 -> PTC3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_32', scheme='PTC3 -> PTC2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_34', scheme='PTC3 -> PTC4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_43', scheme='PTC4 -> PTC3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_45', scheme='PTC4 -> PTC5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_54', scheme='PTC5 -> PTC4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_56', scheme='PTC5 -> PTC6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
add_reaction(name='R27_65', scheme='PTC6 -> PTC5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})

add_reaction(name='R28_16', scheme='HH1 -> HH6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_61', scheme='HH6 -> HH1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_12', scheme='HH1 -> HH2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_21', scheme='HH2 -> HH1', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_23', scheme='HH2 -> HH3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_32', scheme='HH3 -> HH2', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_34', scheme='HH3 -> HH4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_43', scheme='HH4 -> HH3', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_45', scheme='HH4 -> HH5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_54', scheme='HH5 -> HH4', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_56', scheme='HH5 -> HH6', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
add_reaction(name='R28_65', scheme='HH6 -> HH5', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})

add_reaction(name='R29_1', scheme='PH1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R29_2', scheme='PH2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R29_3', scheme='PH3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R29_4', scheme='PH4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R29_5', scheme='PH5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R29_6', scheme='PH6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})


# Now we add reactions between this cell and its neighbors.
# This is not complicated since we are one cell only, so no need to check whether we are odd or even...
# We set up external species (fixed) to represent the species of the neighbor cells; they will be named
# only by the side number of this cell, meaning "the external species confronting this side of my cell"
# eg HH1_ext or EWG2_ext

# R30a is the part of the reactants (this reaction needs separation because of the adimensionalization scheme)
add_reaction(name='R30a_1', scheme='PTC1 -> PH1', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH1_ext', 'Vol2': 'external'})
add_reaction(name='R30a_2', scheme='PTC2 -> PH2', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH2_ext', 'Vol2': 'external'})
add_reaction(name='R30a_3', scheme='PTC3 -> PH3', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH3_ext', 'Vol2': 'external'})
add_reaction(name='R30a_4', scheme='PTC4 -> PH4', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH4_ext', 'Vol2': 'external'})
add_reaction(name='R30a_5', scheme='PTC5 -> PH5', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH5_ext', 'Vol2': 'external'})
add_reaction(name='R30a_6', scheme='PTC6 -> PH6', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': 'cell', 'S2': 'HH6_ext', 'Vol2': 'external'})
# we don't need a R30b_1 converting the HH1_ext because it is fixed and has no ODE

add_reaction(name='R31a_1', scheme='EWG1 -> EWG1_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31a_2', scheme='EWG2 -> EWG2_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31a_3', scheme='EWG3 -> EWG3_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31a_4', scheme='EWG4 -> EWG4_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31a_5', scheme='EWG5 -> EWG5_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31a_6', scheme='EWG6 -> EWG6_ext', function='Uni-molecular transport', mapping={'Vol': 'cell', 'k1': 'T0.r_MxferWG'})

# here we have to add the reaction from the external side, since we don't iterate over "all" cells
add_reaction(name='R31b_1', scheme='EWG1_ext -> EWG1', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31b_2', scheme='EWG2_ext -> EWG2', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31b_3', scheme='EWG3_ext -> EWG3', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31b_4', scheme='EWG4_ext -> EWG4', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31b_5', scheme='EWG5_ext -> EWG5', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})
add_reaction(name='R31b_6', scheme='EWG6_ext -> EWG6', function='Uni-molecular transport', mapping={'Vol': 'external', 'k1': 'T0.r_MxferWG'})

# SETUP TASKS, PLOTS AND REPORTS

# set up the time course parameters, we need to run to time 1100
set_task_settings('Time-Course', {'scheduled': True, 'problem': {'StepNumber': 55, 'Duration': 1100.0, 'StepSize': 20 }})

#PLOTS
# time course plot for mRNAs , keep them inactive so user can activate at will
pcurves = []
for pvar in {'hh', 'ci', 'en', 'wg', 'ptc'}:
    pcurves.append({'name': f'{pvar}', 'channels': ['Time', f'[{pvar}]']})
add_plot( 'mRNA', tasks='Scan, Time-Course', curves=pcurves, active=False)
# time course plot for proteins
pcurves = []
for pvar in {'EN', 'CI', 'CN', 'IWG', 'HH_T', 'EWG_T', 'PTC_T', 'PH_T'}:
    pcurves.append({'name': f'{pvar}', 'channels': ['Time', f'[{pvar}]']})
add_plot( 'proteins', tasks='Scan, Time-Course', curves=pcurves, active=False)
# time course detail for membrane proteins
pcurves = []
for pvar in {'EWG1', 'EWG2', 'EWG3', 'EWG4', 'EWG5', 'EWG6', 'PTC1', 'PTC2', 'PTC3', 'PTC4', 'PTC5', 'PTC6', 'HH1', 'HH2', 'HH3', 'HH4', 'HH5', 'HH6', 'PH1', 'PH2', 'PH3', 'PH4', 'PH5', 'PH6'}:
    pcurves.append({'name': f'{pvar}', 'channels': ['Time', f'[{pvar}]']})
add_plot( 'membrane proteins', tasks='Scan, Time-Course', curves=pcurves, active=False)


#REPORTS
# add a report for all steady state concentrations
rheader = []
rfooter = []
# add simple species (those that are one per cell)
for pvar in ['hh', 'ci', 'en', 'wg', 'ptc', 'IWG', 'EN', 'CI', 'CN', 'PH', 'EWG_T', 'PTC_T']:
    rheader.append(wrap_copasi_string(f'[{pvar}]'))
    rfooter.append(f'[{pvar}]')
# add membrane species, those that have 6 pools per cell
for pvar in ['EWG', 'HH', 'PH', 'PTC']:
    for s in range(1, 7):
        rheader.append(wrap_copasi_string(f'[{pvar}{s}]'))
        rfooter.append(f'[{pvar}{s}]')
add_report('SS Concentrations', task=T.STEADY_STATE, header=rheader, footer=rfooter);
assign_report('SS Concentrations', task=T.STEADY_STATE, filename='ssconcs.tsv', append=True, confirm_overwrite=False)

# add a report for all time course scans
rheader = []
rbody = []
# add the scoring function
rheader.append(wrap_copasi_string('CPUt'))
rbody.append("CN=Root,Vector=TaskList[Scan],Timer=CPU Time")
for parm in ['H_en','H_EN','H_wg','H_IWG','H_EWG','H_ptc','H_PTC','H_ci','H_CI','H_hh','H_HH','H_PH']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
for parm in ['kappa_WGen','kappa_CNen','kappa_CNwg','kappa_CIwg','kappa_WGwg','kappa_CNptc','kappa_CIptc','kappa_Bci','kappa_ENci','kappa_ENhh','kappa_CNhh','kappa_PTCCI','kappa_PTCHH']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
for parm in ['nu_CNen','nu_CNwg','nu_CIwg','nu_WGwg','nu_WGen','nu_CNptc','nu_CIptc','nu_Bci','nu_ENci','nu_ENhh','nu_CNhh','nu_PTCCI']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
for parm in ['alpha_CIwg','alpha_WGwg']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
for parm in ['r_ExoWG','r_EndoWG','r_MxferWG','r_LMxferWG','r_LMxferPTC','r_LMxferHH']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
for parm in ['C_CI', 'PTC_0', 'HH_0']:
    rheader.append(wrap_copasi_string(parm))
    rbody.append(f'Values[{parm}]')
add_report('Parameter scan report', task=T.SCAN, header=rheader, body=rbody);
assign_report('Parameter scan report', task=T.SCAN, filename='scanparams.tsv', append=False, confirm_overwrite=False)

# Setting up a random sampling of the 48 parameters and an optimization by varying the same
# 48 parameters, assign it to random search; we don't have a good objective function so we set 1 here
# user can change that later
set_scan_settings(subtask='Time-Course', output_during_subtask=False, continue_on_error=True )
# The number of repeats can easily be changed by the user in the COPASI GUI, we set it to 10 here
add_scan_item(type='repeat', num_steps=10)
parml = []
set_opt_settings({'expression': '1', 'subtask': T.TIME_COURSE, 'problem': {'Maximize': False,
  'Randomize Start Values': True, 'Calculate Statistics': False}, 'method': {'name': PE.RANDOM_SEARCH}})
# add the 48 parameters, min/max are per Table S1, except CI, PTC_0 and HH_0 which are not documented there
# PTC_0 and HH_0 are documented in Kim KJ (2009) Meth. Mol. Biol. 500:169–200 doi:10.1007/978-1-59745-525-1_6
# it's mentioned in this paper that half-lives and Hill coefficients are varied in linear space
for parm in ['H_en','H_EN','H_wg','H_IWG','H_EWG','H_ptc','H_PTC','H_ci','H_CI','H_hh','H_HH','H_PH']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=False, min=5, max=100)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':5,'upper':100})
for parm in ['kappa_WGen','kappa_CNen','kappa_CNwg','kappa_CIwg','kappa_WGwg','kappa_CNptc','kappa_CIptc','kappa_Bci','kappa_ENci','kappa_ENhh','kappa_CNhh','kappa_PTCCI','kappa_PTCHH']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=True, min=1e-3, max=1)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':1e-3,'upper':1})
for parm in ['nu_CNen','nu_CNwg','nu_CIwg','nu_WGwg','nu_WGen','nu_CNptc','nu_CIptc','nu_Bci','nu_ENci','nu_ENhh','nu_CNhh','nu_PTCCI']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=False, min=1, max=10)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':1,'upper':10})
for parm in ['alpha_CIwg','alpha_WGwg']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=True, min=1, max=10)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':1,'upper':10})
for parm in ['r_ExoWG','r_EndoWG','r_MxferWG','r_LMxferWG','r_LMxferPTC','r_LMxferHH','C_CI']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=True, min=1e-3, max=1)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':1e-3,'upper':1})
for parm in ['PTC_0', 'HH_0']:
    add_scan_item(item=f'Values[{parm}].InitialValue', type='random', distribution='uniform', log=True, min=1, max=1e3)
    parml.append({'name': f'Values[{parm}].InitialValue','lower':1,'upper':1e3})
set_opt_parameters( parml )


# SAVE

cpsfile = f'vonDassow2000_1cell.cps'
#sbmlfile = f'vonDassow2000_1cell.xml'

# save the COPASI model
save_model(cpsfile, overwrite=True)

# and an SBML version but this could be done in the GUI...
#save_model(sbmlfile, type='sbml')

