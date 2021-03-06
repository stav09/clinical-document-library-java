<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 31/03/2015 11:20:18 AM

                  Product            : Pathology Report
                  Release            : CDA_Implementation_Guide_v1.0
                  Generator Version  : 
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Pathology_Report_Xml_Stylesheet_Exclusion-errors"
        id="p-Pathology_Report_Xml_Stylesheet_Exclusion-errors"
        see="#p-Pathology_Report_Xml_Stylesheet_Exclusion-errors">


      


<rule context="/">

    <report test="processing-instruction('xml-stylesheet')">Error: Pathology Report - There shall be no
        direct reference to a stylesheet in the CDA document. Refer to
        "025254 - Prohibit specific rendering of CDA content" of the
        Clinical_Documents_Common_Conformance_Profile_v1.6 and Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

</rule>

    </pattern>

</schema>
