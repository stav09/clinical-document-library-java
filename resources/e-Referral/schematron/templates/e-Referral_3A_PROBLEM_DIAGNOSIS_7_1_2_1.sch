<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 1/06/2015 3:19:32 PM

                  Product            : e-Referral
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.2.1
                  IG Guide Title     : PROBLEM/DIAGNOSIS
                  Generator Version  : 2.28
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Referral_3A_PROBLEM_DIAGNOSIS_7_1_2_1-errors"
        id="p-e-Referral_3A_PROBLEM_DIAGNOSIS_7_1_2_1-errors"
        see="#p-e-Referral_3A_PROBLEM_DIAGNOSIS_7_1_2_1-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry[cda:observation/cda:code/@code = '282291009']">

            <report test="count(cda:observation) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']">

            <assert test="@classCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@moodCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="cda:id"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'id' tag is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:id) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'id' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:code) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:value"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Identification" -
                The 'value' tag is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:value) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Identification" -
                The 'value' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:effectiveTime) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Onset" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:entryRelationship[cda:observation/cda:code/@code = '103.15510']) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'entryRelationship' tag shall appear only once for ' Date of Resolution/ Remission'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '103.16545']) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'entryRelationship' tag shall appear only once for ' Problem/Diagnosis Comment'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:id">

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
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="cda:code[@code = '282291009']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '282291009']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.16117']/cda:entry/cda:observation/cda:code[@code='282291009'])"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.16117']/entry/observation/code[@code = '282291009']' path -
                1 or more tags are missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.6.96'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'code' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.6.96'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@displayName"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Diagnosis interpretation'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'code' tag 'displayName' attribute shall contain the value 'Diagnosis interpretation'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:value">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Identification" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="not(@nullFlavor)"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Identification" -
                The 'value' tag 'nullFlavor' attribute shall not be present.
                Refer to 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship[cda:observation/cda:code/@code = '103.15510']">

            <assert test="@typeCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'SUBJ'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'SUBJ'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:observation) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship/cda:observation[cda:code/@code = '103.15510']">

            <assert test="@classCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@moodCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:code) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:value"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'value' tag is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:value) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'value' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="cda:code[@code = '103.15510']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.15510']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.16117']/cda:entry/cda:observation[cda:code/@code='282291009']/cda:entryRelationship/cda:observation/cda:code[@code='103.15510'])"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.16117']/entry/observation[code/@code = '282291009']/entryRelationship/observation/code[@code = '103.15510']' path -
                1 or more tags are missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@displayName"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Date of Resolution/Remission'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'code' tag 'displayName' attribute shall contain the value 'Date of Resolution/Remission'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship/cda:observation[cda:code/@code = '103.15510']/cda:value">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'IVL_TS' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'IVL_TS')"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Date of Resolution/ Remission" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'IVL_TS'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship[cda:act/cda:code/@code = '103.16545']">

            <assert test="@typeCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:act) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship/cda:act[cda:code/@code = '103.16545']">

            <assert test="@classCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@moodCode"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:code) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:text"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'text' tag is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:text) > 1"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'text' tag shall appear only once.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'text' tag shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="cda:code[@code = '103.16545']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16545']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.16117']/cda:entry/cda:observation[cda:code/@code='282291009']/cda:entryRelationship/cda:act/cda:code[@code='103.16545'])"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.16117']/entry/observation[code/@code = '282291009']/entryRelationship/act/code[@code = '103.16545']' path -
                1 or more tags are missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@displayName"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Problem/Diagnosis Comment'"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'code' tag 'displayName' attribute shall contain the value 'Problem/Diagnosis Comment'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']/cda:entry/cda:observation[cda:code/@code = '282291009']/cda:entryRelationship/cda:act[cda:code/@code = '103.16545']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: e-Referral - 7.1.2.1 PROBLEM/DIAGNOSIS -
                "Problem/Diagnosis / Problem/Diagnosis Comment" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 7.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


    </pattern>

</schema>
