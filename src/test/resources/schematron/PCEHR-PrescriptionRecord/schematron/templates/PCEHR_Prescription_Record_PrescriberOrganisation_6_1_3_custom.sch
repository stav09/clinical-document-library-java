<?xml version = "1.0" encoding = "UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-PCEHR_Prescription_Record_PrescriberOrganisation_6_1_3_custom-errors"
        id="p-PCEHR_Prescription_Record_PrescriberOrganisation_6_1_3_custom-errors"
        see="#p-PCEHR_Prescription_Record_PrescriberOrganisation_6_1_3_custom-errors">

        <!-- 21/09/2012 KW  This test is added for Mandatory_NodeVocabTest cannot perform like this.-->
         <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:asOrganizationPartOf/cda:wholeOrganization/cda:addr">

            <!-- Address - country -  0..* -->

            <assert test = "not(cda:country) or
                document('\TEMPLATE\VALDN\CDAValidate_Vocabs.xml', .)/systems/system[@codeSystemName = 'ISO3166-1']/code[translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = translate(normalize-space(current()/cda:country), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')]/@code = 'AU'"
                >Error: PCEHR Prescription Record - 6.1.3 Prescriber Organisation - "Prescriber Organisation > Participant
                > Address" - The 'country' tag shall contain the value 'Australia'. Refer to section 6.1.3 of the
                PCEHR_Prescription_Record_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


         <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:code">

            <!-- originalText required if no @code present -->
            <report test="
                not(@code) and
                not(cda:originalText)"
                >Error: PCEHR Prescription Record - 6.1.3 Prescriber Organisation -
                "Prescriber Organisation / Role" -
                The 'originalText' tag is missing for without code attribute present.
                Refer to section 6.1.3 of the
                PCEHR_Prescription_Record_CDA_Implementation_Guide_v1.0.</report>

            <!-- Don't use OTH at all -->
            <report test="
                @nullFlavor and
                @nullFlavor = 'OTH'"
                >Error: PCEHR Prescription Record - 6.1.3 Prescriber Organisation -
                "Prescriber Organisation / Role" -
                The 'code' tag 'nullFlavor' attribute shall not contain the value 'OTH'.
                Refer to section 6.1.3 of the
                PCEHR_Prescription_Record_CDA_Implementation_Guide_v1.0.</report>

        </rule>

    </pattern>

</schema>
