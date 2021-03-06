<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 8/08/2013 2:04:04 PM

                  Product            : e-Prescription
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.3 AND 7.4
                  IG Guide Title     : Common Sections Entitlement
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Prescription_3A_CommonSectionsEntitlement_7_3AND7_4-errors"
        id="p-e-Prescription_3A_CommonSectionsEntitlement_7_3AND7_4-errors"
        see="#p-e-Prescription_3A_CommonSectionsEntitlement_7_3AND7_4-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2[ext:entitlement/ext:participant/@typeCode = 'HLD']">

            <assert test="@typeCode"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COVBY'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'coverage2' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:entitlement[ext:participant/@typeCode = 'HLD']) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag shall appear only once for ' Entitlement'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement[ext:participant/@typeCode = 'HLD']">

            <assert test="@classCode"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'COV'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'classCode' attribute shall contain the value 'COV'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="@moodCode"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'entitlement' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:participant) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participant' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="ext:id"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Number AND Prescriber Organization / Participant / Entitlement / Entitlement Number" -
                The 'id' tag is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:id) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Number AND Prescriber Organization / Participant / Entitlement / Entitlement Number" -
                The 'id' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="ext:code"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:code) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="count(ext:effectiveTime) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Validity Duration AND Prescriber Organization / Participant / Entitlement / Entitlement Validity Duration" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'HLD']">

            <report test="count(ext:participantRole) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participantRole' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="ext:participantRole"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participantRole' tag is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'HLD']/ext:participantRole">

            <assert test="@classCode"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'ASSIGNED'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'participantRole' tag 'classCode' attribute shall contain the value 'ASSIGNED'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="ext:id"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'id' tag is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:id) > 1"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'id' tag shall appear only once.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode = 'HLD']/ext:participantRole/ext:id">

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
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement AND Prescriber Organization / Participant / Entitlement" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement[ext:participant/@typeCode = 'HLD']/ext:code">

            <report test="@displayName and normalize-space(@displayName) = ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="@code and normalize-space(@code) != '' and
                @displayName and normalize-space(@displayName) != '' and
                not(document('CDAValidate_Vocabs.xml')/systems/system [@codeSystemName = 'NCTIS_Entitlement_Type_Values']/code[
                    (@code = current()/@code) and (
                    translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') =
                    translate(current()/@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'code' and 'displayName' attributes shall match as per NCTIS Entitlement Type Values.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="@codeSystemName and normalize-space(@codeSystemName) = ''"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="
                @codeSystemName and normalize-space(@codeSystemName) != '' and @codeSystemName != 'NCTIS Entitlement Type Values'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Entitlement Type Values'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="@codeSystem"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101.104.16047'"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101.104.16047'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'NCTIS_Entitlement_Type_Values']/code[(@code = current()/@code)]"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'code' tag 'code' attribute shall be as per NCTIS Entitlement Type Values.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Prescription - 7.3 AND 7.4 Common Sections Entitlement -
                "Prescriber / Participant / Entitlement / Entitlement Type AND Prescriber Organization / Participant / Entitlement / Entitlement Type" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.3 AND 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>


    </pattern>

</schema>
