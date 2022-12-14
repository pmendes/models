#!/usr/bin/python3
#
# vonDassow2000_1cell.py
# Creates a COPASI model of the von Dassow et al. (2000) model
# of segment polarity network for a single cell

import sys
if '../..' not in sys.path:
    sys.path.append('../..')

from basico import *
import numpy as np
import time
from datetime import date
#import matplotlib.pyplot as plt
#%matplotlib inline

# Comments for the whole model
model_notes='<body xmlns="http://www.w3.org/1999/xhtml"><h1>Segment polarity network model  in one cell</h1><p>This is an implementation of the  model in von Dassow et al (2000) for a single cell. Note that the original paper describes an arrangement of several hexagonal cells. This model was created as a building block but may also be useful as a way to analyze the original network without cell-cell communication.</p><p>The model contains species that reside in the cell membrane (<i>EWG</i>, <i>PTC</i>, <i>HH</i>, and <i>PH</i>). Since the cells are hexagonal, the model partitions these species into 6 different pools, one per side of the hexagon. The model allows for these species to diffuse around the membrane, which is implemented (in the original and here) by transfer reactions between a pool and the two neighboring pools. The sides of the hexagon are labelled 1-6, with 1 at the base, and numbered clockwise (this is more important in the multicellular version of this model).</p><p>In the multicellular model, the reactions below include components from neighboring cells. Here we set those components to be the ones in this cell:<ul> <li>Induction of <i>en</i> by <i>EWG</i> (reaction <i>R01</i>) should be from all 6 neighboring cells, here it is <i>EWG</i> in this cell.</li> <li>The complex <i>PH</i> should be composed by <i>PTC</i> in this cell and <i>HH</i> from one neighboring cell (reactions <i>R29_i</i>). Here we use <i>HH</i> from this cell.</li> <li><i>EWG</i> could exchange with the neighboring cells, that reaction is ommitted here</li></ul> </p><p>von Dassow G, Meir E, Munro EM, Odell GM (2000) <a href="https://doi.org/10.1038/35018085">The segment polarity network is a robust developmental module</a> Nature 406:188–192</p><hr /><p>This COPASI file was created by Pedro Mendes with a python script, <i>vonDassowModelSingleCell.py</i>, using <a href="https://github.com/copasi/basico">BasiCO, a simplified python interface to COPASI</a>.</p><p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p></body>'

# Let's start by creating a single cell Segment Polarity Network
new_model(name='Segment Polarity Network model in a single cell', time_unit='1', quantity_unit='1', length_unit='1',area_unit='1', volume_unit='1', notes=model_notes)

# these reactions are happening in a cell
add_compartment(name='cell')

# Required kinetic rate laws
add_function(name='translation', type='general',
             infix='k*mRNA',
             mapping={ 'k': 'parameter', 'mRNA': 'modifier'})

add_function(name='transcription inducer-repressor pair', type='general',
             infix='V*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))',
             mapping={ 'V': 'parameter', 'M1': 'modifier', 'M2': 'modifier', 'k1': 'parameter', 'h1': 'parameter', 'k2': 'parameter', 'h2': 'parameter'})

add_function(name='transcription inducer-repressor pair + inducer', type='general',
             infix='V*((alpha1 * ((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1 + M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3))/(1+alpha1*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3)))',
             mapping={ 'V': 'parameter', 'M1': 'modifier', 'M2': 'modifier', 'M3': 'modifier', 'alpha1': 'parameter', 'alpha3': 'parameter', 'k1': 'parameter', 'h1': 'parameter', 'k2': 'parameter', 'h2': 'parameter', 'k3': 'parameter', 'h3': 'parameter'})

add_function(name='first order w/ activator', type='irreversible',
             infix='V*S*(M^h)/(k^h+M^h)',
             mapping={ 'V': 'parameter', 'S': 'substrate', 'M': 'modifier', 'k': 'parameter', 'h': 'parameter'})

