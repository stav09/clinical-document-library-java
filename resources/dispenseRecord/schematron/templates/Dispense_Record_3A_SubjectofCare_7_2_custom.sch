<?xml version = "1.0" encoding = "UTF-8"?>


<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Dispense_Record_3A_SubjectofCare_7_2_custom-errors"
        id="p-Dispense_Record_3A_SubjectofCare_7_2_custom-errors"
        see="#p-Dispense_Record_3A_SubjectofCare_7_2_custom-errors">



        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16233']/cda:value">
            
            <assert test="@value = 'true' or @value = 'false'">Error: Dispense Record - 7.2 Subject of Care
                - "Subject of Care / Participant / Person or Organisation or Device
                / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated
                From Age" - The 'value' tag 'value' attribute shall contain the value 'true' or 'false'. Refer to
                section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
        </rule>


        <!-- AGE code = 103.20109 -->


        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation[cda:code/@code='103.20109']/cda:value">
            
            <assert test="not(@value) or number(@value) >= 0">Error: Dispense Record - 7.2 Subject of Care
                - "Subject of Care / Participant / Person or Organisation or Device
                / Person / Demographic Data / Age Detail / Age" - The 'value' tag 'value' attribute
                shall be an integer greater than equal to 0. Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
            
            <report
                test="
                @value and
                normalize-space(@value) != '' and
                number(@value) != floor(@value)
                "
                >Error: Dispense Record - 7.2 Subject of Care - "Subject of Care /
                Participant / Person or Organisation or Device / Person / Demographic Data / Age
                Detail / Age" - The 'value' tag 'value' attribute shall contain an integer value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>
            
            <assert
                test="not(@unit) or (@unit = 'd') or (@unit = 'wk') or (@unit = 'mo') or (@unit = 'a')"
                >Error: Dispense Record - 7.2 Subject of Care - "Subject of Care /
                Participant / Person or Organisation or Device / Person / Demographic Data / Age
                Detail / Age" - The 'unit' tag 'unit' attribute shall be 'd' or 'wk' or 'mo' or 'a'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
            
        </rule>
        

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation[cda:code/@code='103.16249']/cda:value">

            <assert test="not(@value) or number(@value) > 0">Error: Dispense Record - 7.2 Subject of Care
                - "Subject of Care / Participant /
                Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag 'value' attribute shall be an integer greater than equal to 1. Refer
                to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>
        
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[ext:participantRole/@classCode = 'PAT']">
   
            <assert test="@typeCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
            
            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'BEN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
            
            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>
   
        </rule>
        
    </pattern>

</schema>
