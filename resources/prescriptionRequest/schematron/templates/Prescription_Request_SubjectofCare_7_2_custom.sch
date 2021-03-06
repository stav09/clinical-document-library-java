<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Prescription_Request_SubjectofCare_7_2_custom-errors"
        id="p-Prescription_Request_SubjectofCare_7_2_custom-errors"
        see="#p-Prescription_Request_SubjectofCare_7_2_custom-errors">



        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:addr">
            
            <report
                test="
                @use and
                normalize-space(@use) != '' and
                not(contains(@use, ' ')) and
                not(document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'Health_Care_Client_Identifier_Address_Purpose']/code[
                (current()/@use = '3') or (current()/@use = '4') or (current()/@use = 'T') or (current()/@use = 'R') or (current()/@use = 'TMP') or (current()/@use = 'H')])"
                >Error: Prescription Request - 7.2 Subject of Care - "Subject of Care / Participant
                / Address" - The 'addr' tag 'use' attribute shall be Residential or Temporary
                Accomodation coded as per 'AS 5017-2006' - Health Care Client Identifier Address
                Purpose. Refer to section A6 and 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>
            
            
            <report
                test="@use and not(document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'ISO3166-1']/code[(@code = current()/cda:country) or (translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = translate(current()/cda:country, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >
                The 'country' tag shall contain a value as per the Australia Bureau of Statistics,
                Standard Australian Classification of Countries SACC) Cat. No. 1269. Refer to
                section 7.2 of the Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>
        

