<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

    <!-- Status: Last Reviewed: 
        Status: Last Updated : 09/07/2013 -->

    <pattern name="p-e-Prescription_2_Global_Code_Checks_custom-errors"
        id="p-e-Prescription_2_Global_Code_Checks_custom-errors"
        see="#p-e-Prescription_2_Global_Code_Checks_custom-errors">

       
        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[(translate(cda:code/@displayName , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='ADMINISTRATIVE OBSERVATIONS')
            or (cda:code[@code = '102.16080'])]">
            

            <assert test="cda:code[(@code = '102.16080')]">Error: e-Prescription - Global Code Checks
                - The 'code' tag 'code' attribute shall be '102.16080'. Refer to section "5.
                Administrative Observations" of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

           
            <assert
                test="cda:code[(translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='ADMINISTRATIVE OBSERVATIONS')]"
                >Error: e-Prescription - Global Code Checks - The 'code' tag 'displayName' attribute
                shall be 'Administrative Observations'. Refer to section "5. Administrative
                Observations'" of the e-Prescription_CDA_Implementation_Guide_v0.3.</assert>           

        </rule>

        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[(translate(cda:code/@displayName , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='PRESCRIPTION ITEM') 
            or (cda:code[(@code = '102.16211')])]">
            

            <assert test="cda:code[(@code = '102.16211')]">Error: e-Prescription - Global Code Checks
                - The 'code' tag 'code' attribute shall be '102.16211'. Refer to section "8.2 Prescription Item" of the e-Prescription_CDA_Implementation_Guide_v0.3.</assert>

            
            <assert
                test="cda:code[(translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='PRESCRIPTION ITEM')]"
                >Error: e-Prescription - Global Code Checks - The 'code' tag 'displayName' attribute
                shall be 'Prescription Item'. Refer to section "8.2 Prescription Item" of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>            

        </rule>     
        
        
        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[(translate(cda:code/@displayName , 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='OBSERVATIONS') 
            or (cda:code[(@code = '101.16280')])]">
            
            
            <assert test="cda:code[(@code = '101.16280')]">Error: e-Prescription - Global Code Checks
                - The 'code' tag 'code' attribute shall be '101.16280'. Refer to section "8.3 Observations" of the e-Prescription_CDA_Implementation_Guide_v0.3.</assert>
            
            
            <assert
                test="cda:code[(translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') ='OBSERVATIONS')]"
                >Error: e-Prescription - Global Code Checks - The 'code' tag 'displayName' attribute
                shall be 'Observations'. Refer to section "8.3 Observations" of the
                e-Prescription_CDA_Implementation_Guide_v0.3.</assert>            
            
        </rule>      
        
        
        
        
        

    </pattern>
</schema>
