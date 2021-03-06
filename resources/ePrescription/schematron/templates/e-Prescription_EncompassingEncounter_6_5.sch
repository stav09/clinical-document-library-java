<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 8/08/2013 2:03:32 PM

                  Product            : e-Prescription
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 6.5
                  IG Guide Title     : EncompassingEncounter
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Prescription_EncompassingEncounter_6_5-errors"
        id="p-e-Prescription_EncompassingEncounter_6_5-errors"
        see="#p-e-Prescription_EncompassingEncounter_6_5-errors">


        <rule context="/cda:ClinicalDocument">

            <assert test="cda:componentOf"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter" -
                The 'componentOf' tag is missing.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:componentOf) > 1"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter" -
                The 'componentOf' tag shall appear only once.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf">

            <assert test="cda:encompassingEncounter"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter" -
                The 'encompassingEncounter' tag is missing.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:encompassingEncounter) > 1"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter" -
                The 'encompassingEncounter' tag shall appear only once.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter">

            <assert test="cda:effectiveTime"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter/effectiveTime" -
                The 'effectiveTime' tag is missing.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter/effectiveTime" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:effectiveTime">

            <assert test="@nullFlavor"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter/effectiveTime" -
                The 'effectiveTime' tag 'nullFlavor' attribute is missing.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@nullFlavor) or normalize-space(@nullFlavor) != ''"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter/effectiveTime" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall contain a value.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@nullFlavor) or normalize-space(@nullFlavor) = '' or @nullFlavor = 'NA'"
                >Error: e-Prescription - 6.5 EncompassingEncounter -
                "componentOf/encompassingEncounter/effectiveTime" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall contain the value 'NA'.
                Refer to section 6.5 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>


    </pattern>

</schema>
