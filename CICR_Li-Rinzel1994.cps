<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 292) (http://www.copasi.org) at 2024-06-24T00:42:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="292" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_9" name="Hill Cooperativity" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_9">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*(substrate/Shalve)^h/(1+(substrate/Shalve)^h)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_42" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_43" name="Shalve" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_44" name="V" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_50" name="h" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_R1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v*(M1/(M1+k1))^3*(M2/(M2+k2))^3*h^3*(c0-(1+c1)*M2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="v" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="M1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="k1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="k2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="h" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="c0" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="c1" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_R2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v*(c0-(1+c1)*M)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="v" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="c0" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="c1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="CICR model by Li and Rinzel" simulationType="time" timeUnit="1" volumeUnit="1" areaUnit="cm²" lengthUnit="cm" quantityUnit="1" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Equations for InsP3 Receptor-mediated [Ca2+]i Oscillations Derived from a Detailed Kinetic Model: A Hodgkin-Huxley Like Formalism</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/jtbi.1994.1041"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-06-20T13:19:22Z</dcterms:W3CDTF>
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>ChI model of calcium oscillations</h1>
<p>This is a core model of calcium-induded calcium release developed by <a href="https://doi.org/10.1006/jtbi.1994.1041">Li and Rinzel</a>, a reduced version of an earlier mechanistic model by <a href="https://doi.org/10.1073/pnas.89.20.9895">De Young and Keizer</a>. The reduction, based on time scale separation, follows a formalism similar to that used by Hodgkin and Huxley to develop a model of excitability of the neuronal plasma membrane.</p>

<h2>Implementation notes</h2>
<p>In this implementation it was decided to use pre-defined rate laws in COPASI. Thus reactions <i>leak</i> and <i>chan</i> are represented with reversible mass action kinetics, where the forward and reverse rate constants are equal (this is only transport, no chemical changes involved). For <i>chan</i> the rate constant is modulated by a function of <i>h</i>, the ratio of activated IP3-regulated calcium channel. Reaction <i>pump</i> is simply represented by irreversible Hill kinetics, which is exactly the rate law used in the paper. This brings the biochemical transformations more explicit. </p>
<p>The explicit construction of C_ER being a function of C and the total calcium in the original paper, is left here implicit, given that the stoichiometry matrix already implies that mass conservation relationship. Internally, COPASI is able to work out this relation and will not calculate C_ER through solution of its ODE, but rather by the algebraic equation reflecting the mass conservation. (this can be worked out by checking the mass conservation task in Stoichiometry)</p>
<p>The resulting equations are equivalent to the original model.
</p>

<p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p></body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cytoplasm" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="ER" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Ca" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29108"/>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00076"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="IP3" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16595"/>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C01245"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Ca_er" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=Value>-&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration>)/&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="v2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="v3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_er" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="v1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="d_act" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="d_ip3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="c0" simulationType="ode" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon],Reference=Value>*(&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in],Reference=Value>-&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4],Reference=Value>*&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration>^2/(&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl],Reference=Value>^2+&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration>^2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="d_inh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="c1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="h" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[a],Reference=Value>*(&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration>+&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh],Reference=Value>)*(&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh],Reference=Value>/(&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration>+&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh],Reference=Value>)-&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="v4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="j_in" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_pl" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="e_j_in" simulationType="assignment" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="e_v4" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4],Reference=Value>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="R2" reversible="true" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7486" name="c1" value="0.185"/>
          <Constant key="Parameter_7485" name="v" value="0.02"/>
          <Constant key="Parameter_7491" name="c0" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="R3" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7487" name="Shalve" value="0.18"/>
          <Constant key="Parameter_7489" name="V" value="0.6"/>
          <Constant key="Parameter_7490" name="h" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="ConcentrationPerTime" scalingCompartment="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7490"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="R1" reversible="true" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8513" name="k2" value="0.4"/>
          <Constant key="Parameter_7492" name="v" value="40"/>
          <Constant key="Parameter_7493" name="h" value="0.8"/>
          <Constant key="Parameter_8514" name="k1" value="0.2"/>
          <Constant key="Parameter_8515" name="c0" value="2"/>
          <Constant key="Parameter_8511" name="c1" value="0.185"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="R5" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8512" name="v" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="R4" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7496" name="h" value="2"/>
          <Constant key="Parameter_7494" name="Shalve" value="0.1"/>
          <Constant key="Parameter_7501" name="V" value="0.018"/>
        </ListOfConstants>
        <KineticLaw function="Function_9" unitType="Default" scalingCompartment="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_42">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_43">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_44">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_50">
              <SourceParameter reference="Parameter_7496"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[ER]" value="0.185" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[IP3]" value="0.59999999999999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca_er]" value="9.7297297297297298" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d1]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0]" value="2" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h]" value="0.80000000000000004" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in]" value="0.012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4]" value="0.018000000000000002" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Shalve" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=V" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=v" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=h" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=v" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Shalve" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V" value="0.018000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="fig3">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[ER]" value="0.185" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[IP3]" value="0.40000000000000002" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d1]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act]" value="0.082339999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3]" value="0.94340000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0]" value="2" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh]" value="1.0489999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[a]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h]" value="0.5" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=v" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Shalve" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=V" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="0.082339999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=h" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.94340000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Shalve" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="fig5a1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[ER]" value="0.185" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[IP3]" value="0.59999999999999998" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d1]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0]" value="2" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h]" value="0.80000000000000004" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in]" value="0.0080000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4]" value="0.018000000000000002" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Shalve" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=V" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=v" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=h" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=v" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Shalve" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V" value="0.018000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="fig5a2">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[ER]" value="0.185" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[IP3]" value="0.59999999999999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca_er]" value="9.7297297297297298" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d1]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0]" value="2" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_inh]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1]" value="0.185" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h]" value="0.80000000000000004" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v4]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[j_in]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[epsilon]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in]" value="0.012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4]" value="0.018000000000000002" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R2],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=Shalve" value="0.17999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_er],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=V" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R3],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k2" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_act],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=v" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[v1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=h" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[d_ip3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c0" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R1],ParameterGroup=Parameters,Parameter=c1" value="0.185" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R5],ParameterGroup=Parameters,Parameter=v" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_j_in],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=h" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=Shalve" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[k_pl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Reactions[R4],ParameterGroup=Parameters,Parameter=V" value="0.018000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[e_v4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2 0.80000000000000004 0.20000000000000001 9.7297297297297298 0.012 0.018000000000000002 0.59999999999999998 1 0.185 0.02 0.59999999999999998 0.17999999999999999 40 0.13 0.40000000000000002 0.20000000000000001 0.40000000000000002 0.185 1 1.8 1.2 0.10000000000000001 0.01 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="100"/>
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
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Type" type="unsignedInteger" value="4"/>
            <Parameter name="Object" type="cn" value=""/>
            <ParameterGroup name="ParameterSet CNs">
              <Parameter name="0" type="cn" value="CN=Root,Model=CICR model by Li and Rinzel,Vector=ParameterSets[fig5a1]"/>
              <Parameter name="1" type="cn" value="CN=Root,Model=CICR model by Li and Rinzel,Vector=ParameterSets[fig5a2]"/>
            </ParameterGroup>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="plot engine" type="string" value="QCustomPlot"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <ListOfPlotItems>
        <PlotItem name="[Ca]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="c0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[c0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="h" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Values[h],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca_er]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=CICR model by Li and Rinzel,Vector=Compartments[Cytoplasm],Vector=Metabolites[Ca_er],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
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
