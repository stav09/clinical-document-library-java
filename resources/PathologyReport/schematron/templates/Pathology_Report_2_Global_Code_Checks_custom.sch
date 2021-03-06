<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>


    <!-- Pathology_Result_Report Clinical Document:  2 Global Code Checks -->

    <!-- Context: ClinicalDocument -->

     

    <pattern name="p-Pathology_Report_2_Global_Code_Checks_custom-errors"
        id="p-Pathology_Report_2_Global_Code_Checks_custom-errors"
        see="#p-Pathology_Report_2_Global_Code_Checks_custom-errors">

      
        
        <!--  4 :: Administrative Observations -->
        
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:code[@displayName ='Administrative Observations']">

            <assert test="@code = '102.16080'"
                >Error: Pathology Report - Administrative Observations- The 'code' tag 'code' attribute shall be '102.16080'. 
                Refer to section '4. Administrative Observations' of the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
   
        </rule>
    
       
        <!--  7.1.1 :: PATHOLOGY -->
        
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:code[@displayName ='Pathology']">

            <assert test="@code = '101.20018'"
                >Error: Pathology Report - PATHOLOGY / Section Type - The 'code' tag 'code' attribute shall be '101.20018'. 
                Refer to section '7.1.1. PATHOLOGY' of the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
        </rule>
        
        
        <!--  7.1.1.1 :: Detailed Clinical Model Identifier -->
        
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.20018']/cda:component/cda:section/cda:code[@displayName ='Pathology Test Result']">

            <assert test="@code = '102.16144'"
                >Error: Pathology Report - PATHOLOGY TEST RESULT / Detailed Clinical Model Identifier - The 'code' tag 'code' attribute shall be '102.16144'. 
                Refer to section '7.1.1.1. PATHOLOGY TEST RESULT' of the Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>
            
        </rule>       
        
    </pattern>

</schema>
