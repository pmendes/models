<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.42 (Build 284) (http://www.copasi.org) at 2024-03-05T15:49:37Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="42" versionDevel="284" copasiSourcesModified="0">
  <Model key="Model_1" name="Hodgkin-Huxley with forced perturbations" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12991237"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2005-03-31T13:09:21Z</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>m.j.1.schilstra@herts.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Schilstra</vCard:Family>
                <vCard:Given>Maria</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>SBML Team - Science and Technology Research Institute - University of Hertfordshire</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-02T23:00:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2024-03-05T10:17:52</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000020"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL6617668482"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005248"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005249"/>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0019227"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0042757"/>
        <rdf:li rdf:resource="urn:miriam:taxonomy:6618"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
<h1>Forced perturbations on a Hodgkin-Huxley axon model</h1>    
<p>This uses the BioModels database implementation of the calssical Hodgkin-Huxley model of the electrical behavior of the squid axon membrane  (A. L. Hodgkin and A. F. Huxley (1952 ) A quantitative description of membrane current and its application to conduction and excitation in nerve. <i>Journal of Physiology</i> 119(4)500-544. PMID: <a href="http://www.ncbi.nlm.nih.gov/pubmed/12991237">12991237</a>)</p>
<p>This model does not have chemical species or reactions. The variables of the model are ODEs that correspond to voltages and currents, thus can be negative. They are defined in the Global Quantities as type <i>ODE</i>.</p>
    <p>This COPASI simulation adds a series of current pulses by adding two discrete events to the model. You can adjust the following properties of the perturbations: current injected (Pulse intensity), the time of the first pulse (Pulse start), the lengh of the pulse (Pulse length), and the time in between pulses (Pulse lag). Adjustments can be easily done in the time course window by activating the sliders to manipulate the properties of the perturbations. </p>
<hr />
<h2> Notes from the original SBML file from BioModels:</h2>
      <p>This SBML model uses the same formalism as the one described in the paper, contrary to modern versions:      <br />
          * V describes the the membrane depolarisation relative to the resting potential of the membrane      <br />
          * opposing to modern practice, depolarization is      <em>negative</em>
          , not      <em>positive</em>
          , so the sign of V is different      <br />
          * inward transmembrane currents are considered positive (inward current positive), contrary to modern use      <br />
          The changeable parameters are the equilibrium potentials(      <em>E_R, E_K, E_L, E_Na</em>
          ), the membrane depolarization (      <em>V</em>
          ) and the initial sodium and potassium channel activation and inactivation coefficients (      <em>m,h,n</em>
          ). The initial values of      <em>m,h,n</em>
          for the model were calculated for      <em>V</em>
          = 0 using the equations from the article:      <em>n        <sub>t=0</sub>
            = α_n        <sub>V=0</sub>
            /(α_n        <sub>V=0</sub>
            + β_n        <sub>V=0</sub>
            )        </em>
          and equivalent expressions for      <em>h</em>
          and      <em>m</em>
          .      <br />
          For single excitations apply a negative membrane depolarization (V &lt; 0). To achieve oscillatory behavior either change the resting potential to a more positive value or apply a constant negative ionic current (I &lt; 0).      <br />
          Two assignments for parameters in the model, alpha_n and alpha_m, are not defined at V=-10 resp. -25 mV. We did not change this to keep the formulas similar to the original publication and as most integrators seem not to have any problem with it. The limits at V=-10 and -25 mV are 0.1 for alpha_n resp. 1 for alpha_m.      <br />
          We thank Mark W. Johnson for finding a bug in the model and his helpful comments.      </p>
      <p>This model originates from BioModels Database: A Database of Annotated Published Models. It is copyright (c) 2005-2009 The BioModels Team.      <br />
          For more information see the      <a href="http://www.ebi.ac.uk/biomodels/legal.html" target="_blank">terms of use</a>
          .      <br />
          To cite BioModels Database, please use      <a href="http://www.pubmedcentral.nih.gov/articlerender.fcgi?tool=pubmed&amp;pubmedid=16381960" target="_blank">Le Novère N., Bornstein B., Broicher A., Courtot M., Donizelli M., Dharuri H., Li L., Sauro H., Schilstra M., Shapiro B., Snoep J.L., Hucka M. (2006) BioModels Database: A Free, Centralized Database of Curated, Published, Quantitative Kinetic Models of Biochemical and Cellular Systems Nucleic Acids Res., 34: D689-D691.</a></p>
    </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="unit_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="V" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        membrane depolarisation</p>
        </Comment>
        <Expression>
          (&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I],Reference=Value>-(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_Na],Reference=Value>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_K],Reference=Value>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_L],Reference=Value>))/&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Cm],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="V_neg" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        negative membrane depolarisation</p>
        </Comment>
        <Expression>
          -&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="E" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        transmembrane potential</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="I" simulationType="fixed" addNoise="false">
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        applied current</p>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="i_Na" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0005248" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        sodium current</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_Na],Reference=Value>*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m],Reference=Value>^3*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h],Reference=Value>*(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_Na],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="i_K" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0008076" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        potassium current</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_K],Reference=Value>*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n],Reference=Value>^4*(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_K],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="i_L" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0022840" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        leakage current</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_L],Reference=Value>*(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_L],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="m" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        sodium channel activation coefficient        <br />
  <em>m          <sub>t=0</sub>
              = α_m          <sub>V=0</sub>
              /(α_m          <sub>V=0</sub>
              + β_m          <sub>V=0</sub>
              )          </em></p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_m],Reference=Value>*(1-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m],Reference=Value>)-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_m],Reference=Value>*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="h" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        sodium channel inactivation coefficient        <br />
  <em>h          <sub>t=0</sub>
              = α_h          <sub>V=0</sub>
              /(α_h          <sub>V=0</sub>
              + β_h          <sub>V=0</sub>
              )          </em></p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[auxiliary alpha_h],Reference=Value>*(1-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h],Reference=Value>)-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_h],Reference=Value>*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="n" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        potassium channel activation coefficient        <br />
  <em>n          <sub>t=0</sub>
              = α_n          <sub>V=0</sub>
              /(α_n          <sub>V=0</sub>
              + β_n          <sub>V=0</sub>
              )          </em></p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_n],Reference=Value>*(1-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n],Reference=Value>)-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_n],Reference=Value>*&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="E_R" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        resting membrane potential</p>
        </Comment>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Cm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000258" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        membrane capacitance</p>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="g_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000257" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        maximum sodium channel conductance</p>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="g_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000257" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        maximum potassium channel conductance</p>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="g_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000257" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        maximum leakage conductance</p>
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="E_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        sodium equilibrium potential</p>
        </Comment>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="E_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        potassium equilibrium potential</p>
        </Comment>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="E_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        leakage equilibrium potential</p>
        </Comment>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="V_Na" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        sodium potential displacement</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_Na],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="V_K" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        potassium potential displacement</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_K],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="V_L" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        leakage potential displacement</p>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_L],Reference=Value>-&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="alpha_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        auxiliary alpha_m</p>
        </Comment>
        <Expression>
          0.10000000000000001*(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+25)/(exp((&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+25)/10)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="beta_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        auxiliary beta_m</p>
        </Comment>
        <Expression>
          4*exp(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="auxiliary alpha_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        membrane depolarisation</p>
        </Comment>
        <Expression>
          0.070000000000000007*exp(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>/20)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="beta_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        auxiliary beta_h</p>
        </Comment>
        <Expression>
          1/(exp((&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+30)/10)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="alpha_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        auxiliary alpha_n</p>
        </Comment>
        <Expression>
          0.01*(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+10)/(exp((&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>+10)/10)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="beta_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <p xmlns="http://www.w3.org/1999/xhtml">
        auxiliary beta_n</p>
        </Comment>
        <Expression>
          0.125*exp(&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value>/80)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Pulse length" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Pulse intensity" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Pulse end" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Pulse start" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Pulse lag" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="pulse on" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time> > &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse start],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I]">
            <Expression>
              &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I],Reference=Value>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse intensity],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse end]">
            <Expression>
              &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse length],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="pulse off" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time> > &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse end],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I]">
            <Expression>
              &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I],Reference=InitialValue>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse start]">
            <Expression>
              &lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time>+&lt;CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse lag],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
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
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Compartments[unit_compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_neg]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E]" value="-75" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_Na]" value="1.2200220801069976" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_K]" value="-4.3999044272446426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_L]" value="3.1839" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m]" value="0.052932" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h]" value="0.59611999999999998" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n]" value="0.31768000000000002" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R]" value="-75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Cm]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_Na]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_K]" value="36" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_L]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_Na]" value="-190" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_K]" value="-63" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_L]" value="-85.613" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_Na]" value="-115" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_K]" value="12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_L]" value="-10.613" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_m]" value="0.22356372458463003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_m]" value="4" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[auxiliary alpha_h]" value="0.070000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_h]" value="0.047425873177566781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_n]" value="0.05819767068693265" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_n]" value="0.125" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse length]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse intensity]" value="-2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse end]" value="1e+20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse start]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse lag]" value="50" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="base model">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Compartments[unit_compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_neg]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E]" value="-75" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_Na]" value="1.2200220801069976" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_K]" value="-4.3999044272446426" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_L]" value="3.1839" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m]" value="0.052932" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h]" value="0.59611999999999998" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n]" value="0.31768000000000002" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R]" value="-75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Cm]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_Na]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_K]" value="36" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_L]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_Na]" value="-190" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_K]" value="-63" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_L]" value="-85.613" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_Na]" value="-115" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_K]" value="12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_L]" value="-10.613" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_m]" value="0.22356372458463003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_m]" value="4" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[auxiliary alpha_h]" value="0.070000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_h]" value="0.047425873177566781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_n]" value="0.05819767068693265" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_n]" value="0.125" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="lambda=0.02353">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Compartments[unit_compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_neg]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E]" value="-114.2604633" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_Na]" value="3.1826897266896976" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_K]" value="-23.540879421056143" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[i_L]" value="20.357686809748692" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m]" value="0.052932" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h]" value="0.59611999999999998" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n]" value="0.31768000000000002" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_R]" value="-114.2604633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Cm]" value="1.8998829864794895" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_Na]" value="178.47459815387151" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_K]" value="21.867231278402222" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[g_L]" value="0.42057394198235754" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_Na]" value="-315.9713252603853" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_K]" value="-8.561825989252652" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[E_L]" value="-162.66499999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_Na]" value="-201.7108619603853" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_K]" value="105.69863731074734" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V_L]" value="-48.404536699999994" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_m]" value="0.22356372458463003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_m]" value="4" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[auxiliary alpha_h]" value="0.070000000000000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_h]" value="0.047425873177566781" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[alpha_n]" value="0.05819767068693265" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[beta_n]" value="0.125" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0.052932 0.59611999999999998 0.31768000000000002 0 -75 1.2200220801069976 -4.3999044272446426 3.1839 -115 12 -10.613 0.22356372458463003 4 0.070000000000000007 0.047425873177566781 0.05819767068693265 0.125 1 0 -75 1 120 36 0.29999999999999999 -190 -63 -85.613 20 -2 1e+20 200 50 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="true">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Lyapunov Exponents]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="1"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Hooke &amp; Jeeves" type="HookeJeeves">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Tolerance" type="float" value="1e-08"/>
        <Parameter name="Rho" type="float" value="0.20000000000000001"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
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
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="4"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="5000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[V]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[V],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[m]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[m],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[h]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[h],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[n],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="I" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[I],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse end],Reference=InitialValue" objectType="float" objectValue="1e+20" minValue="1e+19" maxValue="1e+21" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse intensity],Reference=InitialValue" objectType="float" objectValue="-2" minValue="-50" maxValue="50" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_2" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse lag],Reference=InitialValue" objectType="float" objectValue="50" minValue="0" maxValue="500" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_3" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse length],Reference=InitialValue" objectType="float" objectValue="20" minValue="2" maxValue="200" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_4" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Hodgkin-Huxley with forced perturbations,Vector=Values[Pulse start],Reference=InitialValue" objectType="float" objectValue="200" minValue="20" maxValue="2000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
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
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
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
    <UnitDefinition key="Unit_7" name="ampere" symbol="A">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        A
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
    <UnitDefinition key="Unit_59" name="volt" symbol="V">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^2*kg*s^-3*A^-1
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
