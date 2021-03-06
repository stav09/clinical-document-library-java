<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>

    <!-- Context: ClinicalDocument/component/structuredBody/component[med_hist]/section -->

    <!-- Shared health Summary Clinical Document:  7.1.3 Past and Current Medical History (MEDICAL HISTORY)  -->


    <!-- Status: Last Reviewed: 20/12/2013
         Status: Last Updated : 20/12/2013 -->


    <pattern name="p-Shared_Health_Summary_3A_PastandCurrentMedicalHistory_MEDICALHISTORY_7_1_3_custom-errors"
        id="p-Shared_Health_Summary_3A_PastandCurrentMedicalHistory_MEDICALHISTORY_7_1_3_custom-errors"
        see="#p-Shared_Health_Summary_3A_PastandCurrentMedicalHistory_MEDICALHISTORY_7_1_3_custom-errors">

        <!-- component/section - 1..1 -->
        
        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16117']">
            
            <!--  The below rule satifies the following condition from SCS v1.1.: Each instance of this section with a child of type 'EXCLUSION STATEMENT -
                PROCEDURES' SHALL NOT have a child of type 'PROCEDURE'.-->
            <report
                test="cda:entry/cda:procedure[@classCode='PROC'] and cda:entry/cda:observation/cda:code[@code='103.16302.120.1.4']"
                >Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either one
                instance of 'EXCLUSION STATEMENT - PROCEDURES' OR SHALL have one or more instances of 'PROCEDURES' but there
                SHALL NOT be both 'EXCLUSION STATEMENT - PROCEDURES' and 'PROCEDURES'. Refer to
                section 7.1.3 of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>
            
            <!-- The below rule satifies the following condition from JIRA RPSA-1720/CCP-126: The software SHALL create an "Exclusion Statement - Procedures" 
                when there are no entries for both "Procedure" and "UNCATEGORISED MEDICAL HISTORY ITEM". -->
            <assert
                test="(cda:entry/cda:procedure[@classCode='PROC'] or cda:entry/cda:act/cda:code/@code='102.16627') or (cda:entry/cda:observation/cda:code[@code='103.16302.120.1.4'])"
                >Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either (one
                instance of 'EXCLUSION STATEMENT - PROCEDURES') OR SHALL have (one or more instances
                of 'PROCEDURES' OR one or more instances of 'UNCATEGORISED MEDICAL HISTORY ITEM'). Refer to
                section 7.1.3 of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            
            
            
            
            
            
            <!-- This below rule satisfies the following condition from SCS v1.1: Each instance of this section with a child of type 'EXCLUSION STATEMENT - 
                PROBLEMS AND DIAGNOSES' SHALL NOT have a child of type 'PROBLEM/DIAGNOSIS'.-->
            <report
                test="cda:entry/cda:observation/cda:code[@code='282291009'] and cda:entry/cda:observation/cda:code[@code='103.16302.120.1.3']"
                >Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either one
                instance of 'EXCLUSION STATEMENT - PROBLEMS AND DIAGNOSES > GLOBAL STATEMENT' OR
                SHALL have one or more instances of 'PROBLEM/DIAGNOSIS'
                but there SHALL NOT be both 'EXCLUSION STATEMENT -
                PROBLEMS AND DIAGNOSES' and 'PROBLEM/DIAGNOSIS' . Refer to section 7.1.3 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>
            
            <!-- The below rule satifies the following condition from JIRA RPSA-1720/CCP-127: The software SHALL create an "Exclusion Statement - Problems and Diagnoses" 
                when there are no entries for both "Problem/Diagnosis" and "UNCATEGORISED MEDICAL HISTORY ITEM". -->
            <assert
                test="(cda:entry/cda:observation/cda:code[@code='282291009'] or cda:entry/cda:act/cda:code[@code='102.16627']) or (cda:entry/cda:observation/cda:code[@code='103.16302.120.1.3'])"
                >Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either (one
                instance of 'EXCLUSION STATEMENT - PROBLEM/DIAGNOSIS') OR SHALL have (one or more instances
                of 'PROBLEM/DIAGNOSIS' OR one or more instances of 'UNCATEGORISED MEDICAL HISTORY ITEM'). Refer to
                section 7.1.3 of the Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            
            
            
            
            
            
            <!--  The below rule satisfies the following condition from SCS v1.1.: Unless an instance of this section has two exclusion statement children, it SHALL
                have at least one instance of 'PROBLEM/DIAGNOSIS' OR 'PROCEDURE' OR 'UNCATEGORISED MEDICAL HISTORY ITEM (MEDICAL HISTORY ITEM)'-->
            
            <assert test="cda:entry">Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - The
                'entry' tag is missing. Refer to section 7.1.3 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            <!-- The below rule satifies the following condition from JIRA RPSA-1720/CCP-128 -->
            <assert
                test="(cda:entry/cda:observation/cda:code/@code='103.16302.120.1.3' and cda:entry/cda:observation/cda:code/@code='103.16302.120.1.4') or
                (cda:entry/cda:observation/cda:code/@code='282291009') or
                (cda:entry/cda:procedure/@classCode='PROC')            or
                (cda:entry/cda:act/cda:code/@code='102.16627')"
                >Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either one
                instance of '"Exclusion Statement - Problems and Diagnoses > Global Statement" AND
                "Exclusion Statement - Procedures > Global Statement"' OR SHALL have one or more
                instances of '"PROBLEM/DIAGNOSIS" OR "PROCEDURE" OR "UNCATEGORISED MEDICAL HISTORY ITEM"' but there SHALL NOT be both. Refer to section 7.1.3 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            
            
            
            
            
            
            
            <!-- The below rule satifies the following condition from JIRA RPSA-1720/CCP-129 -->
            <report
                test="(cda:entry/cda:observation/cda:code/@code='103.16302.120.1.3' or cda:entry/cda:observation/cda:code/@code='103.16302.120.1.4')
                and (cda:entry/cda:act/cda:code/@code='102.16627')"
                > Error: Shared Health Summary - 7.1.3 Past and Current Medical History (MEDICAL HISTORY) - There SHALL be either one
                instance of 'Exclusion Statement - Procedures' and 'Exclusion Statement - Problems
                and Diagnoses' or shall have one or more instances of 'UNCATEGORISED MEDICAL HISTORY ITEM'
                but there SHALL NOT be both. Refer to section 7.1.3 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>
         
        </rule>

    </pattern>

</schema>