# GLOBAL QUANTITIES (mostly constants, some assignments)
add_parameter('T0', initial_value=1.0)
add_parameter('H_en', initial_value=7.0)
add_parameter('H_EN', initial_value=15.0)
add_parameter('H_wg', initial_value=7.0)
add_parameter('H_IWG', initial_value=15.0)
add_parameter('H_ptc', initial_value=7.0)
add_parameter('H_PTC', initial_value=15.0)
add_parameter('H_ci', initial_value=7.0)
add_parameter('H_CI', initial_value=15.0)
add_parameter('H_hh', initial_value=7.0)
add_parameter('H_HH', initial_value=15.0)
add_parameter('H_PH', initial_value=15.0)
add_parameter('C_CI', initial_value=0.1)
add_parameter('kappa_WGen', initial_value=0.1)
add_parameter('nu_WGen', initial_value=1)
add_parameter('kappa_CNen', initial_value=0.1)
add_parameter('nu_CNen', initial_value=1)
add_parameter('kappa_CNwg', initial_value=0.1)
add_parameter('nu_CNwg', initial_value=1)
add_parameter('kappa_CIwg', initial_value=0.1)
add_parameter('nu_CIwg', initial_value=1)
add_parameter('kappa_WGwg', initial_value=0.1)
add_parameter('nu_WGwg', initial_value=1)
add_parameter('alpha_CIwg', initial_value=1)
add_parameter('alpha_WGwg', initial_value=1)
add_parameter('kappa_CNptc', initial_value=0.1)
add_parameter('nu_CNptc', initial_value=1)
add_parameter('kappa_CIptc', initial_value=0.1)
add_parameter('nu_CIptc', initial_value=1)
add_parameter('kappa_Bci', initial_value=0.1)
add_parameter('nu_Bci', initial_value=1)
add_parameter('kappa_ENci', initial_value=0.1)
add_parameter('nu_ENci', initial_value=1)
add_parameter('kappa_ENhh', initial_value=0.1)
add_parameter('nu_ENhh', initial_value=1)
add_parameter('kappa_CNhh', initial_value=0.1)
add_parameter('nu_CNhh', initial_value=1)
add_parameter('kappa_PTCCI', initial_value=0.1)
add_parameter('nu_PTCCI', initial_value=1)
add_parameter('r_ExoWG', initial_value=0.1)
add_parameter('r_EndoWG', initial_value=0.001)
add_parameter('r_LMxferWG', initial_value=0.1)
add_parameter('r_LMxferPTC', initial_value=0.1)
add_parameter('r_LMxferHH', initial_value=0.1)
add_parameter('kappa_PTCHH', initial_value=0.1)
# NOTE: the original model has both PTC_0 and HH_0, however they cannot be different in this formulation with ODEs based on reactions, so we are restricted to the situation where PTC_0 = HH_0 and thus we only use HH_0
add_parameter('HH_0', initial_value=1000)

for den in {'H_en','H_EN','H_wg','H_IWG','H_ptc','H_PTC','H_ci','H_CI','H_hh','H_HH','H_PH'}:
    pname = "T0/{}".format(den)
    fexpression = "Values[T0] / Values[{}]".format(den)
    add_parameter(name=pname, status='assignment', expression=fexpression)

add_parameter('T0/6H_HH', status='assignment', expression="Values[T0] / ( 6 * Values[H_HH] )")
add_parameter('T0/6H_PTC', status='assignment', expression="Values[T0] / ( 6 * Values[H_PTC] )")
add_parameter('T0.r_ExoWG/6', status='assignment', expression="Values[T0] * Values[r_ExoWG] / 6")
add_parameter('T0.r_EndoWG', status='assignment', expression="Values[T0] * Values[r_EndoWG]")
add_parameter('T0.C_CI', status='assignment', expression="Values[T0] * Values[C_CI]")
add_parameter('T0.r_LMxferWG', status='assignment', expression="Values[T0] * Values[r_LMxferWG]")
add_parameter('T0.r_LMxferHH', status='assignment', expression="Values[T0] * Values[r_LMxferHH]")
add_parameter('T0.kappa_PTCHH.HH_0', status='assignment', expression="Values[T0] * Values[kappa_PTCHH] * Values[HH_0]")

