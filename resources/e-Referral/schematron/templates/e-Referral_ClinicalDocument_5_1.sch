<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 1/06/2015 3:17:32 PM

                  Product            : e-Referral
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 5.1
                  IG Guide Title     : ClinicalDocument
                  Generator Version  : 2.28
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Referral_ClinicalDocument_5_1-errors"
        id="p-e-Referral_ClinicalDocument_5_1-errors"
        see="#p-e-Referral_ClinicalDocument_5_1-errors">


        <rule context="/">

            <assert test="cda:ClinicalDocument"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument" -
                The 'ClinicalDocument' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:ClinicalDocument) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument" -
                The 'ClinicalDocument' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument">

            <assert test="cda:typeId"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:typeId) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:templateId"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/templateId" -
                The 'templateId' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="cda:id"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/id" -
                The 'id' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:id) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/id" -
                The 'id' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:code"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:code) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:effectiveTime"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/effectiveTime" -
                The 'effectiveTime' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/effectiveTime" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:confidentialityCode"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/confidentialityCode" -
                The 'confidentialityCode' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:confidentialityCode) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/confidentialityCode" -
                The 'confidentialityCode' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:languageCode) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/languageCode" -
                The 'languageCode' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:setId) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/setId" -
                The 'setId' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:versionNumber) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/versionNumber" -
                The 'versionNumber' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="ext:completionCode"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(ext:completionCode) > 1"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag shall appear only once.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:typeId">

            <assert test="@root"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'root' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@root) or normalize-space(@root) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'root' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@root) or normalize-space(@root) = '' or @root = '2.16.840.1.113883.1.3'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'root' attribute shall contain the value '2.16.840.1.113883.1.3'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@extension"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'extension' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@extension) or normalize-space(@extension) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'extension' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@extension) or normalize-space(@extension) = '' or @extension = 'POCD_HD000040'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/typeId" -
                The 'typeId' tag 'extension' attribute shall contain the value 'POCD_HD000040'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:templateId">

            <report test="@root and normalize-space(@root) = ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/templateId" -
                The 'templateId' tag 'root' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="@extension and normalize-space(@extension) = ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/templateId" -
                The 'templateId' tag 'extension' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:id">

            <assert test="not(@nullFlavor)"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/id" -
                The 'id' tag 'nullFlavor' attribute shall not be present.
                Refer to 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:code">

            <assert test="@code"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'code' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@code) or normalize-space(@code) = '' or @code = '57133-1'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'code' attribute shall contain the value '57133-1'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.6.1'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.6.1'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@displayName"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Referral note'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/code" -
                The 'code' tag 'displayName' attribute shall contain the value 'Referral note'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:effectiveTime">

            <assert test="not(@nullFlavor)"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/effectiveTime" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall not be present.
                Refer to 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:confidentialityCode">

            <assert test="@nullFlavor"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/confidentialityCode" -
                The 'confidentialityCode' tag 'nullFlavor' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@nullFlavor) or normalize-space(@nullFlavor) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/confidentialityCode" -
                The 'confidentialityCode' tag 'nullFlavor' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@nullFlavor) or normalize-space(@nullFlavor) = '' or @nullFlavor = 'NA'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/confidentialityCode" -
                The 'confidentialityCode' tag 'nullFlavor' attribute shall contain the value 'NA'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:languageCode">

            <assert test="@code"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/languageCode" -
                The 'languageCode' tag 'code' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/languageCode" -
                The 'languageCode' tag 'code' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:setId">

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
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/setId" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:versionNumber">

            <assert test="@value"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/versionNumber" -
                The 'versionNumber' tag 'value' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/versionNumber" -
                The 'versionNumber' tag 'value' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/ext:completionCode">

            <assert test="@code"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'code' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'code' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system[@codeSystemName = 'NCTIS_Document_Status_Values']/code[(@code = current()/@code)]"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'code' attribute shall be as per 10.13 NCTIS: Admin Codes - Document Status.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'codeSystem' attribute is missing.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(@codeSystem) or normalize-space(@codeSystem) != ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'codeSystem' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101.104.20104'"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101.104.20104'.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="@displayName and normalize-space(@displayName) = ''"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'displayName' attribute shall contain a value.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="@code and normalize-space(@code) != '' and
                @displayName and normalize-space(@displayName) != '' and
                not(document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system [@codeSystemName = 'NCTIS_Document_Status_Values']/code[
                    (@code = current()/@code) and (
                    translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') =
                    translate(current()/@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'code' and 'displayName' attributes shall match as per 10.13 NCTIS: Admin Codes - Document Status.
                Refer to section 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="not(@nullFlavor)"
                >Error: e-Referral - 5.1 ClinicalDocument -
                "ClinicalDocument/ext:completionCode" -
                The 'completionCode' tag 'nullFlavor' attribute shall not be present.
                Refer to 5.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

        </rule>


    </pattern>

</schema>
