#!/usr/bin/python3
#
# vonDassow2000.py
# This file builds the von Dassow et al (2000) model of segment
# polarity network with a hexagonal toroidal grid. The default
# grid size is 2x8. To create other sizes pass two numeric
# arguments on the command line for rows and colums.
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
#import matplotlib.pyplot as plt
#%matplotlib inline

# MODEL VERSION
mversion = 4

# DEFAULT GRID SIZE
gridr = 2
gridc = 8

# value for nearly zero concentrations (for stability)
zero_conc = 1e-20 #

# check if arguments were passed to size the grid
n = len(sys.argv)

# make sure there none or exactly 2 arguments
if(n == 2) or (n > 4):
    # invalid number of arguments, complain and keep default
    print("\nUsage: vonDassow2000.py rows colums [alt]\n  (alt optional argument is for alternative rate laws)\n")
    exit()

if( n>=3 ):
    # we got two arguments, set rows and columns
    try:
        gridr = int(sys.argv[1])
        gridc = int(sys.argv[2])
        # if the numbers are negative raise exception
        if( gridr<1) or (gridc<1): raise
        # if the numbers are odd raise exception
#        if( gridr&1 ) or ( gridc&1 ): raise
        if( gridc&1 ): raise
    except:
        print("\nInvalid arguments, rows and columns must be positive integers, columns must be even.\n")
        exit()

altratelaws = False

if(n==4):
    # we got three arguments, check for "alt" or error
    if sys.argv[3] == "alt":
        altratelaws = True
    else:
        altratelaws = False

print(f"\ncreating a {gridr}x{gridc} grid\n")
if altratelaws:
    print("using alternative rate laws to avoid numerical errors\n")

# Example grid 8x2
#
# 0,0     0,2     0,4     0,6
#     0,1     0,3     0,5     0,7
# 1,0     1,2     1,4     1,6
#     1,1     1,3     1,5     1,7

altcomment= ""
if altratelaws==True:
    altcomment = "<p>This model version includes alternative rate laws that protect against floating point errors in exponentiation operations.</p>"

# Comments for the whole model
model_notes=f'<body xmlns="http://www.w3.org/1999/xhtml"><h1>Segment polarity network model</h1><p>This is an implementation of the  model in von Dassow et al (2000), where a gene network controls segment polarity in a fly embryo. The paper describes an arrangement of several hexagonal cells with interactions between neighbors in a toroidal shape (<i>i.e.</i> the edges of the grid are connected to each other) but it did not explicitly mention the dimensions of the grid used in their simulation. Here we adopt a {gridr}x{gridc} grid.</p><p>The model contains species that reside in the cell membrane (<i>EWG</i>, <i>PTC</i>, <i>HH</i>, and <i>PH</i>). Since the cells are hexagonal, the model partitions these species into 6 different pools, one per side of the hexagon. The model allows for these species to diffuse around the membrane, implemented by transfer reactions between a pool and the two neighboring pools. The sides of the hexagonal cells are labelled 1-6, with 1 at the base, and numbered clockwise.</p><p>Some reactions include components from neighboring cells:<ul> <li>Induction of <i>en</i> by <i>EWG</i> (reaction <i>R01</i>) is from all 6 neighboring cells.</li> <li>The complex <i>PH</i> is composed by <i>PTC</i> in this cell and <i>HH</i> from the neighboring cell (reactions <i>R30a_i</i> and <i>R30b_i</i>).</li> <li><i>EWG</i> is exchanged with the neighboring cells (reactions <i>R26_ij</i> where <i>i</i> and <i>j</i> are the indices of two adjacent sides).</li></ul></p><p>Species and reactions are labelled by their cell index and membrane index. Thus, species <i>CI_1,4</i> is the CI protein located in <i>cell[1,4]</i>; species <i>EWG3_0,5</i> is the protein EWG located in the side 3 of <i>cell[0,5]</i>; reaction <i>R2_0,3</i> is reaction number 2 in <i>cell[0,3]</i>; reaction <i>R30_4_0,2</i> is reaction 30 on side 4 of the membrane of <i>cell[0,2]</i>.{altcomment}</p><h2>Reference</h2><p>von Dassow G, Meir E, Munro EM, Odell GM (2000) <a href="https://doi.org/10.1038/35018085">The segment polarity network is a robust developmental module</a> Nature 406:188–192</p><hr width="70%" /><p>This COPASI file was created by Pedro Mendes with a python script, <i>vonDassow2000.py</i>, using <a href="https://github.com/copasi/basico">BasiCO, a simplified python interface to COPASI</a>.</p><p>version: {mversion}.{gridr}x{gridc}</p><hr width="70%" /><p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p></body>'

# Create the Segment Polarity Network model in COPASI format
if altratelaws==False:
    new_model(name=f'Segment Polarity Network model on {gridr}x{gridc} grid', time_unit='1', quantity_unit='1', length_unit='1',area_unit='1', volume_unit='1', notes=model_notes)
else:
    new_model(name=f'Segment Polarity Network model on {gridr}x{gridc} grid (with alternative rate laws)', time_unit='1', quantity_unit='1', length_unit='1',area_unit='1', volume_unit='1', notes=model_notes)

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

# we create an array of hexagonal cells which has toric shape
# (all cell edges are connected). Example below for 2x8 grid
#
# 0,0     0,2     0,4     0,6
#     0,1     0,3     0,5     0,7
# 1,0     1,2     1,4     1,6
#     1,1     1,3     1,5     1,7

# STEP 1 set up all cells and their internal species and reactions

# we will use the first initial condition in row 1 of Table 1

ci0 = zero_conc    # initial for all ci
ptc0 = zero_conc   # initial for all ptc

