<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 12/07/2013 2:37:12 PM

                  Product            : e-Prescription
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.4
                  IG Guide Title     : Prescriber organisation
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Prescription_PrescriberOrganisation_7_4_custom-errors"
        id="p-e-Prescription_PrescriberOrganisation_7_4_custom-errors"
        see="#p-e-Prescription_PrescriberOrganisation_7_4_custom-errors">


        <rule context="/cda:ClinicalDocument/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:asOrganizationPartOf/cda:wholeOrganization">
            
            <assert test="cda:telecom[substring-before(@value,':')=
                document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'Health_Care_Client_Electronic_Communication_Medium']/code[
                @alternativeCode = 'M' or @alternativeCode = 'T']/@hl7Code]
                ">Error: e-Prescription - 7.4 Prescriber Organization - "Prescriber Organization / Participant / Telecom -
                At least one 'telecom' tag 'value' attribute SHALL contain an Electronic Communication Medium with an implementation-specific value meaning 'Telephone' or 'Mobile'
                Refer to section 7.4 of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

                <assert test="cda:addr[@use =
                    document('CDAValidate_Vocabs.xml')/systems/system[@codeSystemName = 'Health_Care_Client_Identifier_Address_Purpose']/code[@alternativeCode = 'B']/@hl7Code]
                    ">Error: e-Prescription - 7.4 Prescriber Organization - "Prescriber Organization / Participant / Address -
                    At least one 'telecom' tag 'value' attribute SHALL contain an implementation-specific Address Purpose value equivalent to "Business".
                    Refer to section 7.4 of the
                    e-Prescription_CDA_Implementation_Guide_v0.3.</assert>
            
        </rule>
        
        

    </pattern>

</schema>
