<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 30/09/2013 2:25:59 PM

                  Product            : Dispense Record
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.2
                  IG Guide Title     : Subject of Care
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Dispense_Record_3A_SubjectofCare_7_2-errors"
        id="p-Dispense_Record_3A_SubjectofCare_7_2-errors"
        see="#p-Dispense_Record_3A_SubjectofCare_7_2-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']">

            <report test="count(cda:entry[cda:observation/cda:code/@code = '103.16233']) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'entry' tag shall appear only once for ' Date of Birth is Calculated From Age'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entry[cda:observation/cda:code/@code = '102.16234']) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'entry' tag shall appear only once for ' Date of Birth Accuracy Indicator'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entry[cda:observation/cda:code/@code = '103.20109']) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'entry' tag shall appear only once for ' Age'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entry[cda:observation/cda:code/@code = '103.16279']) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'entry' tag shall appear only once for ' Age Accuracy Indicator'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entry[cda:observation/cda:code/@code = '103.16249']) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'entry' tag shall appear only once for ' Birth Plurality'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry[cda:observation/cda:code/@code = '103.16233']">

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'DRIV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16233']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'value' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'value' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.16233']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16233']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation/cda:code[@code='103.16233'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16080']/entry/observation/code[@code = '103.16233']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Date of Birth is Calculated From Age'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'code' tag 'displayName' attribute shall contain the value 'Date of Birth is Calculated From Age'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16233']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16233']/cda:value">

            <assert test="@xsi:type"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'BL' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'BL')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth is Calculated From Age" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'BL'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry[cda:observation/cda:code/@code = '102.16234']">

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'DRIV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '102.16234']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '102.16234']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '102.16234']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation/cda:code[@code='102.16234'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16080']/entry/observation/code[@code = '102.16234']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Date of Birth Accuracy Indicator'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'code' tag 'displayName' attribute shall contain the value 'Date of Birth Accuracy Indicator'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '102.16234']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '102.16234']/cda:value">

            <assert test="@code"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'code' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'Health_Care_Client_Identifier_Date_Accuracy_Indicator']/code[(@code = current()/@code)]"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'code' attribute shall be as per AS 5017-2006 Health Care Client Identifier Date Accuracy Indicator.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'code' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@xsi:type"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'CS' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'CS')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Date of Birth Detail / Date of Birth Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'CS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry[cda:observation/cda:code/@code = '103.20109']">

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'DRIV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.20109']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'value' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'value' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.20109']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.20109']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation/cda:code[@code='103.20109'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16080']/entry/observation/code[@code = '103.20109']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Age'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'code' tag 'displayName' attribute shall contain the value 'Age'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.20109']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.20109']/cda:value">

            <assert test="@xsi:type"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'PQ' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'PQ')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'PQ'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry[cda:observation/cda:code/@code = '103.16279']">

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'DRIV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16279']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'value' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'value' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.16279']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16279']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation/cda:code[@code='103.16279'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16080']/entry/observation/code[@code = '103.16279']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Age Accuracy Indicator'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'code' tag 'displayName' attribute shall contain the value 'Age Accuracy Indicator'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16279']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16279']/cda:value">

            <assert test="@xsi:type"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'BL' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'BL')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Age Detail / Age Accuracy Indicator" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'BL'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry[cda:observation/cda:code/@code = '103.16249']">

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'DRIV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16249']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.16249']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16249']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16080']/cda:entry/cda:observation/cda:code[@code='103.16249'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16080']/entry/observation/code[@code = '103.16249']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Birth Plurality'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'code' tag 'displayName' attribute shall contain the value 'Birth Plurality'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16249']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16080']/cda:entry/cda:observation[cda:code/@code = '103.16249']/cda:value">

            <assert test="@xsi:type"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'INT' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'INT')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Person or Organisation or Device / Person / Demographic Data / Birth Plurality" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'INT'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2[ext:entitlement/ext:participant/@typeCode = 'BEN']">

            <assert test="@typeCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COVBY'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:entitlement) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement[ext:participant/@typeCode = 'BEN']">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'COV'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute shall contain the value 'COV'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:participant) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participant' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="ext:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Number" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Number" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="ext:code"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:code) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(ext:effectiveTime) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Validity Duration" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="ext:participant[@typeCode = 'BEN']">

            <assert test="
                count(/cda:ClinicalDocument//ext:participant[@typeCode = 'BEN']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'BEN'])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/coverage2/entitlement/participant[@typeCode = 'BEN']' path -
                1 or more tags are missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="ext:participantRole"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participantRole' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:participantRole) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participantRole' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'BEN']/ext:participantRole">

            <assert test="@classCode"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'PAT'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute shall contain the value 'PAT'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="ext:id"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'id' tag is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:id) > 1"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'id' tag shall appear only once.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'BEN']/ext:participantRole/ext:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement[ext:participant/@typeCode = 'BEN']/ext:code">

            <assert test="@code"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'code' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'NCTIS_Entitlement_Type_Values']/code[(@code = current()/@code)]"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'code' attribute shall be as per NCTIS: Admin Codes - Entitlement Type.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101.104.16047'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101.104.16047'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="@codeSystemName and normalize-space(@codeSystemName) = ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @codeSystemName and normalize-space(@codeSystemName) != '' and @codeSystemName != 'NCTIS Entitlement Type Values'"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Entitlement Type Values'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="@displayName and normalize-space(@displayName) = ''"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="@code and normalize-space(@code) != '' and
                @displayName and normalize-space(@displayName) != '' and
                not(document('CDAValidate_Vocabs.xml')/systems/system [@codeSystemName = 'NCTIS_Entitlement_Type_Values']/code[
                    (@code = current()/@code) and (
                    translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') =
                    translate(current()/@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'code' and 'displayName' attributes shall match as per NCTIS: Admin Codes - Entitlement Type.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 7.2 Subject of Care -
                "Subject of Care / Participant / Entitlement / Entitlement Type" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


    </pattern>

</schema>
