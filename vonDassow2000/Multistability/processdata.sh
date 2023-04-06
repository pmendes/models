#!/bin/bash
# processes 100 parameter sampling files into a single one
# further processes the data to find the parameter sets with
# multiple steady states and with single steady states
#!/usr/bin/bash

# 1. ALL STEADY STATES
# use COPASI generated MultistabilitySampling1.tsv file, create a new file that removes
# lines that have the same starting 12 characters; this is because we have dScore at the
# front and different steady states have different value of dScore (so we don't have to
# compare the columns one by one, which could be essentially the same but don't match
# character by character due to FP precision also make sure lines with only whitespace
# become really  empty line, finally remove empty lines at the end

uniq -w 12 MultistabilitySampling1.tsv | sed -E 's/^\s+$//' | awk 'length == 0 { ++n; next } { while (n) { print ""; --n } }; 1'  > MultistabilitySampling1_allSS.tsv

# 2. PARAMETER SETS WITH MULTIPLE STEADY STATES
# remove single lines between empty lines and remove empty lines at the end
awk 'BEGIN {RS=ORS="\n"; l1=l2="" } NR==1 {print; next} NF>0 { if(l1=="") l1=$0; else if(l2=="") {l2=l1; l1=$0} else {print l2; l2=l1; l1=$0}} NF==0 {if (l2=="") {l1=""; next} else {print l2; print l1; print $0; l2=l1=""}}' MultistabilitySampling1_allSS.tsv  | awk 'length == 0 { ++n; next } { while (n) { print ""; --n } }; 1'  > MultistabilitySampling1_multipleSS.tsv
# now create a file only with the parameters only (columns 2-49)
# keep only one line for each parameter set, label as multistable (class=1)
awk 'NF>0 {for(i=2;i<=49;i++) printf $i"\t"; if(NR>1) {print "1"} else {print "class"} }' MultistabilitySampling1_multipleSS.tsv | uniq > MultistabilitySampling1_parameters.tsv

#add two empty lines to file, so that it is compatible with gnuplot index
echo "" >> MultistabilitySampling1_parameters.tsv
echo "" >> MultistabilitySampling1_parameters.tsv

# 3. PARAMETER SETS WITH SINGLE STEADY STATES
# remove blocks of lines that have more than one consecutive non-empty line
# keep only lines that are bounded by two empty lines; remove empty lines at the end
awk 'BEGIN {RS=ORS="\n"; l1=""; block=0 } NR==1 {print; next} NF>0 { if(l1=="") l1=$0; else { block++; next} } NF==0 {if (block>0) {l1=""; block=0; next} else {print l1; print $0; l1=""; block=0}}' MultistabilitySampling1_allSS.tsv | awk 'length == 0 { ++n; next } { while (n) { print ""; --n } }; 1'  > MultistabilitySampling1_singleSS.tsv
# now output only the parameters to the parameter file (columns 2-49)
# label as single (class=0)
awk 'NR>1 && NF>0 {for(i=2;i<=49;i++) printf $i"\t"; print "0" }' MultistabilitySampling1_singleSS.tsv >> MultistabilitySampling1_parameters.tsv
