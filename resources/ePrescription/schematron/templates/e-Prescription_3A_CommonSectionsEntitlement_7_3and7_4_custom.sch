<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 12/07/2013 2:37:33 PM

                  Product            : e-Prescription
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.3 and 7.4
                  IG Guide Title     : Common Sections Entitlement
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Prescription_3A_CommonSectionsEntitlement_7_3and7_4_custom-errors"
        id="p-e-Prescription_3A_CommonSectionsEntitlement_7_3and7_4_custom-errors"
        see="#p-e-Prescription_3A_CommonSectionsEntitlement_7_3and7_4_custom-errors">



        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/ext:coverage2/ext:entitlement/ext:participant[ext:participantRole/@classCode = 'ASSIGNED']">

            <assert test="@typeCode"
                >Error: e-Prescription - 7.3 and 7.4 Common Sections Entitlement -
                "Prescriber or Prescriber Organization / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute is missing.
                Refer to section 7.3 and 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: e-Prescription - 7.3 and 7.4 Common Sections Entitlement -
                "Prescriber or Prescriber Organization / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.3 and 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'HLD'"
                >Error: e-Prescription - 7.3 and 7.4 Common Sections Entitlement -
                "Prescriber or Prescriber Organization / Participant / Entitlement" -
                The 'participant' tag 'typeCode' attribute shall contain the value 'HLD'.
                Refer to section 7.3 and 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

        </rule>

<!--
        Refer to RPSA-904
        <rule context = "/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/ext:coverage2/ext:entitlement/ext:participant[@typeCode='HLD']/ext:participantRole[@classCode ='ASSIGNED']/ext:id">
            
            
            <assert test = "
                not(@root) or normalize-space(@root) = ''
                or not(/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:id/@root)
                or normalize-space(/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:id/@root) = ''
                or not(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:id/@root)
                or normalize-space(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:id/@root) = ''
                or 
                ((@root) = normalize-space(/cda:ClinicalDocument/cda:author/cda:assignedAuthor/cda:id/@root) 
                or
                ((@root) = normalize-space(/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:id/@root)))"
                >Error: e-Prescription - 7.3 and 7.4 Common Sections Entitlement -
                "Prescriber or Prescriber Organization / Participant / Entitlement" -
                The 'ext:id' tag 'root' attribute shall be as ClinicalDocument/author/assignedAuthor/id/@root or ClinicalDocument/componentOf/encompassingEncounter/location/healthCareFacility/id.
                Refer to section 7.3 and 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>
        </rule>-->

    </pattern>

</schema>
