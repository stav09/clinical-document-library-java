<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 29/08/2013 9:35:29 AM

                  Product            : e-Referral
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.5.1.2.1
                  IG Guide Title     : RESULT GROUP SPECIMEN DETAIL
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Referral_3A_RESULTGROUPSPECIMENDETAIL_7_1_5_1_2_1_custom-errors"
        id="p-e-Referral_3A_RESULTGROUPSPECIMENDETAIL_7_1_5_1_2_1_custom-errors"
        see="#p-e-Referral_3A_RESULTGROUPSPECIMENDETAIL_7_1_5_1_2_1_custom-errors">

        
        <!-- IG Page 195 -->
        <rule context="cda:name[@code = '78615007'  and ancestor::*[cda:code/@code = '102.16156.2.2.2']]">
            
            <assert test="
                count(/cda:ClinicalDocument//cda:observation[cda:code/@code='102.16156.2.2.2']//cda:name[@code = '78615007']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20117']/cda:component/cda:section[cda:code/@code='102.16144']/cda:entry/cda:observation[@classCode='OBS']/cda:entryRelationship[cda:organizer/@classCode='BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code='102.16156.2.2.2']/cda:targetSiteCode/cda:qualifier/cda:name[@code='78615007'])"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "ResultGroup SpecimenDetail / Anatomical Site / Specific Location / Side" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section[code/@code = '102.16144']/entry/observation[@classCode = 'OBS']/entryRelationship[organizer/@classCode = 'BATTERY']/organizer/component/observation[code/@code = '102.16156.2.2.2']/targetSiteCode/qualifier/name[@code = '78615007']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>
        
        
        
        
        
        <!-- IG Page 216 -->
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20117']/cda:component/cda:section[cda:code/@code = '102.16144']/cda:entry/cda:observation[@classCode = 'OBS']/cda:entryRelationship[cda:organizer/@classCode = 'BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code = '102.16156.2.2.2']/cda:entryRelationship/cda:observationMedia">
            
            <assert test="@classCode"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "ResultGroup SpecimenDetail / Anatomical Site / Anatomical Location Image" -
                The 'observationMedia' tag 'classCode' attribute is missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
            
            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "ResultGroup SpecimenDetail / Anatomical Site / Anatomical Location Image" -
                The 'observationMedia' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
            
            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "ResultGroup SpecimenDetail / Anatomical Site / Anatomical Location Image" -
                The 'observationMedia' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
            
        </rule>
        
        <!-- IG Page 219 -->
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20117']/cda:component/cda:section[cda:code/@code = '102.16144']/cda:entry/cda:observation[@classCode = 'OBS']/cda:entryRelationship[cda:organizer/@classCode = 'BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code = '102.16156.2.2.2']/cda:entryRelationship/cda:observation[cda:code/@code = '103.16171']/cda:value">
            
            <assert
                test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'CD' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'CD') or 
                normalize-space(@xsi:type) = 'CE' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'CE')"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "Result Group Specimen Detail / Collection and handling / Sampling Preconditions" -
                The 'value' tag 'xsi:type' attribute shall contain the
                value 'CD' or 'CE'.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
            
        </rule>
        
        <!-- IG Page 219 -->
        <rule context="cda:code[@code = '103.16171' and ancestor::*[cda:code/@code = '102.16156.2.2.2']]">
            
            <assert test="
                count(/cda:ClinicalDocument//cda:observation[cda:code/@code='102.16156.2.2.2']//cda:code[@code = '103.16171']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20117']/cda:component/cda:section[cda:code/@code='102.16144']/cda:entry/cda:observation[@classCode='OBS']/cda:entryRelationship[cda:organizer/@classCode='BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code='102.16156.2.2.2']/cda:entryRelationship/cda:observation/cda:code[@code='103.16171'])"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "Result Group Specimen Detail / Collection and handling / Sampling Preconditions" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section[code/@code = '102.16144']/entry/observation[@classCode = 'OBS']/entryRelationship[organizer/@classCode = 'BATTERY']/organizer/component/observation[code/@code = '102.16156.2.2.2']/entryRelationship/observation/code[@code = '103.16171']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>
        


        <!-- IG Page 220 -->
        <rule context="cda:code[@code = '103.16529'  and ancestor::*[cda:code/@code = '102.16156.2.2.2']]">
            
            <assert test="
                count(/cda:ClinicalDocument//cda:observation[cda:code/@code='102.16156.2.2.2']//cda:code[@code = '103.16529']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20117']/cda:component/cda:section[cda:code/@code='102.16144']/cda:entry/cda:observation[@classCode='OBS']/cda:entryRelationship[cda:organizer/@classCode='BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code='102.16156.2.2.2']/cda:entryRelationship/cda:observation/cda:code[@code='103.16529'])"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "Result Group Specimen Detail / Handling and Processing / Collection Setting" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section[code/@code = '102.16144']/entry/observation[@classCode = 'OBS']/entryRelationship[organizer/@classCode = 'BATTERY']/organizer/component/observation[code/@code = '102.16156.2.2.2']/entryRelationship/observation/code[@code = '103.16529']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>
        
        <!-- IG Page 220 -->
        <rule context="cda:code[@code = '103.11014' and ancestor::*[cda:code/@code = '102.16156.2.2.2']]">
            
            <assert test="
                count(/cda:ClinicalDocument//cda:observation[cda:code/@code='102.16156.2.2.2']//cda:code[@code = '103.11014']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20117']/cda:component/cda:section[cda:code/@code='102.16144']/cda:entry/cda:observation[@classCode='OBS']/cda:entryRelationship[cda:organizer/@classCode='BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code='102.16156.2.2.2']/cda:entryRelationship/cda:observation/cda:code[@code='103.11014'])"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "Result Group Specimen Detail / Handling and Processing / DateTime Received" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section[code/@code = '102.16144']/entry/observation[@classCode = 'OBS']/entryRelationship[organizer/@classCode = 'BATTERY']/organizer/component/observation[code/@code = '102.16156.2.2.2']/entryRelationship/observation/code[@code = '103.11014']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
            </rule>

        <!-- IG Page 221 -->
        <rule context="cda:code[@code = '103.16187' and ancestor::*[cda:code/@code = '102.16156.2.2.2']]">
            
            <assert test="
                count(/cda:ClinicalDocument//cda:observation[cda:code/@code='102.16156.2.2.2']//cda:code[@code = '103.16187']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20117']/cda:component/cda:section[cda:code/@code='102.16144']/cda:entry/cda:observation[@classCode='OBS']/cda:entryRelationship[cda:organizer/@classCode='BATTERY']/cda:organizer/cda:component/cda:observation[cda:code/@code='102.16156.2.2.2']/cda:entryRelationship/cda:observation/cda:code[@code='103.16187'])"
                >Error: e-Referral - 7.1.5.1.2.1 RESULT GROUP SPECIMEN DETAIL -
                "Result Group Specimen Detail / Identifiers / Parent Specimen Identifier" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section[code/@code = '102.16144']/entry/observation[@classCode = 'OBS']/entryRelationship[organizer/@classCode = 'BATTERY']/organizer/component/observation[code/@code = '102.16156.2.2.2']/entryRelationship/observation/code[@code = '103.16187']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.1.2.1 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>



    </pattern>

</schema>
