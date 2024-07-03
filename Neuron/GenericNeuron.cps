<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.44 (Build 294) (http://www.copasi.org) at 2024-07-03T00:44:50Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="44" versionDevel="294" copasiSourcesModified="0">
  <Model key="Model_1" name="Generic neuron model" simulationType="time" timeUnit="ms" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Pospischil et al. (2008) Minimal Hodgkin–Huxley type models for different classes of cortical and thalamic neurons. Biological Cybernetics 99:427–441</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1007/s00422-008-0263-8"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Giannari and Astolfi (2022) Model design for networks of heterogeneous Hodgkin–Huxley neurons. Neurocomputing 496:147–157</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.neucom.2022.04.115"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2024-07-01T17:15:43Z</dcterms:W3CDTF>
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
      <body xmlns="http://www.w3.org/1999/xhtml"><h1>Generic neuron model</h1>
<p>This is a 9-ODE generic neuron model, inspired by the Hodgin-Huxley model, that includes three types of complex behaviour:</p>
<ul>
 <li>fast spiking (FS)</li>
 <li>regular spiking with adaptation (RSA)</li>
 <li>intrinsically bursting (IB)</li>
</ul>
<p>This is achieved by incorporating terms and differential equations for slow potassium conductance and calcium conductance (in addition to the leak, sodium and fast potassium conductances of the HH model). The parameter values were determined by Pospischil et al. (2008) and re-used in Giannari and Astolfi (2022).</p>
<p>In order to model each type of neuron (FS, RSA or IB), various parameter values need to be adjusted, including setting some maximal conductances to zero (g_Ca and g_M), which make the voltage (V) independent from some of the ion channels (calcium and slow potassium). For convenience, there is a parameter set stored for each neuron type. The parameter scan feature can be used to compare each neuron type with the same perturbations on injected current.</p>
<p>Since this model is based on voltages and intensities, all variables and differential equations are defined under Global Quantities (there are no reactions and no species)</p>
<p><b>References</b>:<br />
- Pospischil M, Toledo-Rodriguez M, Monier C, Piwkowska Z, Bal T, Frégnac Y, Markram H, Destexhe A (2008) <a href="https://doi.org/10.1007/s00422-008-0263-8">Minimal Hodgkin–Huxley type models for different classes of cortical and thalamic neurons</a>. Biological Cybernetics 99:427–441<br />
- Giannari AG, Astolfi A (2022) <a href="https://doi.org/10.1016/j.neucom.2022.04.115">Model design for networks of heterogeneous Hodgkin–Huxley neurons</a>. Neurocomputing 496:147–157
</p> 

<p style="font-size:small"><b>CC0 1.0 Universal</b>: To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission. Please refer to <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a> for more information.</p>
</body>
    </Comment>
    <ListOfModelValues>
      <ModelValue key="ModelValue_73" name="V_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="V_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="V_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="V_Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="V_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="C_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uF/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="g_K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="g_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="g_Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="g_Na" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="g_L" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mS/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="tau_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="I_inj" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA/cm^2
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="V" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Generic neuron model,Vector=Values[I_inj],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[g_K],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[n],Reference=Value>^4*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_K],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[g_Na],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[m],Reference=Value>^3*&lt;CN=Root,Model=Generic neuron model,Vector=Values[h],Reference=Value>*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_Na],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[g_L],Reference=Value>*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_L],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[g_M],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[p],Reference=Value>*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_K],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[g_Ca],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[q],Reference=Value>^2*&lt;CN=Root,Model=Generic neuron model,Vector=Values[s],Reference=Value>*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_Ca],Reference=Value>))/&lt;CN=Root,Model=Generic neuron model,Vector=Values[C_M],Reference=Value>
        </Expression>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="alpha_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-15)*(-0.032/(exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-15)/5)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="alpha_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-13)*(-0.32/(exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-13)/4)-1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="alpha_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.128*exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-17)/18)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="p_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>+35)/10)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="alpha_q" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0055*(-27-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>)/(exp((-27-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>)/3.8)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="alpha_s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.000457*exp((-13-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>)/50)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="beta_n" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-10)/40)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="beta_m" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.28*(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-40)/(exp((&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-40)/5)-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="beta_h" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4/(exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V_T],Reference=Value>-40)/5)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="beta_s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0065/(exp((-15-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>)/28)+1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="beta_q" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.94*exp((-75-&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>)/17)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="n" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[alpha_n],Reference=Value>*(1-&lt;CN=Root,Model=Generic neuron model,Vector=Values[n],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[beta_n],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[n],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="m" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[alpha_m],Reference=Value>*(1-&lt;CN=Root,Model=Generic neuron model,Vector=Values[m],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[beta_m],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[m],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="h" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[alpha_h],Reference=Value>*(1-&lt;CN=Root,Model=Generic neuron model,Vector=Values[h],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[beta_h],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[h],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="p" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Generic neuron model,Vector=Values[p_inf],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[p],Reference=Value>)/&lt;CN=Root,Model=Generic neuron model,Vector=Values[tau_p],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="q" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[alpha_q],Reference=Value>*(1-&lt;CN=Root,Model=Generic neuron model,Vector=Values[q],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[beta_q],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[q],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="s" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[alpha_s],Reference=Value>*(1-&lt;CN=Root,Model=Generic neuron model,Vector=Values[s],Reference=Value>)-&lt;CN=Root,Model=Generic neuron model,Vector=Values[beta_s],Reference=Value>*&lt;CN=Root,Model=Generic neuron model,Vector=Values[s],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="tau_p" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Generic neuron model,Vector=Values[tau_max],Reference=Value>/(3.3*exp((&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>+35)/20)+exp(-(&lt;CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value>+35)/20))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="pulse_start" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="pulse_end" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="pulse_lag" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="pulse_intensity" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          uA
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="pulse_length" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ms
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="pulses_on" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Generic neuron model,Reference=Time> > &lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_start],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]">
            <Expression>
              uniform(0,1)*&lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start]">
            <Expression>
              if(&lt;CN=Root,Model=Generic neuron model,Reference=Time> &lt; &lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_end],Reference=Value>-&lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_length],Reference=Value>,&lt;CN=Root,Model=Generic neuron model,Reference=Time>+&lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_length],Reference=Value>,0)
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="pulses_off" fireAtInitialTime="0" persistentTrigger="0">
        <TriggerExpression>
          &lt;CN=Root,Model=Generic neuron model,Reference=Time> > &lt;CN=Root,Model=Generic neuron model,Vector=Values[pulse_end],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]">
            <Expression>
              &lt;CN=Root,Model=Generic neuron model,Vector=Values[I_inj],Reference=InitialValue>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_8">
      <ModelParameterSet key="ModelParameterSet_8" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_L]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Ca]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_K]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_M]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Ca]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_L]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V]" value="-71.422484777388902" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_n]" value="0.0022983668646933729" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_m]" value="0.0077965530019377272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_h]" value="0.76675575380063665" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p_inf]" value="0.025524801576272842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_q]" value="2.0464977745800642e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_s]" value="0.0014701696575933458" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_n]" value="0.93933315867971978" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_m]" value="15.462542748973913" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_h]" value="6.3898250923269661e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_s]" value="0.00076458057743151911" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_q]" value="0.76161242931334339" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[n]" value="0.0024408346602080356" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[m]" value="0.00050396780896343749" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[h]" value="0.9999166710832823" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p]" value="0.025524801576272835" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[q]" value="2.687052097323317e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[s]" value="0.65786754803808833" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_p]" value="90.57208370923459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_end]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_lag]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_7" name="FS">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_L]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[C_M]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_K]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_M]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_L]" value="0.014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_max]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V]" value="-69.999847003546762" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_n]" value="0.0029133183570176861" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_m]" value="0.01056965479937025" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_h]" value="0.70848782530935417" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p_inf]" value="0.029312666075664989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_q]" value="2.880497139266984e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_s]" value="0.0014289287704627074" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_n]" value="0.90651200514540697" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_m]" value="15.06427701585543" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_h]" value="8.4928887265952046e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_s]" value="0.00079952972051844492" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_q]" value="0.70047118386979046" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[n]" value="0.0032034717768774741" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[m]" value="0.0007011450948914452" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[h]" value="0.99988014090753163" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p]" value="0.029312666075664986" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[q]" value="4.1122109808166861e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[s]" value="0.64121848183281871" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_p]" value="0.15802738699255947" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_end]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_lag]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_6" name="RSA">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_L]" value="-70.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_K]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_M]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Ca]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Na]" value="56" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_L]" value="0.020500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V]" value="-71.910681987541821" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_n]" value="0.0021177679639737155" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_m]" value="0.007019440281679285" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_h]" value="0.78783633716905699" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p_inf]" value="0.024338216117071085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_q]" value="1.8195439396980193e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_s]" value="0.0014845946197623323" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_n]" value="0.95086790154804823" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_m]" value="15.599216970044985" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_h]" value="5.7954257344224138e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_s]" value="0.000752895929432276" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_q]" value="0.78380109773648854" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[n]" value="0.0022222453408539942" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[m]" value="0.00044978431039494646" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[h]" value="0.99992644412077247" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p]" value="0.024338216117071081" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[q]" value="2.3214304254075944e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[s]" value="0.66350877785683593" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_p]" value="88.724338492363756" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_end]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_lag]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="IB">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_K]" value="-90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_L]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_Ca]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V_T]" value="-56.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[C_M]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_K]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_M]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Ca]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_Na]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[g_L]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_max]" value="608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[I_inj]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[V]" value="-71.422484777388902" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_n]" value="0.0022983668646933729" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_m]" value="0.0077965530019377272" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_h]" value="0.76675575380063665" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p_inf]" value="0.025524801576272842" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_q]" value="2.0464977745800642e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[alpha_s]" value="0.0014701696575933458" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_n]" value="0.93933315867971978" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_m]" value="15.462542748973913" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_h]" value="6.3898250923269661e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_s]" value="0.00076458057743151911" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[beta_q]" value="0.76161242931334339" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[n]" value="0.0024408346602080356" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[m]" value="0.00050396780896343749" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[h]" value="0.9999166710832823" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[p]" value="0.025524801576272835" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[q]" value="2.687052097323317e-06" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[s]" value="0.65786754803808833" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[tau_p]" value="90.57208370923459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_end]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_lag]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length]" value="30" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -71.422484777388902 0.0024408346602080356 0.00050396780896343749 0.9999166710832823 0.025524801576272835 2.687052097323317e-06 0.65786754803808833 0.0022983668646933729 0.0077965530019377272 0.76675575380063665 0.025524801576272842 2.0464977745800642e-06 0.0014701696575933458 0.93933315867971978 15.462542748973913 6.3898250923269661e-05 0.00076458057743151911 0.76161242931334339 90.57208370923459 -90 50 -70 120 -56.200000000000003 1 5 0.029999999999999999 0.20000000000000001 50 0.01 608 0 500 2000 0 1 30 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_19" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_22" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="0"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="25000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="2500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-10"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="3"/>
            <Parameter name="Type" type="unsignedInteger" value="4"/>
            <Parameter name="Object" type="cn" value=""/>
            <ParameterGroup name="ParameterSet CNs">
              <Parameter name="0" type="cn" value="CN=Root,Model=Generic neuron model,Vector=ParameterSets[FS]"/>
              <Parameter name="1" type="cn" value="CN=Root,Model=Generic neuron model,Vector=ParameterSets[IB]"/>
              <Parameter name="2" type="cn" value="CN=Root,Model=Generic neuron model,Vector=ParameterSets[RSA]"/>
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
    <Task key="Task_32" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_33" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_19"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_31" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_19"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_11" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="time course" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value="time"/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="I_inj" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[I_inj],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="V" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[V],Reference=Value"/>
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
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[h],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="m" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[m],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="n" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[n],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="p" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[p],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="q" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[q],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="s" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Generic neuron model,Vector=Values[s],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_20" associatedEntityKey="Task_21" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity],Reference=InitialValue" objectType="float" objectValue="1" minValue="0" maxValue="10" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_19" associatedEntityKey="Task_21" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_lag],Reference=InitialValue" objectType="float" objectValue="0" minValue="0" maxValue="100000" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_18" associatedEntityKey="Task_21" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length],Reference=InitialValue" objectType="float" objectValue="30" minValue="0.01" maxValue="1000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_17" associatedEntityKey="Task_21" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_start],Reference=InitialValue" objectType="float" objectValue="500" minValue="0.1" maxValue="500" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_16" associatedEntityKey="Task_20" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_intensity],Reference=InitialValue" objectType="float" objectValue="10" minValue="-10" maxValue="10" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_11" associatedEntityKey="Task_20" objectCN="CN=Root,Model=Generic neuron model,Vector=Values[pulse_length],Reference=InitialValue" objectType="float" objectValue="102.565" minValue="25.4097" maxValue="2540.97" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
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
    <UnitDefinition key="Unit_23" name="farad" symbol="F">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_22">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-2*kg^-1*s^4*A^2
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
    <UnitDefinition key="Unit_51" name="siemens" symbol="S">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-2*kg^-1*s^3*A^2
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