# SPECIES
add_species('en', initial_concentration=1)
add_species('EN', initial_concentration=1)
add_species('ci', initial_concentration=0)
add_species('CI', initial_concentration=0)
add_species('CN', initial_concentration=0)
add_species('hh', initial_concentration=0)
add_species('HH1', initial_concentration=0)
add_species('HH2', initial_concentration=0)
add_species('HH3', initial_concentration=0)
add_species('HH4', initial_concentration=0)
add_species('HH5', initial_concentration=0)
add_species('HH6', initial_concentration=0)
add_species('ptc', initial_concentration=0)
add_species('PTC1', initial_concentration=0)
add_species('PTC2', initial_concentration=0)
add_species('PTC3', initial_concentration=0)
add_species('PTC4', initial_concentration=0)
add_species('PTC5', initial_concentration=0)
add_species('PTC6', initial_concentration=0)
add_species('wg', initial_concentration=1)
add_species('IWG', initial_concentration=1)
add_species('EWG1', initial_concentration=0)
add_species('EWG2', initial_concentration=0)
add_species('EWG3', initial_concentration=0)
add_species('EWG4', initial_concentration=0)
add_species('EWG5', initial_concentration=0)
add_species('EWG6', initial_concentration=0)
add_species('PH', initial_concentration=0)
add_species('B', status='fixed', initial_concentration=0.4)
# sums of species
add_species('EWG_T', status='assignment', expression="[EWG1] + [EWG2] + [EWG3] + [EWG4] + [EWG5] + [EWG6]")
add_species('PTC_T', status='assignment', expression="[PTC1] + [PTC2] + [PTC3] + [PTC4] + [PTC5] + [PTC6]")

# REACTIONS
add_reaction(name='R01', scheme='-> en; EWG_T CN', function='transcription inducer-repressor pair', mapping={'M1': 'EWG_T', 'M2': 'CN', 'V': 'T0/H_en', 'k1': 'kappa_WGen', 'h1': 'nu_WGen', 'k2': 'kappa_CNen', 'h2': 'nu_CNen'})

add_reaction(name='R02', scheme='en ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_en'} )

add_reaction(name='R03', scheme='-> EN; en', function='translation', mapping={'k': 'T0/H_EN', 'mRNA': 'en'})

add_reaction(name='R04', scheme='EN ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EN' })

add_reaction(name='R05', scheme='-> ci; B EN', function='transcription inducer-repressor pair', mapping={'M1': 'B', 'M2': 'EN', 'V': 'T0/H_ci', 'k1': 'kappa_Bci', 'h1': 'nu_Bci', 'k2': 'kappa_ENci', 'h2': 'nu_ENci'})

add_reaction(name='R06', scheme='ci ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_ci'})

add_reaction(name='R07', scheme='-> CI; ci', function='translation', mapping={'k': 'T0/H_CI', 'mRNA': 'ci'})

add_reaction(name='R08', scheme='CI ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI' })

add_reaction(name='R09', scheme='CI -> CN; PTC_T', function='first order w/ activator', mapping={'M': 'PTC_T', 'V': 'T0.C_CI', 'k': 'kappa_PTCCI', 'h': 'nu_PTCCI'})

add_reaction(name='R10', scheme='CN ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI'})

add_reaction(name='R11', scheme='-> hh; EN CN', function='transcription inducer-repressor pair', mapping={'M1': 'EN', 'M2': 'CN', 'V': 'T0/H_hh', 'k1': 'kappa_ENhh', 'h1': 'nu_ENhh', 'k2': 'kappa_CNhh', 'h2': 'nu_CNhh'})

add_reaction(name='R12', scheme='hh ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_hh'})