for i in range(0, gridr):
    for j in range(0, gridc):
        # new cell
        compname='cell[{},{}]'.format(i,j)
        app='_{},{}'.format(i,j)
        add_compartment(name=compname)

        if (j-1) % 4 == 0:
            wg0 = 1
        else:
            wg0 = zero_conc

        if (j-1-1) % 4 == 0:
            en0 = 1
        else:
            en0 = zero_conc

        # add species, initial concentrations, and annotations
        # for now we set them to the conditions of the first row of Table 1 (crisp conditions)
        add_species(f'en{app}', compartment_name=compname, initial_concentration=en0)
        set_miriam_annotation(name=f'en{app}', descriptions=[{'id': 'FBgn0000577','qualifier': 'is encoded by','uri': 'http://identifiers.org/flybase/FBgn0000577','resource': 'FlyBase'}])

        add_species(f'EN{app}', compartment_name=compname, initial_concentration=en0)
        set_miriam_annotation(name=f'EN{app}', descriptions=[{'id': 'P02836','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P02836','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005634','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005634','resource': 'Gene Ontology'}])

        add_species(f'ci{app}', compartment_name=compname, initial_concentration=ci0)
        set_miriam_annotation(name=f'ci{app}', descriptions=[{'id': 'FBgn0004859','qualifier': 'is encoded by','uri': 'http://identifiers.org/flybase/FBgn0004859','resource': 'FlyBase'}])

        add_species(f'CI{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'CI{app}', descriptions=[{'id': 'P19538','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P19538','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005634','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005634','resource': 'Gene Ontology'}])

        add_species(f'CN{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'CN{app}', descriptions=[{'id': 'P19538','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P19538','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005634','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005634','resource': 'Gene Ontology'}])

        add_species(f'hh{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'hh{app}', descriptions=[{'id': 'FBgn0004644','qualifier': 'is encoded by','uri': 'http://identifiers.org/flybase/FBgn0004644','resource': 'FlyBase'}])

        add_species(f'HH1{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH1{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'HH2{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH2{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'HH3{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH3{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'HH4{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH4{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'HH5{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH5{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'HH6{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'HH6{app}', descriptions=[{'id': 'Q02936','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'ptc{app}', compartment_name=compname, initial_concentration=ptc0)
        set_miriam_annotation(name=f'ptc{app}', descriptions=[{'id': 'FBgn0003892','qualifier': 'is encoded by','uri': 'http://identifiers.org/flybase/FBgn0003892','resource': 'FlyBase'}])

        add_species(f'PTC1{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC1{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PTC2{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC2{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PTC3{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC3{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PTC4{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC4{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PTC5{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC5{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PTC6{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PTC6{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'wg{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'wg{app}', descriptions=[{'id': 'FBgn0284084','qualifier': 'is encoded by','uri': 'http://identifiers.org/flybase/FBgn0284084','resource': 'FlyBase'}])

        add_species(f'IWG{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'IWG{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005737','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005737','resource': 'Gene Ontology'}])

        add_species(f'EWG1{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG1{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'EWG2{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG2{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'EWG3{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG3{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'EWG4{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG4{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'EWG5{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG5{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'EWG6{app}', compartment_name=compname, initial_concentration=wg0)
        set_miriam_annotation(name=f'EWG6{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH1{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH1{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH2{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH2{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH3{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH3{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH4{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH4{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH5{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH5{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'PH6{app}', compartment_name=compname, initial_concentration=zero_conc)
        set_miriam_annotation(name=f'PH6{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        add_species(f'B{app}', compartment_name=compname, initial_concentration=0.4, status='fixed')

        # add PTC total within each cell
        add_species(f'PTC_T{app}', compartment_name=compname, status='assignment', expression=f'[PTC1{app}] + [PTC2{app}] + [PTC3{app}] + [PTC4{app}] + [PTC5{app}] + [PTC6{app}]')
        set_miriam_annotation(name=f'PTC_T{app}', descriptions=[{'id': 'P18502','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])

        # REACTIONS
        add_reaction(name=f'R01{app}', scheme=f'-> en{app}; EWG_T{app} CN{app}', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': f'EWG_T{app}', 'M2': f'CN{app}', 'V': 'T0/H_en', 'k1': 'kappa_WGen', 'h1': 'nu_WGen', 'k2': 'kappa_CNen', 'h2': 'nu_CNen'})

        add_reaction(name=f'R02{app}', scheme=f'en{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_en'})

        add_reaction(name=f'R03{app}', scheme=f'-> EN{app}; en{app}', function='translation', mapping={'k': 'T0/H_EN', 'mRNA': f'en{app}'})

        add_reaction(name=f'R04{app}', scheme=f'EN{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EN'})

        add_reaction(name=f'R05{app}', scheme=f'-> ci{app}; B{app} EN{app}', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': f'B{app}', 'M2': f'EN{app}', 'V': 'T0/H_ci', 'k1': 'kappa_Bci', 'h1': 'nu_Bci', 'k2': 'kappa_ENci', 'h2': 'nu_ENci'})

        add_reaction(name=f'R06{app}', scheme=f'ci{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_ci'})

        add_reaction(name=f'R07{app}', scheme=f'-> CI{app}; ci{app}', function='translation', mapping={'k': 'T0/H_CI', 'mRNA': f'ci{app}'})

        add_reaction(name=f'R08{app}', scheme=f'CI{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI'})

        add_reaction(name=f'R09{app}', scheme=f'CI{app} -> CN{app}; PTC_T{app}', function=f'first order w/ activator{nsuf}', mapping={'M': f'PTC_T{app}', 'V': 'T0.C_CI', 'k': 'kappa_PTCCI', 'h': 'nu_PTCCI'})

        add_reaction(name=f'R10{app}', scheme=f'CN{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_CI'})

        add_reaction(name=f'R11{app}', scheme=f'-> hh{app}; EN{app} CN{app}', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': f'EN{app}', 'M2': f'CN{app}', 'V': 'T0/H_hh', 'k1': 'kappa_ENhh', 'h1': 'nu_ENhh', 'k2': 'kappa_CNhh', 'h2': 'nu_CNhh'})

        add_reaction(name=f'R12{app}', scheme=f'hh{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_hh'})

        add_reaction(name=f'R13_1{app}', scheme=f'-> HH1{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})
        add_reaction(name=f'R13_2{app}', scheme=f'-> HH2{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})
        add_reaction(name=f'R13_3{app}', scheme=f'-> HH3{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})
        add_reaction(name=f'R13_4{app}', scheme=f'-> HH4{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})
        add_reaction(name=f'R13_5{app}', scheme=f'-> HH5{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})
        add_reaction(name=f'R13_6{app}', scheme=f'-> HH6{app}; hh{app}', function='translation', mapping={'k': 'T0/6H_HH', 'mRNA': f'hh{app}'})

        add_reaction(name=f'R14_1{app}', scheme=f'HH1{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
        add_reaction(name=f'R14_2{app}', scheme=f'HH2{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
        add_reaction(name=f'R14_3{app}', scheme=f'HH3{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
        add_reaction(name=f'R14_4{app}', scheme=f'HH4{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
        add_reaction(name=f'R14_5{app}', scheme=f'HH5{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})
        add_reaction(name=f'R14_6{app}', scheme=f'HH6{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_HH'})

        add_reaction(name=f'R15{app}', scheme=f'-> ptc{app}; CI{app} CN{app}', function=f'transcription inducer-repressor pair{nsuf}', mapping={'M1': f'CI{app}', 'M2': f'CN{app}', 'V': 'T0/H_ptc', 'k1': 'kappa_CIptc', 'h1': 'nu_CIptc', 'k2': 'kappa_CNptc', 'h2': 'nu_CNptc'})

        add_reaction(name=f'R16{app}', scheme=f'ptc{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_ptc'})

        add_reaction(name=f'R17_1{app}', scheme=f'-> PTC1{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})
        add_reaction(name=f'R17_2{app}', scheme=f'-> PTC2{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})
        add_reaction(name=f'R17_3{app}', scheme=f'-> PTC3{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})
        add_reaction(name=f'R17_4{app}', scheme=f'-> PTC4{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})
        add_reaction(name=f'R17_5{app}', scheme=f'-> PTC5{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})
        add_reaction(name=f'R17_6{app}', scheme=f'-> PTC6{app}; ptc{app}', function='translation', mapping={'k': 'T0/6H_PTC', 'mRNA': f'ptc{app}'})

        add_reaction(name=f'R18_1{app}', scheme=f'PTC1{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
        add_reaction(name=f'R18_2{app}', scheme=f'PTC2{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
        add_reaction(name=f'R18_3{app}', scheme=f'PTC3{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
        add_reaction(name=f'R18_4{app}', scheme=f'PTC4{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
        add_reaction(name=f'R18_5{app}', scheme=f'PTC5{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})
        add_reaction(name=f'R18_6{app}', scheme=f'PTC6{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PTC'})

        add_reaction(name=f'R19{app}', scheme=f'-> wg{app}; CI{app} CN{app} IWG{app}', function=f'transcription inducer-repressor pair + inducer{nsuf}', mapping={'M1': f'CI{app}', 'M2': f'CN{app}', 'M3': f'IWG{app}', 'V': 'T0/H_wg', 'alpha1': 'alpha_CIwg', 'alpha3': 'alpha_WGwg',  'k1': 'kappa_CIwg', 'h1': 'nu_CIwg', 'k2': 'kappa_CNwg', 'h2': 'nu_CNwg', 'k3': 'kappa_WGwg', 'h3': 'nu_WGwg' })

        add_reaction(name=f'R20{app}', scheme=f'wg{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_wg'})

        add_reaction(name=f'R21{app}', scheme=f'-> IWG{app}; wg{app}', function='translation', mapping={'k': 'T0/H_IWG', 'mRNA': f'wg{app}'})

        add_reaction(name=f'R22{app}',scheme=f'IWG{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_IWG'})

        # R23 kinetics
        add_reaction(name=f'R23_1{app}', scheme=f'IWG{app} -> EWG1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
        add_reaction(name=f'R23_2{app}', scheme=f'IWG{app} -> EWG2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
        add_reaction(name=f'R23_3{app}', scheme=f'IWG{app} -> EWG3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
        add_reaction(name=f'R23_4{app}', scheme=f'IWG{app} -> EWG4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
        add_reaction(name=f'R23_5{app}', scheme=f'IWG{app} -> EWG5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})
        add_reaction(name=f'R23_6{app}', scheme=f'IWG{app} -> EWG6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_ExoWG/6'})

        add_reaction(name=f'R24_1{app}', scheme=f'EWG1{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
        add_reaction(name=f'R24_2{app}', scheme=f'EWG2{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
        add_reaction(name=f'R24_3{app}', scheme=f'EWG3{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
        add_reaction(name=f'R24_4{app}', scheme=f'EWG4{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
        add_reaction(name=f'R24_5{app}', scheme=f'EWG5{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})
        add_reaction(name=f'R24_6{app}', scheme=f'EWG6{app} -> IWG{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_EndoWG'})

        add_reaction(name=f'R25_1{app}', scheme=f'EWG1{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
        add_reaction(name=f'R25_2{app}', scheme=f'EWG2{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
        add_reaction(name=f'R25_3{app}', scheme=f'EWG3{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
        add_reaction(name=f'R25_4{app}', scheme=f'EWG4{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
        add_reaction(name=f'R25_5{app}', scheme=f'EWG5{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})
        add_reaction(name=f'R25_6{app}', scheme=f'EWG6{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_EWG'})

        add_reaction(name=f'R26_16{app}', scheme=f'EWG1{app} -> EWG6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_61{app}', scheme=f'EWG6{app} -> EWG1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_12{app}', scheme=f'EWG1{app} -> EWG2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_21{app}', scheme=f'EWG2{app} -> EWG1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_23{app}', scheme=f'EWG2{app} -> EWG3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_32{app}', scheme=f'EWG3{app} -> EWG2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_34{app}', scheme=f'EWG3{app} -> EWG4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_43{app}', scheme=f'EWG4{app} -> EWG3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_45{app}', scheme=f'EWG4{app} -> EWG5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_54{app}', scheme=f'EWG5{app} -> EWG4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_56{app}', scheme=f'EWG5{app} -> EWG6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R26_65{app}', scheme=f'EWG6{app} -> EWG5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})

        add_reaction(name=f'R27_16{app}', scheme=f'PTC1{app} -> PTC6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_61{app}', scheme=f'PTC6{app} -> PTC1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_12{app}', scheme=f'PTC1{app} -> PTC2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_21{app}', scheme=f'PTC2{app} -> PTC1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_23{app}', scheme=f'PTC2{app} -> PTC3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_32{app}', scheme=f'PTC3{app} -> PTC2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_34{app}', scheme=f'PTC3{app} -> PTC4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_43{app}', scheme=f'PTC4{app} -> PTC3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_45{app}', scheme=f'PTC4{app} -> PTC5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_54{app}', scheme=f'PTC5{app} -> PTC4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_56{app}', scheme=f'PTC5{app} -> PTC6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})
        add_reaction(name=f'R27_65{app}', scheme=f'PTC6{app} -> PTC5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferWG'})

        add_reaction(name=f'R28_16{app}', scheme=f'HH1{app} -> HH6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_61{app}', scheme=f'HH6{app} -> HH1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_12{app}', scheme=f'HH1{app} -> HH2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_21{app}', scheme=f'HH2{app} -> HH1{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_23{app}', scheme=f'HH2{app} -> HH3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_32{app}', scheme=f'HH3{app} -> HH2{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_34{app}', scheme=f'HH3{app} -> HH4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_43{app}', scheme=f'HH4{app} -> HH3{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_45{app}', scheme=f'HH4{app} -> HH5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_54{app}', scheme=f'HH5{app} -> HH4{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_56{app}', scheme=f'HH5{app} -> HH6{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})
        add_reaction(name=f'R28_65{app}', scheme=f'HH6{app} -> HH5{app}', function='mass action (irreversible)', mapping={'k1': 'T0.r_LMxferHH'})

        add_reaction(name=f'R29_1{app}', scheme=f'PH1{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
        add_reaction(name=f'R29_2{app}', scheme=f'PH2{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
        add_reaction(name=f'R29_3{app}', scheme=f'PH3{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
        add_reaction(name=f'R29_4{app}', scheme=f'PH4{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
        add_reaction(name=f'R29_5{app}', scheme=f'PH5{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})
        add_reaction(name=f'R29_6{app}', scheme=f'PH6{app} ->', function='mass action (irreversible)', mapping={'k1': 'T0/H_PH'})

        # add a PH total within each cell
        add_species(f'PH_T{app}', compartment_name=compname, status='assignment', expression=f'[PH1{app}] + [PH2{app}] + [PH3{app}] + [PH4{app}] + [PH5{app}] + [PH6{app}]')
        set_miriam_annotation(name=f'PH_T{app}', descriptions=[{'id': 'P18502','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/P18502','resource': 'UniProt Knowledgebase'},{'id': 'Q02936','qualifier': 'has part','uri': 'http://identifiers.org/uniprot/Q02936','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])


# STEP 2 set up intercell interactions

# Create species that are sums, add two reactions at the cell-cell interfaces
# e1 to e6 are components of the expression for a sum of species at neighboring membranes
# On each side add a reaction for diffusion of WG to the next ones
# On each side add a reaction between our PTC and the neighbor HH to make PH on our side
#  (note that this reaction has to be added as two separate reactions due to normalization:
#  Instead of PTC + HH -> PH we do PTC -> PH and HH -> setting the appropriate modifiers
#  and rate constants)
for i in range(0, gridr):
    for j in range(0, gridc):
        # for each cell i, j
        app='_{},{}'.format(i,j)
        # in the appropriate compartment (also i,j)
        compname='cell[{},{}]'.format(i,j)

        # cell next to position 1 (side 4 on that cell)
        ngb = '_{},{}'.format((i+1)%gridr,j)
        compname2='cell[{},{}]'.format((i+1)%gridr,j)
        e1=f'[EWG4{ngb}]'
        add_reaction(name=f'R30a_1{app}', scheme=f'PTC1{app} -> PH1{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH4{ngb}', 'Vol2': compname2})
        add_reaction(name=f'R30b_1{app}', scheme=f'HH4{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC1{app}', 'Vol2': compname})
        add_reaction(name=f'R31_1{app}', scheme=f'EWG1{app} -> EWG4{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # cell next to position 2 (side 5 on that cell)
        if j&1==1:
            ngb = '_{},{}'.format((i+1)%gridr,(j+(gridc-1))%gridc)
            compname2='cell[{},{}]'.format((i+1)%gridr,(j+(gridc-1))%gridc)
        else:
            ngb = '_{},{}'.format(i,(j+(gridc-1))%gridc)
            compname2='cell[{},{}]'.format(i,(j+(gridc-1))%gridc)
        e2=f' + [EWG5{ngb}]'
        add_reaction(name=f'R30a_2{app}', scheme=f'PTC2{app} -> PH2{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH5{ngb}','Vol2': compname2})
        add_reaction(name=f'R30b_2{app}', scheme=f'HH5{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC2{app}', 'Vol2': compname})
        add_reaction(name=f'R31_2{app}', scheme=f'EWG2{app} -> EWG5{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # cell next to position 3 (idx 6 on that side)
        if j&1:
            ngb = '_{},{}'.format(i,(j+(gridc-1))%gridc)
            compname2='cell[{},{}]'.format(i,(j+(gridc-1))%gridc)
        else:
            ngb = '_{},{}'.format((i+1)%gridr,(j+(gridc-1))%gridc)
            compname2='cell[{},{}]'.format((i+1)%gridr,(j+(gridc-1))%gridc)
        e3=f' + [EWG6{ngb}]'
        add_reaction(name=f'R30a_3{app}', scheme=f'PTC3{app} -> PH3{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH6{ngb}', 'Vol2': compname2})
        add_reaction(name=f'R30b_3{app}', scheme=f'HH6{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC3{app}', 'Vol2': compname})
        add_reaction(name=f'R31_3{app}', scheme=f'EWG3{app} -> EWG6{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # cell next to position 4 (idx 1 on that side)
        ngb = '_{},{}'.format((i+1)%gridr,j)
        compname2='cell[{},{}]'.format((i+1)%gridr,j)
        e4=f' + [EWG1{ngb}]'
        add_reaction(name=f'R30a_4{app}', scheme=f'PTC4{app} -> PH4{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH1{ngb}', 'Vol2': compname2})
        add_reaction(name=f'R30b_4{app}', scheme=f'HH1{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC4{app}', 'Vol2': compname})
        add_reaction(name=f'R31_4{app}', scheme=f'EWG4{app} -> EWG1{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # cell next to position 5 (idx 2 on that side)
        if j&1:
            ngb = '_{},{}'.format(i,(j+1)%gridc)
            compname2='cell[{},{}]'.format(i,(j+1)%gridc)
        else:
            ngb = '_{},{}'.format((i+1)%gridr,(j+1)%gridc)
            compname2='cell[{},{}]'.format((i+1)%gridr,(j+1)%gridc)
        e5=f' + [EWG2{ngb}]'
        add_reaction(name=f'R30a_5{app}', scheme=f'PTC5{app} -> PH5{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH2{ngb}', 'Vol2': compname2})
        add_reaction(name=f'R30b_5{app}', scheme=f'HH2{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC5{app}', 'Vol2': compname})
        add_reaction(name=f'R31_5{app}', scheme=f'EWG5{app} -> EWG2{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # cell next to position 6 (idx 3 on that side)
        if j&1 :
            ngb = '_{},{}'.format((i+1)%gridr,(j+1)%gridc)
            compname2='cell[{},{}]'.format((i+1)%gridr,(j+1)%gridc)
        else:
            ngb = '_{},{}'.format(i,(j+1)%gridc)
            compname2='cell[{},{}]'.format(i,(j+1)%gridc)
        e6=f' + [EWG3{ngb}]'
        add_reaction(name=f'R30a_6{app}', scheme=f'PTC6{app} -> PH6{app}', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.HH_0', 'Vol1': compname, 'S2': f'HH3{ngb}', 'Vol2': compname2})
        add_reaction(name=f'R30b_6{app}', scheme=f'HH3{ngb} -> ', function='Pseudo bi-molecular reaction with transport', mapping={'k1': 'T0.kappa_PTCHH.PTC_0', 'Vol1': compname2, 'S2': f'PTC6{app}', 'Vol2': compname})
        add_reaction(name=f'R31_6{app}', scheme=f'EWG6{app} -> EWG3{ngb}', function='Uni-molecular transport', mapping={'Vol': compname, 'k1': 'T0.r_MxferWG'})

        # create a species EWG_T that is the sum of the EWGi neighboring sides
        esides = e1+e2+e3+e4+e5+e6
        set_species(name=f'EWG_T{app}', compartment_name=compname, status='assignment', expression=esides, unit="1")
        set_miriam_annotation(name=f'EWG_T{app}', descriptions=[{'id': 'P09615','qualifier': 'is version of','uri': 'http://identifiers.org/uniprot/P09615','resource': 'UniProt Knowledgebase'},{'id': 'GO:0005886','qualifier': 'occurs in','uri': 'http://identifiers.org/go/0005886','resource': 'Gene Ontology'}])


# set up the time course parameters, we need to run to time 1100
set_task_settings('Time-Course', {'scheduled': True, 'problem': {'StepNumber': 55, 'Duration': 1100.0, 'StepSize': 20 }})

# if we have 4 or more columns, create a pattern scoring function
# because of symetry we only need to check the first 4 colums of the first row
if gridc > 3:
    # the times for the two events
    add_parameter('tev1', initial_value=200, unit="1")
    add_parameter('tev2', initial_value=1000, unit="1")
    # add observables for genes wg, en and hh, time 200
    add_parameter('t200_wg_0', initial_value=0, unit="1")
    add_parameter('t200_wg_1', initial_value=0, unit="1")
    add_parameter('t200_wg_2', initial_value=0, unit="1")
    add_parameter('t200_wg_3', initial_value=0, unit="1")
    add_parameter('t200_en_0', initial_value=0, unit="1")
    add_parameter('t200_en_1', initial_value=0, unit="1")
    add_parameter('t200_en_2', initial_value=0, unit="1")
    add_parameter('t200_en_3', initial_value=0, unit="1")
    add_parameter('t200_hh_0', initial_value=0, unit="1")
    add_parameter('t200_hh_1', initial_value=0, unit="1")
    add_parameter('t200_hh_2', initial_value=0, unit="1")
    add_parameter('t200_hh_3', initial_value=0, unit="1")
    # add observables for genes wg, en and hh, time 200
    add_parameter('t1000_wg_0', initial_value=0, unit="1")
    add_parameter('t1000_wg_1', initial_value=0, unit="1")
    add_parameter('t1000_wg_2', initial_value=0, unit="1")
    add_parameter('t1000_wg_3', initial_value=0, unit="1")
    add_parameter('t1000_en_0', initial_value=0, unit="1")
    add_parameter('t1000_en_1', initial_value=0, unit="1")
    add_parameter('t1000_en_2', initial_value=0, unit="1")
    add_parameter('t1000_en_3', initial_value=0, unit="1")
    add_parameter('t1000_hh_0', initial_value=0, unit="1")
    add_parameter('t1000_hh_1', initial_value=0, unit="1")
    add_parameter('t1000_hh_2', initial_value=0, unit="1")
    add_parameter('t1000_hh_3', initial_value=0, unit="1")
    # values for T200
    add_parameter(name='Eq15num200', status='assignment', expression='Values[t200_wg_0] + Values[t200_wg_1] + Values[t200_wg_2] + Values[t200_wg_3] + Values[t200_en_0] + Values[t200_en_1] + Values[t200_en_2] + Values[t200_en_3] + Values[t200_hh_0] + Values[t200_hh_1] + Values[t200_hh_2] + Values[t200_hh_3]', unit="1")
    # values for T1000
    add_parameter(name='Eq15num1000', status='assignment', expression='Values[t1000_wg_0] + Values[t1000_wg_1] + Values[t1000_wg_2] + Values[t1000_wg_3] + Values[t1000_en_0] + Values[t1000_en_1] + Values[t1000_en_2] + Values[t1000_en_3] + Values[t1000_hh_0] + Values[t1000_hh_1] + Values[t1000_hh_2] + Values[t1000_hh_3]', unit="1")
    # numerator of Eq 15
    add_parameter(name='Eq15num', status='assignment', expression='Values[Eq15num200] + Values[Eq15num1000]', unit="1")
    # Eq 15 as the sum of scores for T200 and T1000
    add_parameter(name='Eq15', status='assignment', expression='Values[Eq15num] / ( 1 + Values[Eq15num] )', unit="1")
    # final score; this should be max(Eq15, Eq16)
    add_parameter(name='Score', status='assignment', expression='Values[Eq15]', unit="1")

    # set an event for time = 200 to capture all observables
    evassign = []
    evassign.append(('Values[t200_wg_0]', '0.5 * ( ( [wg_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,0] / 0.2 ) ^ 3)') )
    evassign.append(('Values[t200_wg_1]', '0.5 * ( 1 - ( ( [wg_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,1] /  0.2 ) ^ 3 ) )'))
    evassign.append(('Values[t200_wg_2]', '0.5 * ( ( [wg_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,2] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t200_wg_3]','0.5 * ( ( [wg_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,3] / 0.2 ) ^ 3)'))
    evassign.append(('Values[t200_en_0]','0.5 * ( ( [en_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,0] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t200_en_1]','0.5 * ( ( [en_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,1] / 0.2 ) ^ 3)'))
    evassign.append(('Values[t200_en_2]','0.5 * ( 1 - ( ( [en_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,2] / 0.2 ) ^ 3 ) )'))
    evassign.append(('Values[t200_en_3]','0.5 * ( ( [en_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,3] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t200_hh_0]','0.5 * ( ( [hh_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,0] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t200_hh_1]','0.5 * ( ( [hh_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,1] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t200_hh_2]','0.5 * ( 1 - ( ( [hh_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,2] / 0.2 ) ^ 3 ))'))
    evassign.append(('Values[t200_hh_3]','0.5 * ( ( [hh_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,3] / 0.2 ) ^ 3 )'))
    # add event for time 2000
    add_event('Event1', trigger='Time > Values[tev1]', assignments=evassign )

    # set an event for time = 1000 to capture all observables
    evassign = []
    evassign.append(('Values[t1000_wg_0]', '0.5 * ( ( [wg_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,0] / 0.2 ) ^ 3)') )
    evassign.append(('Values[t1000_wg_1]', '0.5 * ( 1 - ( ( [wg_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,1] /  0.2 ) ^ 3 ) )'))
    evassign.append(('Values[t1000_wg_2]', '0.5 * ( ( [wg_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,2] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t1000_wg_3]','0.5 * ( ( [wg_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [wg_0,3] / 0.2 ) ^ 3)'))
    evassign.append(('Values[t1000_en_0]','0.5 * ( ( [en_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,0] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t1000_en_1]','0.5 * ( ( [en_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,1] / 0.2 ) ^ 3)'))
    evassign.append(('Values[t1000_en_2]','0.5 * ( 1 - ( ( [en_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,2] / 0.2 ) ^ 3 ) )'))
    evassign.append(('Values[t1000_en_3]','0.5 * ( ( [en_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [en_0,3] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t1000_hh_0]','0.5 * ( ( [hh_0,0] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,0] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t1000_hh_1]','0.5 * ( ( [hh_0,1] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,1] / 0.2 ) ^ 3 )'))
    evassign.append(('Values[t1000_hh_2]','0.5 * ( 1 - ( ( [hh_0,2] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,2] / 0.2 ) ^ 3 ))'))
    evassign.append(('Values[t1000_hh_3]','0.5 * ( ( [hh_0,3] / 0.2 ) ^ 3 ) / ( 1 + ( [hh_0,3] / 0.2 ) ^ 3 )'))
    # set event for time 1000
    add_event('Event2', trigger='Time > Values[tev2]', assignments=evassign )
else:
    print(f"This model has less than 4 columns, Score function is useless...\n")
    add_parameter(name='Score', status='assignment', expression='1', unit="1")

#PLOTS
# time course plots for each mRNA and protein, keep them inactive so user can activate at will
for pvar in {'hh', 'ci', 'en', 'wg', 'ptc', 'IWG', 'EN', 'CI', 'CN', 'EWG_T', 'PTC_T', 'PH_T'}:
    pcurves = []
    for i in range(0, gridr):
        for j in range(0, gridc):
            pcurves.append({'name': f'{i},{j}', 'channels': ['Time', f'[{pvar}_{i},{j}]']})
    add_plot( f'{pvar}', tasks='Scan, Time-Course', curves=pcurves, active=False)
if gridc > 3:
    # time course plots for mRNA per each of the 4 cells
    for j in range(0, 3):
        pcurves = []
        for pvar in {'hh', 'ci', 'en', 'wg', 'ptc'}:
            pcurves.append({'name': f'0,{j}', 'channels': ['Time', f'[{pvar}_0,{j}]']})
        add_plot( f'mRNA 0,{j}', tasks='Time-Course', curves=pcurves, active=False)
    # time course plots for proteins per each of the 4 cells
    for j in range(0, 3):
        pcurves = []
        for pvar in {'CI', 'CN', 'EN', 'IWG', 'EWG_T', 'PH_T', 'PTC_T'}:
            pcurves.append({'name': f'0,{j}', 'channels': ['Time', f'[{pvar}_0,{j}]']})
        add_plot( f'Proteins 0,{j}', tasks='Time-Course', curves=pcurves, active=False)


#REPORTS
# add a report for all steady state concentrations
rheader = []
rfooter = []
# add simple species (those that are one per cell)
for pvar in ['hh', 'ci', 'en', 'wg', 'ptc', 'IWG', 'EN', 'CI', 'CN', 'PH', 'EWG_T', 'PTC_T']:
    for i in range(0, gridr):
        for j in range(0, gridc):
            rheader.append(wrap_copasi_string(f'[{pvar}_{i},{j}]'))
            rfooter.append(f'[{pvar}_{i},{j}]')
# add membrane species, those that have 6 pools per cell
for pvar in ['EWG', 'HH', 'PH', 'PTC']:
    for s in range(1, 7):
        for i in range(0, gridr):
            for j in range(0, gridc):
                rheader.append(wrap_copasi_string(f'[{pvar}{s}_{i},{j}]'))
                rfooter.append(f'[{pvar}{s}_{i},{j}]')
add_report('SS Concentrations', task=T.STEADY_STATE, header=rheader, footer=rfooter);
assign_report('SS Concentrations', task=T.STEADY_STATE, filename='ssconcs.tsv', append=True, confirm_overwrite=False)

# add a report for all time course scans
rheader = []
rbody = []
# add the scoring function
rheader.append(wrap_copasi_string('Score'))
rbody.append('Values[Score]')
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
add_report('Score report', task=T.SCAN, header=rheader, body=rbody);
assign_report('Score report', task=T.SCAN, filename='scanparams.tsv', append=False, confirm_overwrite=False)

# Parameter ranges for sampling below were adjusted with information in the file 'spg1_01_4cell.net
# which is part of IngeneueInMathematicaV100.zip obtained from the Internet Archive:
# https://web.archive.org/web/20100813195616/http://rusty.fhl.washington.edu/ingeneue/mathematica.html

# Setting up a random sampling of the 48 parameters and an optimization to find the
# minimum of Score by varying the same 48 parameters, assign it to random search
set_scan_settings(subtask='Time-Course', output_during_subtask=False, continue_on_error=True )
# The number of repeats can easily be changed by the user in the COPASI GUI, we set it to 10 here
add_scan_item(type='repeat', num_steps=10)
parml = []
set_opt_settings({'expression': 'Values[Score]', 'subtask': T.TIME_COURSE, 'problem': {'Maximize': False,
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


# OTHER INITIAL CONDITIONS
# first store the original initial conditions (for any topology)
add_parameter_set('row 1 - Crisp')

# we add the other initial conditions if there are more than 3 columns
if(gridc>3):

    # set up degraded initial condition
    ci0 = 0.05
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            jmod4 = j % 4
            if jmod4==0:
                en0 = 0.25
                wg0 = 0.2
            elif jmod4==1:
                en0 = 0.35
                wg0 = 0.3
            elif jmod4==2:
                en0 = 0.55
                wg0 = 0.2
            elif jmod4==3:
                en0 = 0.35
                wg0 = 0.1

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=zero_conc)
            set_species(f'CN{app}', initial_concentration=zero_conc)
            set_species(f'hh{app}', initial_concentration=zero_conc)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=zero_conc)
                set_species(f'PTC{s}{app}', initial_concentration=zero_conc)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 600
    set_parameters(name='tev1', exact=True, initial_value=600)
    # add this to the saved parameter sets
    add_parameter_set('row 2 - Degraded')

    # set up Crisp, plus ubiquitous low level ci and ptc
    ci0 = 0.15
    ptc0 = 0.15
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            if (j-1) % 4 == 0:
                wg0 = 1
            else:
                wg0 = zero_conc
            if (j-1-1) % 4 == 0:
                en0 = 1
            else:
                en0 = zero_conc

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=zero_conc)
            set_species(f'CN{app}', initial_concentration=zero_conc)
            set_species(f'hh{app}', initial_concentration=zero_conc)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=zero_conc)
                set_species(f'PTC{s}{app}', initial_concentration=zero_conc)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 200
    set_parameters(name='tev1', exact=True, initial_value=200)
    # add this to the saved parameter sets
    add_parameter_set('row 3 - Crisp, plus ubiquitous ci and ptc')

    # set up Three-cell band of ci, stripe of wg on posterior margin
    ptc0 = zero_conc
    en0 = zero_conc
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            jmod4 = j % 4
            if jmod4==0:
                ci0 = 0.45
                wg0 = zero_conc
            elif jmod4==1:
                ci0 = 0.45
                wg0 = 0.9
            elif jmod4==2:
                ci0 = zero_conc
                wg0 = zero_conc
            elif jmod4==3:
                ci0 = 0.45
                wg0 = zero_conc

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=zero_conc)
            set_species(f'CN{app}', initial_concentration=zero_conc)
            set_species(f'hh{app}', initial_concentration=zero_conc)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=zero_conc)
                set_species(f'PTC{s}{app}', initial_concentration=zero_conc)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 600
    set_parameters(name='tev1', exact=True, initial_value=600)
    # add this to the saved parameter sets
    add_parameter_set('row 4 - Three-cell band of ci, stripe of wg on posterior margin')

    # set up Three-cell band of ptc, stripe of en on anterior margin
    ci0 = zero_conc
    wg0 = zero_conc
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            jmod4 = j % 4
            if jmod4==0:
                ptc0 = 0.45
                en0 = zero_conc
            elif jmod4==1:
                ptc0 = zero_conc
                en0 = zero_conc
            elif jmod4==2:
                ptc0 = 0.45
                en0 = 0.9
            elif jmod4==3:
                ptc0 = 0.45
                en0 = zero_conc

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=zero_conc)
            set_species(f'CN{app}', initial_concentration=zero_conc)
            set_species(f'hh{app}', initial_concentration=zero_conc)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=zero_conc)
                set_species(f'PTC{s}{app}', initial_concentration=zero_conc)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 600
    set_parameters(name='tev1', exact=True, initial_value=600)
    # add this to the saved parameter sets
    add_parameter_set('row 5 - Three-cell band of ptc, stripe of en on anterior margin')

    # set up Three-cell band of ptc, out of phase three-cell band of ci
    en0 = zero_conc
    wg0 = zero_conc
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            jmod4 = j % 4
            if jmod4==0:
                ptc0 = 0.9
                ci0 = 0.9
            elif jmod4==1:
                ptc0 = zero_conc
                ci0 = 0.9
            elif jmod4==2:
                ptc0 = 0.9
                ci0 = zero_conc
            elif jmod4==3:
                ptc0 = 0.9
                ci0 = 0.9

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=zero_conc)
            set_species(f'CN{app}', initial_concentration=zero_conc)
            set_species(f'hh{app}', initial_concentration=zero_conc)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=zero_conc)
                set_species(f'PTC{s}{app}', initial_concentration=zero_conc)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 600
    set_parameters(name='tev1', exact=True, initial_value=600)
    # add this to the saved parameter sets
    add_parameter_set('row 6 - Three-cell band of ptc, out of phase three-cell band of ci')

    # set up Close to targe pattern
    for i in range(0, gridr):
        for j in range(0, gridc):
            # the cell coordinates
            app='_{},{}'.format(i,j)
            jmod4 = j % 4
            if jmod4==0:
                ptc0 = 0.1
                PTC0 = 0.1
                ci0 = 0.45
                CI0 = 0.1
                CN0 = 0.45
                en0 = zero_conc
                wg0 = zero_conc
                hh0 = zero_conc
            elif jmod4==1:
                ptc0 = 0.45
                PTC0 = zero_conc
                ci0 = 0.45
                CI0 = 0.45
                CN0 = 0.1
                en0 = zero_conc
                wg0 = 0.9
                hh0 = zero_conc
            elif jmod4==2:
                ptc0 = zero_conc
                PTC0 = zero_conc
                ci0 = zero_conc
                CI0 = zero_conc
                CN0 = zero_conc
                en0 = 0.9
                wg0 = zero_conc
                hh0 = 0.9
            elif jmod4==3:
                ptc0 = 0.45
                PTC0 = zero_conc
                ci0 = 0.45
                CI0 = 0.45
                CN0 = 0.1
                en0 = zero_conc
                wg0 = zero_conc
                hh0 = zero_conc

            set_species(f'en{app}', initial_concentration=en0)
            set_species(f'EN{app}', initial_concentration=en0)
            set_species(f'ci{app}', initial_concentration=ci0)
            set_species(f'CI{app}', initial_concentration=CI0)
            set_species(f'CN{app}', initial_concentration=CN0)
            set_species(f'hh{app}', initial_concentration=hh0)
            set_species(f'ptc{app}', initial_concentration=ptc0)
            set_species(f'wg{app}', initial_concentration=wg0)
            set_species(f'IWG{app}', initial_concentration=wg0)
            for s in range(1, 7):
                set_species(f'HH{s}{app}', initial_concentration=hh0)
                set_species(f'PTC{s}{app}', initial_concentration=PTC0)
                set_species(f'EWG{s}{app}', initial_concentration=wg0)
                set_species(f'PH{s}{app}', initial_concentration=zero_conc)

    # this one measures at 600
    set_parameters(name='tev1', exact=True, initial_value=200)
    # add this to the saved parameter sets
    add_parameter_set('row 7 - Close to target pattern')

if altratelaws==False:
    cpsfile = f'vonDassow2000_{gridr}x{gridc}.cps'
else:
    cpsfile = f'vonDassow2000_{gridr}x{gridc}_alt.cps'

# save the COPASI model
#save_model(cpsfile, overwrite=True)

# and an SBML version but this could be done in the GUI...
#save_model(sbmlfile, type='sbml')

# get the model into a string
smodel = save_model_to_string()
# look for insertion point
index = smodel.find('</GUI>')
if( index == -1 ):
    index = smodel.find('</ListOfPlots>')
    if( index == -1):
        print("Could not include a diagram, check source code and model, something is fishy...\n")
        # we can't add the diagram, just save the model in the easy way
        save_model(cpsfile, overwrite=True)
        exit
    index += 14
else:
    index += 6
#open file
outfile = open(cpsfile, 'w')
# save first part of .cps file
outfile.write(smodel[:index])
# write out the layout, start with header
outfile.write("\n  <ListOfLayouts xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n    <Layout key=\"Layout_1\" name=\"Cell Diagram\">")
# dimensions: width 70*(gridc+2)
width = 70*(gridc+2)
if 1000 > width:
        width = 1000
outfile.write(f"\n      <Dimensions width=\"{width}\" height=\"1000\"/>")
outfile.write("\n      <ListOfMetabGlyphs>")
keynum=2 # to make IDs unique
spid = []
# let's iterate over all cells in the first row
# add the metabolite glyphs
for j in range(0, gridc):
    # for each cell 0, j
    app='_0,{}'.format(j)
    # x coordinate for this colum
    posx = 70 + 60*j
    # add a column with the desired species
    ix =0
    for species in ['en', 'wg', 'ptc', 'ci', 'CI', 'CN', 'hh', 'PH_T']:
        # y coordinate for this species
        posy = 30 + 60*ix
        #search the id of the species
        sp = f'{species}{app}'
        patt = re.search(rf"<Metabolite\s+key=\"([a-zA-Z0-9_]+)\"\s+name=\"{sp}\"", smodel)
        if( patt==None ):
            print(f'\ncould not find id for {sp} in the model\n')
            raise
        metid = patt.group(1)
        outfile.write(f"\n        <MetaboliteGlyph key=\"Layout_{keynum}\" name=\"{sp}\" metabolite=\"{metid}\">")
        # keep the id in a list, we'll need it later
        if j == 0:
            spid.append(f"Layout_{keynum}")
        outfile.write("\n          <BoundingBox>")
        outfile.write(f"\n            <Position x=\"{posx}\" y=\"{posy}\"/>")
        outfile.write("\n            <Dimensions width=\"30\" height=\"30\"/>")
        outfile.write("\n          </BoundingBox>")
        outfile.write("\n        </MetaboliteGlyph>")
        keynum += 1
        ix += 1
outfile.write("\n      </ListOfMetabGlyphs>\n      <ListOfTextGlyphs>")
# add the text glyphs
ix =0
for species in ['en', 'wg', 'ptc', 'ci', 'CI', 'CN', 'hh', 'PH']:
    # y coordinate for this species
    posy = 30 + 60*ix
    outfile.write(f"\n        <TextGlyph key=\"Layout_{keynum}\" name=\"TextGlyph\" graphicalObject=\"{spid[ix]}\" text=\"{species}\">")
    outfile.write("\n          <BoundingBox>")
    outfile.write(f"\n            <Position x=\"10\" y=\"{posy}\"/>")
    outfile.write("\n            <Dimensions width=\"30\" height=\"30\"/>")
    outfile.write("\n          </BoundingBox>")
    outfile.write("\n        </TextGlyph>")
    keynum += 1
    ix += 1
# close out diagram
outfile.write("\n      </ListOfTextGlyphs>\n    </Layout>\n  </ListOfLayouts>")
# write out the rest of the cps file
outfile.write(smodel[index:])
outfile.close()
