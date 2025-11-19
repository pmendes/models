# models
## Bio/chemical models, mostly in COPASI format, also SBML and OMEX

This is a repository for models I use in my research and teaching. Many have been used in [COPASI](https://copasi.org) tutorials, others are used as benchmarks, while others are historical models, published decades ago and which I have encoded in a format that can be used by modern simulators.

Most models here are in [COPASI's own format _*.cps_](https://copasi.org/Support/Technical_Documentation/File_Format/). Some may be also encoded in [SBML](https://www.sbml.org/), a widely used standard for systems biology models. Others can also be part of an [OMEX format](https://combinearchive.org/index/) file, also known as _COMBINE archive_ (which are zip files containing several model and simulation files). All of these files can be loaded into [COPASI](https://copasi.org) and from there they can be exported to several standards (including SBML and OMEX). Other packages are able to read SBML and OMEX, so these models are not restricted to COPASI.

Most models contain metadata that links them to their original publications and identifies their components, etc. Some may lack such metadata but I strive to include it (in the spirit of [MIRIAM](https://doi.org10.1038/nbt1156)). All models also include comments that identify their origin, purpose, etc. (though, to read these comments they have to be loaded into COPASI).

## Index

| File                   | Description                                               |
|------------------------|-----------------------------------------------------------|
| 100GeneNetwork.cps     | an artificial 100-gene network from the [AGN suite](http://www.comp-sys-bio.org/AGN/) [(pubmed)](https://pubmed.ncbi.nlm.nih.gov/14534181/) |
| AllostericKinetics.cps | simulates a typical enzyme kinetics experiment of an allosteric enzyme |
|ChI_DePitta2009.cps     | core model of IP3-dependent calcium oscillations by [De Pittà et al. (2009)](https://doi.org/10.1007/s10867-009-9155-y) |
| CICR_Li-Rinzel1994.cps | core model of calcium-induded calcium release by [Li and Rinzel](https://doi.org/10.1006/jtbi.1994.1041)|
| Frank1953homochirality.cps | [Frank's model of homochirality](https://doi.org/10.1016/0006-3002(53)90082-1) (1953) |
| Goodwin1963.cps        | the Goodwin oscillator, from [*Temporal organization in cells*](https://doi.org/10.5962/bhl.title.6268) |
| IrreversibleReactionChain.cps | model of a simple irreversible linear chain of reactions |
| Lotka.cps              | the Lotka-Volterra model of oscillating reactions and population dynamics |
| Mendes97TiBS_SignalCascade.cps | model of signalling enzyme cascade controlling metabolism, from [*Biochemistry by numbers*](https://pubmed.ncbi.nlm.nih.gov/9301339/) |

## Licence
Models included here are licensed with CC-Zero license unless they were derived from sources that imposed other restrictions. Most were either created by me, some were edited based on other public sources (such as [Biomodels](https://www.ebi.ac.uk/biomodels/))