add_reaction(name='R13_1', scheme='-> HH1; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_2', scheme='-> HH2; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_3', scheme='-> HH3; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_4', scheme='-> HH4; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_5', scheme='-> HH5; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})
add_reaction(name='R13_6', scheme='-> HH6; hh', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': 'hh'})

add_reaction(name='R14_1', scheme='HH1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )
add_reaction(name='R14_2', scheme='HH2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )
add_reaction(name='R14_3', scheme='HH3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )
add_reaction(name='R14_4', scheme='HH4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )
add_reaction(name='R14_5', scheme='HH5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )
add_reaction(name='R14_6', scheme='HH6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'} )

add_reaction(name='R15', scheme='-> ptc; CI CN', function='transcription inducer-repressor pair', mapping={'M1': 'CI', 'M2': 'CN', 'V': 'T0/H_ptc', 'k1': 'kappa_CIptc', 'h1': 'nu_CIptc', 'k2': 'kappa_CNptc', 'h2': 'nu_CNptc'})

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

add_reaction(name='R19', scheme='-> wg; CI CN IWG', function='transcription inducer-repressor pair + inducer', mapping={'M1': 'CI', 'M2': 'CN', 'M3': 'IWG', 'V': 'T0/H_wg', 'alpha1': 'alpha_CIwg', 'alpha3': 'alpha_WGwg',  'k1': 'kappa_CIwg', 'h1': 'nu_CIwg', 'k2': 'kappa_CNwg', 'h2': 'nu_CNwg', 'k3': 'kappa_WGwg', 'h3': 'nu_WGwg' })

add_reaction(name='R20', scheme='wg ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_wg'})

add_reaction(name='R21', scheme='-> IWG; wg', function='translation', mapping={'k': 'T0/H_IWG', 'mRNA': 'wg'})

add_reaction(name='R22', scheme='IWG ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})

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

add_reaction(name='R25_1', scheme='EWG1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})
add_reaction(name='R25_2', scheme='EWG2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})
add_reaction(name='R25_3', scheme='EWG3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})
add_reaction(name='R25_4', scheme='EWG4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})
add_reaction(name='R25_5', scheme='EWG5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})
add_reaction(name='R25_6', scheme='EWG6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})

# R26 kinetics
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


# R27 kinetics
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

# R28 kinetics
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

# TODO: in the multicell model HH here should be from opposite cell!
add_reaction(name='R29_1', scheme='PTC1 + HH1 -> PH1', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})
add_reaction(name='R29_2', scheme='PTC2 + HH2 -> PH2', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})
add_reaction(name='R29_3', scheme='PTC3 + HH3 -> PH3', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})
add_reaction(name='R29_4', scheme='PTC4 + HH4 -> PH4', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})
add_reaction(name='R29_5', scheme='PTC5 + HH5 -> PH5', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})
add_reaction(name='R29_6', scheme='PTC6 + HH6 -> PH6', function='mass action (irreversible)', mapping={'k1': 'T0.kappa_PTCHH.HH_0'})

# R30 kinetics
add_reaction(name='R30_1', scheme='PH1 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R30_2', scheme='PH2 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R30_3', scheme='PH3 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R30_4', scheme='PH4 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R30_5', scheme='PH5 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
add_reaction(name='R30_6', scheme='PH6 ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})

# preferred settings for time course
tc = get_task_settings(T.TIME_COURSE)
tc['problem']['Duration'] = 150
tc['problem']['StepNumber'] = 300
set_task_settings(T.TIME_COURSE, tc)

#PLOTS
# time course of all mRNAs
add_plot('mRNA', curves=[{'name': 'hh', 'color': '#ff8800','line_width': 1.5,'channels':['Time', '[hh]']},
                         {'name': 'en', 'color': '#0088ff','line_width': 1.5,'channels':['Time', '[en]']},
                         {'name': 'wg', 'color': '#008800','line_width': 1.5,'channels':['Time', '[wg]']},
                         {'name': 'ptc', 'color': '#f000ff','line_width': 1.5,'channels':['Time', '[ptc]']},
                         {'name': 'ci', 'color': '#ff0000','line_width': 1.5,'channels':['Time', '[ci]']}])

add_plot('Proteins', curves=[{'name': 'IWG', 'color': '#ff8800','line_width': 1.5,'channels':['Time', '[IWG]']},
                         {'name': 'EWG_T', 'color': '#0088ff','line_width': 1.5,'channels':['Time', '[EWG_T]']},
                         {'name': 'PTC_T', 'color': '#008800','line_width': 1.5,'channels':['Time', '[PTC_T]']},
                         {'name': 'EN', 'color': '#f000ff','line_width': 1.5,'channels':['Time', '[EN]']},
                         {'name': 'CI', 'color': '#ff0000','line_width': 1.5,'channels':['Time', '[CI]']},
                         {'name': 'CN', 'color': '#33ff33','line_width': 1.5,'channels':['Time', '[CN]']},
                         {'name': 'HH1', 'color': '#7051a7','line_width': 1.5,'channels':['Time', '[HH1]']},
                         {'name': 'PH1', 'color': '#00bef0','line_width': 1.5,'channels':['Time', '[PH1]']}])

# METADATA
set_miriam_annotation(created=date.today(), creators=[{'first_name': 'Pedro', 'last_name': 'Mendes', 'email': 'pmendes@uchc.edu', 'organization': 'University of Connecticut School of Medicine' }],                    references=[{'resource': 'DOI', 'id': '10.1038/35018085'}])

# save the model
save_model("vonDassow2000_1cell.cps", overwrite=True)