<!--
        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr">


            <!-\- Country of Birth - 0..1 -\->

            <report
                test="cda:country and not(document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'ISO3166-1']/code[(@code = current()/cda:country) or (translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = translate(current()/cda:country, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: Prescription Request - 7.2 Subject of Care - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / Country of Birth" -
                The 'country' tag shall contain a value as per the Australia Bureau of Statistics,
                Standard Australian Classification of Countries SACC) Cat. No. 1269. Refer to
                section 7.2 of the Prescription_Request_CDA_Implementation_Guide_v0.5.</report>


            <!-\- State/Territory of Birth - 0..1 -\->

            <report
                test="
                (not(cda:country) or document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'ISO3166-1']/code[translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = translate(current()/cda:country, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')]/@code = 'AU') and
                cda:state and
                not(document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'Australian_State_Territory_Identifier_-_Postal']/code[(@code = current()/cda:state)])"
                >Error: Prescription Request - 7.2 Subject of Care - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / State/Territory of
                Birth" - The 'state' tag shall be coded as per AS 5017-2006 Australian
                State/Territory Identifier - Postal. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>-->



        <rule context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient">


            <!-- Birth Order - 0..1 -->

            <report
                test="(ext:multipleBirthInd[@value='true'] and not(ext:multipleBirthOrderNumber))"
                >Error: Prescription Request - 7.2 Subject Of Care - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / Birth Order" - The
                'multipleBirthOrderNumber' tag is missing for the existence of 'BirthOrder'. Refer
                to section 7.2 of the Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="(ext:multipleBirthInd[@value='false'] and (ext:multipleBirthOrderNumber))"
                >Error: Prescription Request - 7.2 Subject Of Care - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / Birth Order" - The
                'multipleBirthOrderNumber' tag shall not be present for the missing of 'BirthOrder'.
                Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>


            <!-- Date of Death - 0..1 -->
<!--
            <report test="(ext:deceasedInd[@value='true'] and not(ext:deceasedTime))">Error:
                Prescription Request - 7.2 Subject Of Care - "Subject of Care / Participant / Person
                or Organisation or Device / Person / Demographic Data / Date of Death Detail / Date
                of Death" - The 'deceasedTime' tag is missing for the existence of
                'deceasedInd=true'. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="(ext:deceasedInd[@value='false'] and (ext:deceasedTime))">Error:
                Prescription Request - 7.2 Subject Of Care - "Subject of Care / Participant / Person
                or Organisation or Device / Person / Demographic Data / Date of Death Detail / Date
                of Death" - The 'deceasedTime' tag shall not be present for the missing of
                'deceasedInd=false'. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>-->

        </rule>



        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/ext:multipleBirthInd">


            <assert test="@value or @nullFlavor">Error: Prescription Request - 7.2 SUBJECT OF CARE -
                "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'multipleBirthInd' tag shall have at least the
                'nullFlavor' or 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="@value and @nullFlavor='NA'">Error: Prescription Request - 7.2 SUBJECT OF
                CARE - "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'multipleBirthInd' tag shall not have both the
                'nullFlavor=NA' and 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>



            <!-- Removed the following text "normalize-space(@value) != '' and" from the following test because QA was giving error -->
            <report
                test="@value and
                @value != 'true' and
                @value != 'false'"
                >Error: Prescription Request - 7.2 SUBJECT OF CARE - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / Birth Order" - The
                'multipleBirthInd' tag 'value' attribute shall contain the value 'true' or 'false'.
                Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>



        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/ext:multipleBirthOrderNumber">


            <assert test="@value or @nullFlavor">Error: Prescription Request - 7.2 SUBJECT OF CARE -
                "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'multipleBirthOrderNumber' tag shall have at
                least the 'nullFlavor' or 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="@value and @nullFlavor='NA'">Error: Prescription Request - 7.2 SUBJECT OF
                CARE - "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'multipleBirthOrderNumber' tag shall not have
                both the 'nullFlavor=NA' and 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="@value and not(number(@value))">Error: Prescription Request - 7.2 SUBJECT
                OF CARE - "Subject of Care / Participant / Person or Organisation or Device / Person
                / Demographic Data / Birth Order" - The 'multipleBirthOrderNumber' tag 'value'
                attribute shall be an integer value. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="@value and number(@value) and not(floor(@value) = number(@value))">Error:
                Prescription Request - 7.2 SUBJECT OF CARE - "Subject of Care / Participant / Person
                or Organisation or Device / Person / Demographic Data / Birth Order" - The
                'multipleBirthOrderNumber' tag 'value' attribute shall be an integer value. Refer to
                section 7.2 of the Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="@value and (@value) &lt; 1">Error: Prescription Request - 7.2 SUBJECT
                OF CARE - "Subject of Care / Participant / Person or Organisation or Device / Person
                / Demographic Data / Birth Order" - The 'multipleBirthOrderNumber' tag 'value'
                attribute shall be an integer greater than equal to 1. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


<!--
        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/ext:deceasedInd">


            <assert test="@value or @nullFlavor">Error: Prescription Request - 7.2 SUBJECT OF CARE -
                "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Date of Death Detail / Date of Death" - The 'deceasedInd' tag
                shall have at least the 'nullFlavor' or 'value' attribute. Refer to section 7.2 of
                the Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="@value and @nullFlavor='NA'">Error: Prescription Request - 7.2 SUBJECT OF
                CARE - "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Date of Death Detail / Date of Death" - The 'deceasedInd' tag
                shall not have both the 'nullFlavor=NA' and 'value' attribute. Refer to section 7.2
                of the Prescription_Request_CDA_Implementation_Guide_v0.5.</report>



            <!-\- Removed the following text "normalize-space(@value) != '' and" from the following test because QA was giving error -\->
            <report
                test="@value and
                @value != 'true' and
                @value != 'false'"
                >Error: Prescription Request - 7.2 SUBJECT OF CARE - "Subject of Care / Participant
                / Person or Organisation or Device / Person / Demographic Data / Date of Death
                Detail / Date of Death" - The 'deceasedInd' tag 'value' attribute shall contain the
                value 'true' or 'false'. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>-->

<!--

        <rule
            context="/cda:ClinicalDocument/cda:recordTarget/cda:patientRole/cda:patient/ext:deceasedTime">


            <assert test="@value or @nullFlavor">Error: Prescription Request - 7.2 SUBJECT OF CARE -
                "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'deceasedTime' tag shall have at least the
                'nullFlavor' or 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="@value and @nullFlavor='NA'">Error: Prescription Request - 7.2 SUBJECT OF
                CARE - "Subject of Care / Participant / Person or Organisation or Device / Person /
                Demographic Data / Birth Order" - The 'deceasedTime' tag shall not have both the
                'nullFlavor=NA' and 'value' attribute. Refer to section 7.2 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>-->



    </pattern>

</schema>
