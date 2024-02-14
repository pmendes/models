<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.39.272 (Source) (http://www.copasi.org) at 2024-02-14T15:51:58Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="39" versionDevel="272" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="translation" type="Function" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*mRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="mRNA" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="transcription inducer-repressor pair" type="Function" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="M2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="h2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="h1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="k1" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="transcription inducer-repressor pair + inducer" type="Function" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*((alpha1 * ((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1 + M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3))/(1+alpha1*((M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1)/(k1^h1+M1*(1-((M2^h2)/(k2^h2+M2^h2)))^h1))+alpha3*(M3^h3)/(k3^h3+M3^h3)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="alpha1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="h2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="k2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="h1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="k1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="alpha3" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="M3" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="h3" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="k3" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="first order w/ activator" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*S*(M^h)/(k^h+M^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_291" name="h" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="k" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Uni-molecular transport" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vol*k1*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="Vol" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="S" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Pseudo bi-molecular reaction with transport" type="Function" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1*Vol1*S1*Vol2*S2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Vol1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_304" name="S1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="Vol2" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_308" name="S2" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Segment Polarity Network model in a single cell" simulationType="time" timeUnit="1" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="1" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:1830"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1038/35018085"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-02-14T15:51:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>pmendes@uchc.edu</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mendes</vCard:Family>
            <vCard:Given>Pedro</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Connecticut School of Medicine</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:is rdf:resource="urn:miriam:go:GO:0007367"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>Segment polarity network model in one cell</h1><p>This is an implementation of the  model in von Dassow et al (2000) for a single cell. Note that the original paper describes an arrangement of several hexagonal cells. This model was created as a building block but may also be useful as a way to analyze the original network without cell-cell communication.</p><p>The model contains species that reside in the cell membrane (<i>EWG</i>, <i>PTC</i>, <i>HH</i>, and <i>PH</i>). Since the cells are hexagonal, the model partitions these species into 6 different pools, one per side of the hexagon. The model allows for these species to diffuse around the membrane, which is implemented (in the original and here) by transfer reactions between a pool and the two neighboring pools. The sides of the hexagon are labelled 1-6, with 1 at the base, and numbered clockwise (this is more important in the multicellular version of this model).</p><p>In the multicellular model, several reactions are influenced by species in neighboring cells. Here we set those species to be constant (fixed concentration):<ul> <li><i>EWG_i_ext</i> (<i>i = 1..6</i>).</li> <li><i>PH_i_ext</i>  (<i>i = 1..6</i>).</li> <li><i>HH_i_ext</i>  (<i>i = 1..6</i>).</li></ul></p><h2>Reference</h2><p>von Dassow G, Meir E, Munro EM, Odell GM (2000) <a href="https://doi.org/10.1038/35018085">The segment polarity network is a robust developmental module</a> Nature 406:188–192</p><hr width="70%" /><p>This COPASI file was created by Pedro Mendes with a python script, <i>vonDassow2000_1cell.py</i>, using <a href="https://github.com/copasi/basico">BasiCO, a simplified python interface to COPASI</a>.</p><p>version: 4</p><hr width="70%" /><p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p></body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="external" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="en" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:fb:FBgn0000577"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="EN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P02836"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005634"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ci" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:fb:FBgn0004859"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P19538"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005634"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="CN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P19538"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005634"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="hh" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:fb:FBgn0004644"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="HH1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="HH2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="HH3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="HH4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="HH5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="HH6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="ptc" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:fb:FBgn0003892"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PTC1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PTC2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="PTC3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PTC4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PTC5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PTC6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="wg" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:fb:FBgn0284084"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="IWG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005737"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="EWG1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="EWG2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="EWG3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="EWG4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="EWG5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="EWG6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="PH1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="PH2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="PH3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="PH4" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="PH5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="PH6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="B" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="EWG1_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="EWG2_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="EWG3_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="EWG4_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="EWG5_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="EWG6_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="HH1_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="HH2_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="HH3_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="HH4_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="HH5_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="HH6_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="PTC1_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="PTC2_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="PTC3_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="PTC4_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="PTC5_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="PTC6_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="PH1_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="PH2_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="PH3_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="PH4_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="PH5_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="PH6_ext" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="PTC_T" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC1],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC2],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC3],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC4],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC5],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC6],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="HH_T" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH1],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH2],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH3],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH4],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH5],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH6],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="PH_T" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P18502"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q02936"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH1],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH2],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH3],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH4],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH5],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH6],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="EWG_T" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P09615"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005886"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG1_ext],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG2_ext],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG3_ext],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG4_ext],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG5_ext],Reference=Concentration>+&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG6_ext],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="T0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="H_en" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="H_EN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="H_wg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="H_IWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="H_EWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="H_ptc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="H_PTC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="H_ci" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="H_CI" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="H_hh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="H_HH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="H_PH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="C_CI" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kappa_WGen" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="nu_WGen" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="kappa_CNen" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="nu_CNen" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kappa_CNwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="nu_CNwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kappa_CIwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="nu_CIwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kappa_WGwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="nu_WGwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="alpha_CIwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="alpha_WGwg" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kappa_CNptc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="nu_CNptc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="kappa_CIptc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="nu_CIptc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kappa_Bci" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="nu_Bci" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kappa_ENci" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="nu_ENci" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kappa_ENhh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="nu_ENhh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="kappa_CNhh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="nu_CNhh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kappa_PTCCI" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="nu_PTCCI" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="r_ExoWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="r_EndoWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="r_MxferWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="r_LMxferWG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="r_LMxferPTC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="r_LMxferHH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kappa_PTCHH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="PTC_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="HH_0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="T0/H_EN" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EN],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="T0/H_PH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PH],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="T0/H_EWG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EWG],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="T0/H_wg" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_wg],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="T0/H_CI" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_CI],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="T0/H_HH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="T0/H_en" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_en],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="T0/H_ci" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ci],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="T0/H_IWG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_IWG],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="T0/H_ptc" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ptc],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="T0/H_PTC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="T0/H_hh" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_hh],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="T0/6H_HH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/(6*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="T0/6H_PTC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>/(6*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="T0.r_ExoWG/6" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_ExoWG],Reference=Value>/6
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="T0.r_EndoWG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_EndoWG],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="T0.C_CI" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[C_CI],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="T0.r_MxferWG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_MxferWG],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="T0.r_LMxferWG" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferWG],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="T0.r_LMxferHH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferHH],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="T0.kappa_PTCHH.HH_0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[HH_0],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="T0.kappa_PTCHH.PTC_0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH],Reference=Value>*&lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[PTC_0],Reference=Value>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R01" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7379" name="V" value="0.1"/>
          <Constant key="Parameter_7378" name="h2" value="0.1"/>
          <Constant key="Parameter_7376" name="k2" value="0.1"/>
          <Constant key="Parameter_7375" name="h1" value="0.1"/>
          <Constant key="Parameter_7377" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R02" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7382" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R03" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7374" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R04" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7370" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R05" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7380" name="V" value="0.1"/>
          <Constant key="Parameter_7372" name="h2" value="0.1"/>
          <Constant key="Parameter_7369" name="k2" value="0.1"/>
          <Constant key="Parameter_7368" name="h1" value="0.1"/>
          <Constant key="Parameter_7781" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="R06" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7371" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="R07" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7782" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="R08" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7783" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="R09" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7373" name="V" value="0.1"/>
          <Constant key="Parameter_7817" name="h" value="0.1"/>
          <Constant key="Parameter_7818" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="R10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7780" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="R11" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7784" name="V" value="0.1"/>
          <Constant key="Parameter_7819" name="h2" value="0.1"/>
          <Constant key="Parameter_7797" name="k2" value="0.1"/>
          <Constant key="Parameter_7798" name="h1" value="0.1"/>
          <Constant key="Parameter_7800" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="R12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7820" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="R13_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7796" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="R13_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8282" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="R13_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7816" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="R13_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8285" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="R13_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8281" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="R13_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8284" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="R14_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7799" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="R14_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8283" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="R14_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7366" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="R14_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7365" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="R14_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7367" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="R14_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7364" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="R15" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8253" name="V" value="0.1"/>
          <Constant key="Parameter_8255" name="h2" value="0.1"/>
          <Constant key="Parameter_8251" name="k2" value="0.1"/>
          <Constant key="Parameter_8254" name="h1" value="0.1"/>
          <Constant key="Parameter_7361" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="R16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8252" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="R17_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7360" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="R17_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7359" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="R17_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7363" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="R17_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7356" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="R17_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7355" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="R17_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7357" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="R18_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7362" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="R18_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7358" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="R18_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7354" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="R18_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7353" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="R18_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8552" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="R18_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8553" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="R19" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8554" name="V" value="0.1"/>
          <Constant key="Parameter_7351" name="alpha1" value="0.1"/>
          <Constant key="Parameter_7350" name="h2" value="0.1"/>
          <Constant key="Parameter_7352" name="k2" value="0.1"/>
          <Constant key="Parameter_7349" name="h1" value="0.1"/>
          <Constant key="Parameter_7348" name="k1" value="0.1"/>
          <Constant key="Parameter_8607" name="alpha3" value="0.1"/>
          <Constant key="Parameter_8608" name="h3" value="0.1"/>
          <Constant key="Parameter_8610" name="k3" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="R20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8551" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="R21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7744" name="k" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="R22" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7741" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="R23_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7346" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="R23_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7743" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="R23_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8609" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="R23_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7742" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="R23_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7740" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="R23_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8606" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="R24_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8555" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="R24_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7345" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="R24_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7347" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="R24_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7344" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="R24_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7343" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="R24_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7341" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="R25_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7340" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="R25_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7342" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="R25_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7339" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="R25_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7338" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="R25_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7337" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="R25_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7336" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="R26_16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7335" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="R26_61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7334" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="R26_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7333" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="R26_21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7325" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="R26_23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7324" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="R26_32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7326" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="R26_34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7323" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="R26_43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7322" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="R26_45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7320" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="R26_54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7319" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="R26_56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7321" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="R26_65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7318" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="R27_16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7317" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="R27_61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7315" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="R27_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7314" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="R27_21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7316" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="R27_23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7313" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="R27_32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7312" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="R27_34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8512" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="R27_43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8513" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="R27_45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8515" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="R27_54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8511" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="R27_56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8514" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="R27_65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7310" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="R28_16" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7309" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="R28_61" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7311" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="R28_12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7308" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="R28_21" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_87">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7307" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="R28_23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7306" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="R28_32" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7305" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="R28_34" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7304" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="R28_43" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7302" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="R28_45" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7301" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="R28_54" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_93">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7303" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="R28_56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7300" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="R28_65" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7299" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="R29_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8192" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="R29_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8193" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="R29_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8195" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="R29_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8191" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="R29_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_100">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_8194" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="R29_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_101">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7297" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="R30a_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_102">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7296" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="R30a_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_103">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7298" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="R30a_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_104">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7295" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="R30a_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_105">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7294" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="R30a_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_106">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7292" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="R30a_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_107">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7291" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="R30b_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_108">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7293" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="R30b_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_109">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7290" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="R30b_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_110">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7289" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="R30b_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_111">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7287" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="R30b_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_112">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7286" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="R30b_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_113">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7288" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="R31a_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_114">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7285" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="R31a_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_115">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7284" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="R31a_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_116">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7282" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="R31a_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_117">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7281" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="R31a_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_118">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7283" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="R31a_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_119">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7280" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="R31b_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_120">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7279" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="R31b_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_121">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8787" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="R31b_3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_122">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8788" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="R31b_4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_123">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8790" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="R31b_5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_124">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8786" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="R31b_6" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_125">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8789" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[en]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EN]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ci]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CI]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CN]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[hh]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH1]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH2]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH3]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH4]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH5]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH6]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ptc]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC1]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC2]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC3]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC4]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC5]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC6]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[wg]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[IWG]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG1]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG2]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG3]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG4]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG5]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG6]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH1]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH2]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH3]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH4]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH5]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH6]" value="9.9999999999999995e-21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[B]" value="0.40000000000000002" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG1_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG2_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG3_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG4_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG5_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[EWG6_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH1_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH2_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH3_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH4_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH5_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[HH6_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC1_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC2_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC3_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC4_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC5_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PTC6_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH1_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH2_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH3_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH4_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH5_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[external],Vector=Metabolites[PH6_ext]" value="0.20000000000000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC_T]" value="5.9999999999999994e-20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH_T]" value="5.9999999999999994e-20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH_T]" value="5.9999999999999994e-20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG_T]" value="1.2" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_en]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EN]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_wg]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_IWG]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EWG]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ptc]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ci]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_CI]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_hh]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PH]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[C_CI]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGen]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGen]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNen]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNen]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNwg]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNwg]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIwg]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIwg]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGwg]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGwg]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_CIwg]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_WGwg]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNptc]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNptc]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIptc]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIptc]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_Bci]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_Bci]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENci]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENci]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENhh]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENhh]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNhh]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNhh]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCCI]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_PTCCI]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_ExoWG]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_EndoWG]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_MxferWG]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferWG]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferPTC]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferHH]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[PTC_0]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[HH_0]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EN]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_wg]" value="0.14285714285714285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_CI]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_en]" value="0.14285714285714285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ci]" value="0.14285714285714285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_IWG]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ptc]" value="0.14285714285714285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC]" value="0.066666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_hh]" value="0.14285714285714285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH]" value="0.011111111111111112" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC]" value="0.011111111111111112" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6]" value="0.016666666666666666" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.C_CI]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0]" value="100" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=V" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_en],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=h2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNen],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNen],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=h1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGen],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R01],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGen],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R02]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R02],ParameterGroup=Parameters,Parameter=k1" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_en],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R03]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R03],ParameterGroup=Parameters,Parameter=k" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R04]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R04],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=V" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=h2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=h1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_Bci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R05],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_Bci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R06]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R06],ParameterGroup=Parameters,Parameter=k1" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ci],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R07]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R07],ParameterGroup=Parameters,Parameter=k" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_CI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R08]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R08],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_CI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R09]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R09],ParameterGroup=Parameters,Parameter=V" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.C_CI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R09],ParameterGroup=Parameters,Parameter=h" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_PTCCI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R09],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCCI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R10],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_CI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=V" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_hh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=h2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNhh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNhh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=h1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENhh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R11],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENhh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R12],ParameterGroup=Parameters,Parameter=k1" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_hh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_1],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_2],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_3],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_4],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_5],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R13_6],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_1],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_2],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_3],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_4],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_5],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R14_6],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_HH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=V" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=h2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=h1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R15],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R16],ParameterGroup=Parameters,Parameter=k1" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_ptc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_1],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_2],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_3],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_4],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_5],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R17_6],ParameterGroup=Parameters,Parameter=k" value="0.011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/6H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_1],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_2],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_3],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_4],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_5],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R18_6],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PTC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=V" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_wg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=alpha1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_CIwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=h2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=h1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=alpha3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_WGwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=h3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R19],ParameterGroup=Parameters,Parameter=k3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGwg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R20],ParameterGroup=Parameters,Parameter=k1" value="0.14285714285714285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_wg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R21],ParameterGroup=Parameters,Parameter=k" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_IWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R22],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_IWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_1],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_2],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_3],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_4],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_5],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R23_6],ParameterGroup=Parameters,Parameter=k1" value="0.016666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_ExoWG/6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_1],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_2],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_3],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_4],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_5],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R24_6],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_EndoWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_1],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_2],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_3],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_4],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_5],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R25_6],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_EWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_16],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_61],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_12],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_21],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_23],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_32],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_34],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_43],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_45],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_54],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_56],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R26_65],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_16],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_61],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_12],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_21],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_23],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_32],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_34],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_43],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_45],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_54],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_56],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R27_65],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_16],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_61],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_12],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_21],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_23],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_32],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_34],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_43],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_45],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_54],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_56],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R28_65],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_LMxferHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_1],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_2],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_3],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_4],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_5],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R29_6],ParameterGroup=Parameters,Parameter=k1" value="0.066666666666666666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0/H_PH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_1],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_2],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_3],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_4],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_5],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30a_6],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.HH_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_1],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_2],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_3],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_4],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_5],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R30b_6],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.kappa_PTCHH.PTC_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_1],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_2],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_3],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_4],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_5],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31a_6],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_1],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_2],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_3],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_4],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_5],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Reactions[R31b_6],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[T0.r_MxferWG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 0.10000000000000001 9.9999999999999995e-21 0.10000000000000001 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 9.9999999999999995e-21 5.9999999999999994e-20 5.9999999999999994e-20 5.9999999999999994e-20 1.2 0.066666666666666666 0.066666666666666666 0.066666666666666666 0.14285714285714285 0.066666666666666666 0.066666666666666666 0.14285714285714285 0.14285714285714285 0.066666666666666666 0.14285714285714285 0.066666666666666666 0.14285714285714285 0.011111111111111112 0.011111111111111112 0.016666666666666666 0.001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 100 100 0.40000000000000002 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 0.20000000000000001 1 1 1 7 15 7 15 15 7 15 7 15 7 15 15 0.10000000000000001 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 1 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 1 0.10000000000000001 0.001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 1000 1000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_22" target="ssconcs.tsv" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="55"/>
        <Parameter name="StepSize" type="float" value="20"/>
        <Parameter name="Duration" type="float" value="1100"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_23" target="scanparams.tsv" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="0"/>
            <Parameter name="Object" type="cn" value=""/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_en],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EN],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_wg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_IWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ptc],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ci],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_CI],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_hh],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PH],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="5"/>
            <Parameter name="Maximum" type="float" value="100"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGen],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNen],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNptc],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIptc],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_Bci],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENci],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENhh],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNhh],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCCI],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNen],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGen],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNptc],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIptc],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_Bci],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENci],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENhh],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNhh],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_PTCCI],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_CIwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_WGwg],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_ExoWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_EndoWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_MxferWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferWG],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferPTC],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferHH],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[C_CI],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.001"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[PTC_0],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="1000"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="0"/>
            <Parameter name="Type" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[HH_0],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="1"/>
            <Parameter name="Maximum" type="float" value="1000"/>
            <Parameter name="log" type="bool" value="1"/>
            <Parameter name="Distribution type" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="1"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          1
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_en],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EN],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_wg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_IWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ptc],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ci],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_CI],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_hh],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="5.0"/>
            <Parameter name="UpperBound" type="cn" value="100.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGen],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNen],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNptc],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIptc],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_Bci],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENci],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENhh],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNhh],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCCI],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNen],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGen],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNptc],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIptc],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_Bci],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENci],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENhh],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNhh],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_PTCCI],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_CIwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_WGwg],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="10.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_ExoWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_EndoWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_MxferWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferWG],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferPTC],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferHH],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[C_CI],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="0.001"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[PTC_0],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="1000.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[HH_0],Reference=InitialValue"/>
            <Parameter name="LowerBound" type="cn" value="1.0"/>
            <Parameter name="UpperBound" type="cn" value="1000.0"/>
            <Parameter name="StartValue" type="float" value="NaN"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_27" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_22" name="SS Concentrations" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Header>
        <Object cn="String=\[hh\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[ci\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[en\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[wg\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[ptc\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[IWG\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EN\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[CI\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[CN\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG_T\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC_T\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG1\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG2\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG3\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG4\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG5\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[EWG6\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH1\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH2\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH3\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH4\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH5\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[HH6\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH1\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH2\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH3\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH4\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH5\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH6\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC1\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC2\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC3\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC4\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC5\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PTC6\]"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[hh],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ci],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[en],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[wg],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ptc],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[IWG],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EN],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CI],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CN],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[PH\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG_T],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC_T],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG3],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG4],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG5],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG6],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH3],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH4],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH5],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH6],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH3],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH4],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH5],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH6],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC3],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC4],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC5],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC6],Reference=Concentration"/>
      </Footer>
    </Report>
    <Report key="Report_23" name="Parameter scan report" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Header>
        <Object cn="String=CPUt"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_en"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_EN"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_wg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_IWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_EWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_ptc"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_PTC"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_ci"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_CI"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_hh"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_HH"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=H_PH"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_WGen"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CNen"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CNwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CIwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_WGwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CNptc"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CIptc"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_Bci"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_ENci"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_ENhh"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_CNhh"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_PTCCI"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=kappa_PTCHH"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CNen"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CNwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CIwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_WGwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_WGen"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CNptc"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CIptc"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_Bci"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_ENci"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_ENhh"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_CNhh"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=nu_PTCCI"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=alpha_CIwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=alpha_WGwg"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_ExoWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_EndoWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_MxferWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_LMxferWG"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_LMxferPTC"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=r_LMxferHH"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=C_CI"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=PTC_0"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=HH_0"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Scan],Timer=CPU Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_en],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EN],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_wg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_IWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_EWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ptc],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PTC],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_ci],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_CI],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_hh],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_HH],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[H_PH],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGen],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNen],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_WGwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNptc],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CIptc],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_Bci],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENci],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_ENhh],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_CNhh],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCCI],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[kappa_PTCHH],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNen],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_WGen],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNptc],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CIptc],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_Bci],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENci],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_ENhh],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_CNhh],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[nu_PTCCI],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_CIwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[alpha_WGwg],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_ExoWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_EndoWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_MxferWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferWG],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferPTC],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[r_LMxferHH],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[C_CI],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[PTC_0],Reference=Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Values[HH_0],Reference=Value"/>
      </Body>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="mRNA" type="Plot2D" active="0" taskTypes="Time-Course, Scan">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="en" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[en],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="ptc" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ptc],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="wg" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[wg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="hh" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[hh],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="ci" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[ci],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="proteins" type="Plot2D" active="0" taskTypes="Time-Course, Scan">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="CI" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CI],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EN" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="CN" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[CN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH_T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH_T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="IWG" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[IWG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH_T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH_T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG_T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG_T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC_T" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC_T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="membrane proteins" type="Plot2D" active="0" taskTypes="Time-Course, Scan">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="EWG4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC5" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH5" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH3" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG5" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG3" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC6" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PTC3" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PTC3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH3" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="EWG1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[EWG1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="HH1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[HH1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH4" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="PH5" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Segment Polarity Network model in a single cell,Vector=Compartments[cell],Vector=Metabolites[PH5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
