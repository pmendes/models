<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.38 (Build 268) (http://www.copasi.org) at 2022-12-14T14:26:37Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="38" versionDevel="268" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_2" name="Catalytic activation (irrev)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate*Activator/((Kms+substrate)*(Ka+Activator))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_24" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_23" name="Activator" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_22" name="Kms" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_21" name="V" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_20" name="Ka" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_8">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_46" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_28" name="Reversible Michaelis-Menten" type="PreDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_28">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vf*substrate/Kms-Vr*product/Kmp)/(1+substrate/Kms+product/Kmp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_195" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_196" name="product" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_197" name="Kms" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_198" name="Kmp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_199" name="Vf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_200" name="Vr" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_34" name="Uncompetitive inhibition (irr)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate*(1+Inhibitor/Ki))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_242" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_241" name="Inhibitor" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_240" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_239" name="V" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_238" name="Ki" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Michaelis-Menten (explicit Enzyme)" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E*s*kcat/(Km+s)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="s" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="E" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Km" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rev. Michaelis-Menten (explicit enzyme)" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E*(kcatf*S/Kms - kcatr*P/Kmp)/(1+S/Kms+P/Kmp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="S" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="E" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="kcatf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Kms" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="kcatr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Kmp" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="A signalling enzyme cascade" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mendes P. (1997) Biochemistry by numbers: simulation of biochemical pathways with Gepasi 3 Trends Biochem. Sci. 22:361-3</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9301339"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0968-0004(97)01103-1"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2097-06-01T13:00:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mendes@copasi.org</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mendes</vCard:Family>
            <vCard:Given>Pedro</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>COPASI team</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-06T17:14:24</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2021-06-21T13:51:22</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>A signalling enzyme cascade controlling metabolism</h1>
<p>This is a model of a branched metabolic pathway, where the flux at the branch is controlled by a signalling enzyme cascade that responds to an external signal. The flux from M to P1 behaves in a switch-like manner to the concentration of the external signal. The model is just conceptual, and it does not represent any specific pathway.</p>

<p>Check out these features:
<ul>
<li>a diagram of the reaction network can be found under Model/Diagrams;</li> 
<li>the full mathematical model can be found under Model/Mathematical/Differential Equations</li>
<li>in Tasks/Time Course you can simulate the response of the system when the Signal molecule appears in the system;</li>
<li>in Tasks/Parameter Scan a virtual experiment can be executed to find out the dependency of the flux to P1 by the concentration of the Signal</li>
</ul>
</p>

<p>Note that COPASI calculates fluxes in amount/time rather than the more traditional units of concentration/time. This is because COPASI deals with multiple compartments which can have variable volume. This model shows how to express fluxes in concentration/time.  Go to Model/Global Quantities and see the definition of J(P1) (the flux to P1): it is defined as the flux of the corresponding reaction (in amount/time) divided by the volume of the compartment (thus in units of concentration/time)</p>

<p>This model was created in 1997 by Pedro Mendes as an illustration for the use of the software Gepasi (predecessor to COPASI); it was published in <a href="https://doi.org/10.1016/S0968-0004(97)01103-1">Mendes P. (1997) Biochemistry by numbers: simulation of biochemical pathways with Gepasi 3. <i>Trends Biochem. Sci.</i> 22:361-3</a>.</p>
<p style="font-size:8pt"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_5" name="Signal" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Kin1-i" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Kin1-a" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_0" name="Kin2-i" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Kin2-a" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Enz-i" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Enz-a" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="S" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="M" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="P1" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="P2" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_4" name="J(P1)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],Reference=Flux>/&lt;CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Reference=Volume>
        </Expression>
        <Unit>
          nmol / l / s
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_2" name="Kin1 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7417" name="Kms" value="0.001"/>
          <Constant key="Parameter_7413" name="V" value="10"/>
          <Constant key="Parameter_7416" name="Ka" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_2" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_24">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_23">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_22">
              <SourceParameter reference="Parameter_7417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_21">
              <SourceParameter reference="Parameter_7413"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_20">
              <SourceParameter reference="Parameter_7416"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Kin1 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8718" name="Km" value="0.001"/>
          <Constant key="Parameter_7421" name="V" value="10"/>
          <Constant key="Parameter_7409" name="Ki" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_34" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_242">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_241">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_240">
              <SourceParameter reference="Parameter_8718"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_239">
              <SourceParameter reference="Parameter_7421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_238">
              <SourceParameter reference="Parameter_7409"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Kin2 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7411" name="kcat" value="10"/>
          <Constant key="Parameter_8717" name="Km" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_7411"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_8717"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Kin2 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7418" name="Km" value="0.1"/>
          <Constant key="Parameter_7415" name="V" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_7415"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Enzyme activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7423" name="kcat" value="1"/>
          <Constant key="Parameter_7412" name="Km" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_7423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_7412"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Enzyme inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_8">
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
          <Constant key="Parameter_7419" name="Km" value="1"/>
          <Constant key="Parameter_7410" name="V" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_7419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_7410"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="M production" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7420" name="Kms" value="1"/>
          <Constant key="Parameter_7414" name="Kmp" value="1"/>
          <Constant key="Parameter_8678" name="Vf" value="100"/>
          <Constant key="Parameter_8672" name="Vr" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_28" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_195">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_196">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_197">
              <SourceParameter reference="Parameter_7420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_198">
              <SourceParameter reference="Parameter_7414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_199">
              <SourceParameter reference="Parameter_8678"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_200">
              <SourceParameter reference="Parameter_8672"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="P1 formation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8679" name="kcatf" value="2000"/>
          <Constant key="Parameter_7422" name="Kms" value="1"/>
          <Constant key="Parameter_8675" name="kcatr" value="1"/>
          <Constant key="Parameter_8674" name="Kmp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_8679"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_7422"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_8675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_8674"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="P2 formation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8673" name="Kms" value="1"/>
          <Constant key="Parameter_8676" name="Kmp" value="1"/>
          <Constant key="Parameter_8663" name="Vf" value="180"/>
          <Constant key="Parameter_8669" name="Vr" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_28" unitType="Default" scalingCompartment="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_195">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_196">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_197">
              <SourceParameter reference="Parameter_8673"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_198">
              <SourceParameter reference="Parameter_8676"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_199">
              <SourceParameter reference="Parameter_8663"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_200">
              <SourceParameter reference="Parameter_8669"/>
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
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell]" value="1.0000000000000001e-09" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Signal]" value="602214.08570000005" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin1-i]" value="602214.08570000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin1-a]" value="2.7009476843412563e-25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin2-i]" value="602214.08570000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin2-a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Enz-i]" value="602214.08570000005" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Enz-a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[S]" value="6022140.856999998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[M]" value="566871.77668394521" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[P1]" value="60221.408570000007" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[P2]" value="60221.408570000007" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Values[J(P1)]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 activation],ParameterGroup=Parameters,Parameter=Kms" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 activation],ParameterGroup=Parameters,Parameter=V" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 activation],ParameterGroup=Parameters,Parameter=Ka" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 inactivation],ParameterGroup=Parameters,Parameter=Km" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 inactivation],ParameterGroup=Parameters,Parameter=V" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 inactivation],ParameterGroup=Parameters,Parameter=Ki" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 activation],ParameterGroup=Parameters,Parameter=kcat" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 activation],ParameterGroup=Parameters,Parameter=Km" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 inactivation],ParameterGroup=Parameters,Parameter=Km" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 inactivation],ParameterGroup=Parameters,Parameter=V" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme activation],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme activation],ParameterGroup=Parameters,Parameter=Km" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme inactivation],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme inactivation],ParameterGroup=Parameters,Parameter=V" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production],ParameterGroup=Parameters,Parameter=Kms" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production],ParameterGroup=Parameters,Parameter=Kmp" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production],ParameterGroup=Parameters,Parameter=Vf" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production],ParameterGroup=Parameters,Parameter=Vr" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],ParameterGroup=Parameters,Parameter=kcatf" value="2000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],ParameterGroup=Parameters,Parameter=Kms" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],ParameterGroup=Parameters,Parameter=kcatr" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],ParameterGroup=Parameters,Parameter=Kmp" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation],ParameterGroup=Parameters,Parameter=Kms" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation],ParameterGroup=Parameters,Parameter=Kmp" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation],ParameterGroup=Parameters,Parameter=Vf" value="180" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation],ParameterGroup=Parameters,Parameter=Vr" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 566871.77668394521 2.7009476843412563e-25 602214.08570000005 602214.08570000005 0 602214.08570000005 0 0 602214.08570000005 6022140.856999998 60221.408570000007 60221.408570000007 1.0000000000000001e-09 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_2" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_22" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="500"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="5"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_22" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="0"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="200"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Signal],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Use Values" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_15" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_16" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_2"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_0" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_14" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_9" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_2"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_22" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time course - Concentrations" type="Plot2D" active="1" taskTypes="Time-Course">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Enz-a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Enz-a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Enz-i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Enz-i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Kin1-a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin1-a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Kin1-i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin1-i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Kin2-a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin2-a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Kin2-i]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Kin2-i],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[M],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Time course - Fluxes" type="Plot2D" active="1" taskTypes="Time-Course">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(Enzyme activation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme activation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Enzyme inactivation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Enzyme inactivation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Kin1 activation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 activation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Kin1 inactivation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin1 inactivation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Kin2 activation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 activation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Kin2 inactivation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[Kin2 inactivation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(M production).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[M production],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(P1 formation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P1 formation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(P2 formation).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Reactions[P2 formation],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Signal response" type="Plot2D" active="1" taskTypes="Scan">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="J(P1)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Compartments[cell],Vector=Metabolites[Signal],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=A signalling enzyme cascade,Vector=Values[J(P1)],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Network diagram">
      <Dimensions width="631.13955998113988" height="517.55481749112823"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="MetabGlyph" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="0" y="15.10804696053043"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="MetabGlyph" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="176.03980664541047" y="0"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="MetabGlyph" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="171.75091542785486" y="142.45080867558391"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="MetabGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="88.700714561276129" y="255.46797553189998"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="MetabGlyph" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="291.87746799231547" y="243.28847102464141"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="MetabGlyph" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="446.72664588985725" y="180.28964404938819"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="MetabGlyph" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="453.00244074842004" y="312.40386507442105"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="MetabGlyph" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="253.94714158798155" y="434.67350588005291"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="MetabGlyph" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="396.013334819622" y="435.9988541981001"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="MetabGlyph" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="589.95809700270888" y="385.84623516401922"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="MetabGlyph" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="595.13955998113988" y="489.55481749112829"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_14" name="ReactionGlyph" reaction="Reaction_2">
          <BoundingBox>
            <Position x="174.87477725605314" y="76.138547914573877"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="175.08922181693092" y="69.016007480794684"/>
                <End x="174.66033269517536" y="83.26108834835307"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_15" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="175.08922181693092" y="69.016007480794684"/>
                    <End x="202.49576930886093" y="33"/>
                    <BasePoint1 x="175.51811093868648" y="54.770926613236291"/>
                    <BasePoint2 x="189.11416240421261" y="40.324193089728546"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_16" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="174.66033269517536" y="83.26108834835307"/>
                    <End x="206.43366226436791" y="137.45080867558391"/>
                    <BasePoint1 x="174.2314435734198" y="97.506169215911456"/>
                    <BasePoint2 x="190.22533063845498" y="121.0397591626373"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_17" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="96.709339704188025" y="48.10804696053043"/>
                    <End x="164.87930659779954" y="75.837605528075045"/>
                    <BasePoint1 x="130.79432315099379" y="61.972826244302738"/>
                    <BasePoint2 x="154.88383593954595" y="75.536663141576213"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_18" name="ReactionGlyph" reaction="Reaction_4">
          <BoundingBox>
            <Position x="270.51366169871528" y="84.490387187914365"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="270.2992171378375" y="91.612927621693558"/>
                <End x="270.72810625959306" y="77.367846754135172"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_19" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="270.2992171378375" y="91.612927621693558"/>
                    <End x="239.82204088066803" y="137.45080867558391"/>
                    <BasePoint1 x="269.87032801608194" y="105.85800848925194"/>
                    <BasePoint2 x="254.73896216793611" y="125.21567879930754"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_20" name="MetabReferenceGlyph" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="270.72810625959306" y="77.367846754135172"/>
                    <End x="243.49050532883027" y="33"/>
                    <BasePoint1 x="271.15699538134862" y="63.122765886576779"/>
                    <BasePoint2 x="257.43097263552835" y="44.50011272639879"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_21" name="MetabReferenceGlyph" metaboliteGlyph="Layout_3" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="105" y="43.498617515387679"/>
                    <End x="260.51819104046172" y="84.189444801415533"/>
                    <BasePoint1 x="182.75909552023086" y="63.844031158401606"/>
                    <BasePoint2 x="250.52272038220812" y="83.888502414916701"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_22" name="ReactionGlyph" reaction="Reaction_5">
          <BoundingBox>
            <Position x="221.77135539914764" y="213.03558291940817"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="211.61251772759567" y="213.64455814477111"/>
                <End x="231.9301930706996" y="212.42660769404523"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_23" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="211.61251772759567" y="213.64455814477111"/>
                    <End x="157.00086809361258" y="250.46797553189998"/>
                    <BasePoint1 x="191.29484238449174" y="214.86250859549696"/>
                    <BasePoint2 x="169.06843640327617" y="232.96972967637993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_24" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="231.9301930706996" y="212.42660769404523"/>
                    <End x="304.92066951059059" y="238.28847102464141"/>
                    <BasePoint1 x="252.24786841380353" y="211.20865724331938"/>
                    <BasePoint2 x="283.66368779797301" y="224.44407652129894"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_25" name="MetabReferenceGlyph" metaboliteGlyph="Layout_5" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="221.51528847141378" y="175.45080867558391"/>
                    <End x="221.17297591415166" y="203.05350187425853"/>
                    <BasePoint1 x="221.34413219278272" y="189.25215527492122"/>
                    <BasePoint2 x="220.57459642915569" y="193.07142082910889"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_26" name="ReactionGlyph" reaction="Reaction_6">
          <BoundingBox>
            <Position x="250.92512057351885" y="321.6108020139535"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="261.08395824507085" y="321.00182678859056"/>
                <End x="240.76628290196689" y="322.21977723931644"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_27" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="261.08395824507085" y="321.00182678859056"/>
                    <End x="323.4914626864894" y="276.28847102464141"/>
                    <BasePoint1 x="281.40163358817478" y="319.78387633786468"/>
                    <BasePoint2 x="307.5259669731081" y="297.73168606857161"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_28" name="MetabReferenceGlyph" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="240.76628290196689" y="322.21977723931644"/>
                    <End x="167.47998266691667" y="288.46797553189998"/>
                    <BasePoint1 x="220.44860755886296" y="323.43772769004232"/>
                    <BasePoint2 x="188.88487627711382" y="306.25733922365259"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_29" name="ReactionGlyph" reaction="Reaction_7">
          <BoundingBox>
            <Position x="464.5545676207455" y="250.36045317029226"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="464.24077787781738" y="243.75474211904063"/>
                <End x="464.86835736367362" y="256.96616422154392"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_30" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="464.24077787781738" y="243.75474211904063"/>
                    <End x="475.56507013978995" y="213.28964404938819"/>
                    <BasePoint1 x="463.61319839196108" y="230.54332001653734"/>
                    <BasePoint2 x="469.43223939441145" y="218.61362650733696"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_31" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="464.86835736367362" y="256.96616422154392"/>
                    <End x="485.03159461492618" y="307.40386507442105"/>
                    <BasePoint1 x="465.49593684952993" y="270.17758632404718"/>
                    <BasePoint2 x="475.42066060369211" y="292.09358122485992"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_32" name="MetabReferenceGlyph" metaboliteGlyph="Layout_7" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="396.87746799231547" y="254.13868818920292"/>
                    <End x="454.56583114012142" y="250.83494607924837"/>
                    <BasePoint1 x="425.72164956621845" y="252.48681713422565"/>
                    <BasePoint2 x="444.57709465949733" y="251.30943898820448"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_33" name="ReactionGlyph" reaction="Reaction_8">
          <BoundingBox>
            <Position x="525.59883039443901" y="268.84260245914874"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="525.91262013736718" y="275.4483135104004"/>
                <End x="525.28504065151083" y="262.23689140789708"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_34" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="525.91262013736718" y="275.4483135104004"/>
                    <End x="510.87821870833312" y="307.40386507442105"/>
                    <BasePoint1 x="526.54019962322343" y="288.65973561290366"/>
                    <BasePoint2 x="518.86610403724239" y="301.33465586928821"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_35" name="MetabReferenceGlyph" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="525.28504065151083" y="262.23689140789708"/>
                    <End x="501.19901635375641" y="213.28964404938819"/>
                    <BasePoint1 x="524.65746116565458" y="249.02546930539378"/>
                    <BasePoint2 x="512.7713438882414" y="227.85470115176517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_36" name="ReactionGlyph" reaction="Reaction_9">
          <BoundingBox>
            <Position x="331.22540956908961" y="448.57699289213616"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="330.837668137354" y="448.53903353478916"/>
                <End x="331.61315100082521" y="448.61495224948317"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_37" name="MetabReferenceGlyph" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="331.61315100082521" y="448.61495224948317"/>
                    <End x="286.94714158798155" y="448.67862582043148"/>
                    <BasePoint1 x="332.38863386429642" y="448.69087096417718"/>
                    <BasePoint2 x="309.86175844200682" y="448.70372807097783"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="331.61315100082521" y="448.61495224948317"/>
                    <End x="391.013334819622" y="449.67870247914095"/>
                    <BasePoint1 x="332.38863386429642" y="448.69087096417718"/>
                    <BasePoint2 x="361.89485505782704" y="449.2037664003326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph" reaction="Reaction_10">
          <BoundingBox>
            <Position x="507.05145220691486" y="427.26668270830027"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="506.95473902170232" y="427.38388960966228"/>
                <End x="507.1481653921274" y="427.14947580693826"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="507.1481653921274" y="427.14947580693826"/>
                    <End x="429.013334819622" y="445.49253644968911"/>
                    <BasePoint1 x="507.34159176255247" y="426.91506200421418"/>
                    <BasePoint2 x="468.22581988369348" y="436.14519577627061"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="MetabReferenceGlyph" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="507.1481653921274" y="427.14947580693826"/>
                    <End x="584.95809700270888" y="406.03391794865252"/>
                    <BasePoint1 x="507.34159176255247" y="426.91506200421418"/>
                    <BasePoint2 x="546.19820097523689" y="416.41588652575234"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_42" name="MetabReferenceGlyph" metaboliteGlyph="Layout_9" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="495.87421334812035" y="345.40386507442105"/>
                    <End x="499.33828450855668" y="420.90216826829749"/>
                    <BasePoint1 x="497.60624892833852" y="383.1530166713593"/>
                    <BasePoint2 x="491.62511681019851" y="414.53765382829471"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_43" name="ReactionGlyph" reaction="Reaction_11">
          <BoundingBox>
            <Position x="500.10367836090643" y="471.22032757954645"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="499.53003990893268" y="470.94250216629308"/>
                <End x="500.67731681288018" y="471.49815299279982"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_44" name="MetabReferenceGlyph" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="500.67731681288018" y="471.49815299279982"/>
                    <End x="429.013334819622" y="454.56304434031455"/>
                    <BasePoint1 x="501.82459371682762" y="472.05380381930661"/>
                    <BasePoint2 x="465.70578349421169" y="463.44733678643729"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_45" name="MetabReferenceGlyph" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="500.67731681288018" y="471.49815299279982"/>
                    <End x="590.13955998113988" y="497.04604927453869"/>
                    <BasePoint1 x="501.82459371682762" y="472.05380381930661"/>
                    <BasePoint2 x="546.2688960749706" y="484.6888392535493"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_46" name="TextGlyph" graphicalObject="Layout_3" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="0" y="15.10804696053043"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_47" name="TextGlyph" graphicalObject="Layout_4" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="176.03980664541047" y="0"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_48" name="TextGlyph" graphicalObject="Layout_5" originOfText="Metabolite_1">
          <BoundingBox>
            <Position x="171.75091542785486" y="142.45080867558391"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_49" name="TextGlyph" graphicalObject="Layout_6" originOfText="Metabolite_0">
          <BoundingBox>
            <Position x="88.700714561276129" y="255.46797553189998"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_50" name="TextGlyph" graphicalObject="Layout_7" originOfText="Metabolite_6">
          <BoundingBox>
            <Position x="291.87746799231547" y="243.28847102464141"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_51" name="TextGlyph" graphicalObject="Layout_8" originOfText="Metabolite_7">
          <BoundingBox>
            <Position x="446.72664588985725" y="180.28964404938819"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_52" name="TextGlyph" graphicalObject="Layout_9" originOfText="Metabolite_8">
          <BoundingBox>
            <Position x="453.00244074842004" y="312.40386507442105"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_53" name="TextGlyph" graphicalObject="Layout_10" originOfText="Metabolite_9">
          <BoundingBox>
            <Position x="253.94714158798155" y="434.67350588005291"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_54" name="TextGlyph" graphicalObject="Layout_11" originOfText="Metabolite_10">
          <BoundingBox>
            <Position x="396.013334819622" y="435.9988541981001"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_55" name="TextGlyph" graphicalObject="Layout_12" originOfText="Metabolite_11">
          <BoundingBox>
            <Position x="589.95809700270888" y="385.84623516401922"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_56" name="TextGlyph" graphicalObject="Layout_13" originOfText="Metabolite_12">
          <BoundingBox>
            <Position x="595.13955998113988" y="489.55481749112829"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
  </ListOfLayouts>
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
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
