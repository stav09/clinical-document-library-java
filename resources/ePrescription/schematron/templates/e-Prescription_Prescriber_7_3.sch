<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 8/08/2013 2:03:41 PM

                  Product            : e-Prescription
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.3
                  IG Guide Title     : Prescriber
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Prescription_Prescriber_7_3-errors"
        id="p-e-Prescription_Prescriber_7_3-errors"
        see="#p-e-Prescription_Prescriber_7_3-errors">


        <rule context="/cda:ClinicalDocument">

            <assert test="cda:author"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber" -
                The 'author' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:author) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber" -
                The 'author' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author">

            <report test="@typeCode and normalize-space(@typeCode) = ''"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber" -
                The 'author' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'AUT'"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber" -
                The 'author' tag 'typeCode' attribute shall contain the value 'AUT'.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="cda:time"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / DateTime" -
                The 'time' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:time) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / DateTime" -
                The 'time' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="cda:assignedAuthor"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'assignedAuthor' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:assignedAuthor) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'assignedAuthor' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:time">

            <assert test="not(@nullFlavor)"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / DateTime" -
                The 'time' tag 'nullFlavor' attribute shall not be present.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor">

            <assert test="cda:code"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:code) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="count(cda:id) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'id' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="cda:id"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'id' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="cda:assignedPerson"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant" -
                The 'assignedPerson' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:assignedPerson) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant" -
                The 'assignedPerson' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="count(cda:addr) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Address" -
                The 'addr' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:code">

            <report test="@displayName and normalize-space(@displayName) = ''"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="@code and normalize-space(@code) != '' and
                @displayName and normalize-space(@displayName) != '' and
                not(document('CDAValidate_Vocabs.xml')/systems/system [@codeSystemName = '1220.0 - ANZSCO - Australian and New Zealand Standard Classification of Occupations, First Edition, 2006']/code[
                    (@code = current()/@code) and (
                    translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') =
                    translate(current()/@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag 'code' and 'displayName' attributes shall match as per 1220.0 - ANZSCO - Australian and New Zealand Standard Classification of Occupations, First Edition, 2006.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="@codeSystem"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.13.62'"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.13.62'.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = '1220.0 - ANZSCO - Australian and New Zealand Standard Classification of Occupations, First Edition, 2006']/code[(@code = current()/@code)]"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'code' tag 'code' attribute shall be as per 1220.0 - ANZSCO - Australian and New Zealand Standard Classification of Occupations, First Edition, 2006.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:id">

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
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Role" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson">

            <assert test="ext:asEntityIdentifier"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:asEntityIdentifier) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <assert test="not(ext:asEntityIdentifier) or ext:asEntityIdentifier/ext:id[starts-with(@root, '1.2.36.1.2001.1003.0.800361')]"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag for 'HPI-I' is missing.
                "The value of one Entity Identifier SHALL be an Australian HPI-I." although there could be multiple Entity Identifiers.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="cda:name"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Person Name" -
                The 'name' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:name) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Person Name" -
                The 'name' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="count(ext:asEmployment) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Employment Detail / Occupation" -
                The 'asEmployment' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

            <report test="count(ext:asQualifications) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asEmployment">

            <report test="count(ext:jobCode) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Employment Detail / Occupation" -
                The 'jobCode' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asQualifications">

            <assert test="@classCode"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute shall contain a value.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'QUAL'"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute shall contain the value 'QUAL'.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="ext:code"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'code' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(ext:code) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'code' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asQualifications/ext:code">

            <assert test="cda:originalText"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'originalText' tag is missing.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <report test="count(cda:originalText) > 1"
                >Error: e-Prescription - 7.3 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'originalText' tag shall appear only once.
                Refer to section 7.3 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</report>

        </rule>


    </pattern>

</schema>
