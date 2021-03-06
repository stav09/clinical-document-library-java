package au.gov.nehta.cda.npdr;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.UUID;

import javax.xml.bind.JAXBException;
import javax.xml.parsers.ParserConfigurationException;

import junit.framework.Assert;

import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.junit.Test;

import au.gov.nehta.builder.npdr.dispenserecord.DispenseRecordCreator;
import au.gov.nehta.builder.util.UUIDTool;
import au.gov.nehta.cda.test.Base;
import au.gov.nehta.cda.test.TestHelper;
import au.gov.nehta.model.cda.common.code.AMTCode;
import au.gov.nehta.model.cda.common.code.Code;
import au.gov.nehta.model.cda.common.code.PBSCode;
import au.gov.nehta.model.cda.common.code.PatientCategory;
import au.gov.nehta.model.cda.common.custodian.AssignedCustodian;
import au.gov.nehta.model.cda.common.custodian.AssignedCustodianImpl;
import au.gov.nehta.model.cda.common.custodian.Custodian;
import au.gov.nehta.model.cda.common.custodian.CustodianImpl;
import au.gov.nehta.model.cda.common.custodian.CustodianOrganization;
import au.gov.nehta.model.cda.common.custodian.CustodianOrganizationImpl;
import au.gov.nehta.model.cda.common.document.BaseClinicalDocument;
import au.gov.nehta.model.cda.common.document.ClinicalDocumentFactory;
import au.gov.nehta.model.cda.common.document.RelatedDocument;
import au.gov.nehta.model.cda.common.document.TransformRelatedDocument;
import au.gov.nehta.model.cda.common.id.AsEntityIdentifier;
import au.gov.nehta.model.cda.common.id.AsEntityIdentifierImpl;
import au.gov.nehta.model.cda.common.id.AssignedEntity;
import au.gov.nehta.model.cda.common.id.AssignedEntityImpl;
import au.gov.nehta.model.cda.common.id.LegalAuthenticator;
import au.gov.nehta.model.cda.common.id.LegalAuthenticatorImpl;
import au.gov.nehta.model.cda.common.id.MedicareCardIdentifier;
import au.gov.nehta.model.cda.common.id.TemplateIdImpl;
import au.gov.nehta.model.cda.common.org.Organization;
import au.gov.nehta.model.cda.common.org.OrganizationImpl;
import au.gov.nehta.model.cda.common.org.OrganizationNameImpl;
import au.gov.nehta.model.cda.common.person.Person;
import au.gov.nehta.model.cda.common.person.PersonImpl;
import au.gov.nehta.model.cda.common.telecom.Telecom;
import au.gov.nehta.model.cda.common.telecom.TelecomImpl;
import au.gov.nehta.model.cda.common.telecom.TelecomMedium;
import au.gov.nehta.model.cda.common.telecom.TelecomUse;
import au.gov.nehta.model.cda.common.time.Precision;
import au.gov.nehta.model.cda.common.time.PrecisionDate;
import au.gov.nehta.model.cda.common.time.RestrictedTimeInterval;
import au.gov.nehta.model.cda.npdr.DispenseRecordCdaModel;
import au.gov.nehta.model.cda.npdr.PCEHRDispenseItem;
import au.gov.nehta.model.cda.npdr.PCEHRDispenseItemBuilder;
import au.gov.nehta.model.clinical.common.SubjectOfCareDemographicData;
import au.gov.nehta.model.clinical.common.SubjectOfCareDemographicDataImpl;
import au.gov.nehta.model.clinical.common.SubjectOfCareParticipant;
import au.gov.nehta.model.clinical.common.SubjectOfCareParticipantImpl;
import au.gov.nehta.model.clinical.common.SubjectOfCarePerson;
import au.gov.nehta.model.clinical.common.SubjectOfCarePersonImpl;
import au.gov.nehta.model.clinical.common.participation.AddressContextImpl;
import au.gov.nehta.model.clinical.common.participation.AddressPurpose;
import au.gov.nehta.model.clinical.common.participation.AustralianAddress;
import au.gov.nehta.model.clinical.common.participation.AustralianAddressImpl;
import au.gov.nehta.model.clinical.common.participation.AustralianStateTerritory;
import au.gov.nehta.model.clinical.common.participation.DateAccuracy;
import au.gov.nehta.model.clinical.common.participation.DateAccuracyImpl;
import au.gov.nehta.model.clinical.common.participation.DateOfBirthDetail;
import au.gov.nehta.model.clinical.common.participation.DateOfBirthDetailImpl;
import au.gov.nehta.model.clinical.common.participation.NameSuffix;
import au.gov.nehta.model.clinical.common.participation.NameTitle;
import au.gov.nehta.model.clinical.common.participation.Organisation;
import au.gov.nehta.model.clinical.common.participation.OrganisationImpl;
import au.gov.nehta.model.clinical.common.participation.PersonName;
import au.gov.nehta.model.clinical.common.participation.PersonNameImpl;
import au.gov.nehta.model.clinical.common.participation.PersonNameUsage;
import au.gov.nehta.model.clinical.common.participation.Sex;
import au.gov.nehta.model.clinical.common.types.HPII;
import au.gov.nehta.model.clinical.common.types.HPIO;
import au.gov.nehta.model.clinical.common.types.IHI;
import au.gov.nehta.model.clinical.common.types.RealQuantity;
import au.gov.nehta.model.clinical.common.types.UniqueIdentifier;
import au.gov.nehta.model.clinical.common.types.UniqueIdentifierImpl;
import au.gov.nehta.model.clinical.etp.common.item.QuantityUnitDescriptionImpl;
import au.gov.nehta.model.clinical.etp.common.participation.AddressContext;
import au.gov.nehta.model.clinical.etp.common.participation.DispenserParticipant;
import au.gov.nehta.model.clinical.etp.common.participation.DispenserParticipantImpl;
import au.gov.nehta.model.clinical.etp.common.participation.DispenserParticipation;
import au.gov.nehta.model.clinical.etp.common.participation.DispenserParticipationImpl;
import au.gov.nehta.model.clinical.etp.common.participation.DispensingOrganisationParticipant;
import au.gov.nehta.model.clinical.etp.common.participation.DispensingOrganisationParticipantImpl;
import au.gov.nehta.model.clinical.etp.common.participation.DispensingOrganisationParticipation;
import au.gov.nehta.model.clinical.etp.common.participation.DispensingOrganisationParticipationImpl;
import au.gov.nehta.model.clinical.etp.common.participation.Entitlement;
import au.gov.nehta.model.clinical.etp.common.participation.EntitlementImpl;
import au.gov.nehta.model.clinical.etp.common.participation.EntitlementType;
import au.gov.nehta.model.clinical.etp.common.participation.ProviderAddress;
import au.gov.nehta.model.clinical.etp.common.participation.ProviderAddressImpl;
import au.gov.nehta.model.clinical.etp.dispenserecord.ClaimTypeCategory;
import au.gov.nehta.model.clinical.etp.dispenserecord.DispenseRecord;
import au.gov.nehta.model.clinical.etp.dispenserecord.DispenseRecordContext;
import au.gov.nehta.model.clinical.etp.dispenserecord.DispenseRecordContextImpl;
import au.gov.nehta.model.clinical.etp.dispenserecord.DispenseRecordImpl;
import au.gov.nehta.model.clinical.etp.dispenserecord.DispensingStatus;
import au.gov.nehta.model.schematron.SchematronValidationException;
import au.gov.nehta.schematron.Schematron;
import au.gov.nehta.schematron.SchematronCheckResult;
import au.gov.nehta.test.exceptions.SchemaValidationException;

public class DispenseRecordMaxTest extends Base{
    
    private static final String SCHEMATRON = "ccd-3B.sch";
    private static String SCHEMATRON_TEMPLATE_PATH =      "resources/PCEHR-DispenseRecord/";
    
    private static final String DOCUMENT_FILE_NAME = TEST_GENERATION+"npdr-dispense-max.xml";
    

    @Test
    public void test_MAX__NPDR_DispenseDocumentCreation() throws ParserConfigurationException, JAXBException, SchemaValidationException, SchematronValidationException {
        if (!new File(SCHEMATRON_TEMPLATE_PATH + "/schematron/schematron-Validator-report.xsl").exists()) {
            SCHEMATRON_TEMPLATE_PATH = "src/" + SCHEMATRON_TEMPLATE_PATH;
        }
        generateMaxDocument();
        SchematronCheckResult check = Schematron.check( SCHEMATRON_TEMPLATE_PATH, SCHEMATRON, DOCUMENT_FILE_NAME );
        
        show( check );
        
        Assert.assertTrue( check.schemaErrors.size() == 0 );
        Assert.assertTrue( check.schematronErrors.size() == 0 );
    }
    
    public void generateMaxDocument(){
        DateTime now = new DateTime();
        
        // Setup context
        // Subject Of Care
        //IHI ihi = new IHI( "8003600300001283" );
        String socFamilyName = "Example";
        
        DateTime dob = new LocalDate(1982,11,28).toDateTimeAtStartOfDay();
        

        AustralianAddress subjectOfCareAustralianAddress = new AustralianAddressImpl();
        subjectOfCareAustralianAddress.addUnstructuredAddressLine( "Desk-40, Level 2, 10 Browning street" );
        subjectOfCareAustralianAddress.setCity( "West End"  );
        subjectOfCareAustralianAddress.setState( AustralianStateTerritory.QUEENSLAND.getAbbreviation() );
        subjectOfCareAustralianAddress.setPostcode(  "4101" );

        AddressContext subjectOfCareAddress = new AddressContextImpl( subjectOfCareAustralianAddress, AddressPurpose.RESIDENTIAL_PERMANENT );
        PersonName subjectOfCarePersonName = new PersonNameImpl( socFamilyName );
        subjectOfCarePersonName.addNameTitle( NameTitle.MISTER.getDescriptor() );
        subjectOfCarePersonName.addNameSuffix( NameSuffix.JUNIOR.getDescriptor() );
        subjectOfCarePersonName.addGivenName( "I'm an" );
        subjectOfCarePersonName.addPersonNameUsage( PersonNameUsage.MAIDEN_NAME_OR_NAME_AT_BIRTH );
    
        
        //the most common way of adding a date of birth, age and accuracy indicator.
        //age will be calculated from date of birth
        DateAccuracy dobAccuracy =new DateAccuracyImpl(/*day */ true ,  /*month*/ true, /*year*/ true  );
        DateOfBirthDetail socDobDetail = new DateOfBirthDetailImpl( dob, dobAccuracy );
        
        
        SubjectOfCareDemographicData socDemographicData =new SubjectOfCareDemographicDataImpl( Sex.MALE, socDobDetail );

        
        SubjectOfCarePerson subjectOfCarePerson = new SubjectOfCarePersonImpl( subjectOfCarePersonName, socDemographicData );
        
        
        List<IHI> socIdentifiers = Collections.singletonList( new IHI("8003604444567894") );
        SubjectOfCareParticipant subjectOfCareParticipant =new SubjectOfCareParticipantImpl(socIdentifiers, subjectOfCareAddress, subjectOfCarePerson );



        AsEntityIdentifier subjectOfCareEntitlementNumber = new MedicareCardIdentifier("123456789-2");

        Entitlement subjectOfCareEntitlement = new EntitlementImpl( subjectOfCareEntitlementNumber, EntitlementType.MEDICARE_BENEFITS );
        
        //new ParticipantEntitlement starting from today
		subjectOfCareEntitlement.setEntitlementValidityDuration(RestrictedTimeInterval.getHighInstance( new PrecisionDate(Precision.DAY)));
		
		
				
        List<Entitlement> subjectOfCareEntitlementList = new ArrayList<Entitlement>();
        subjectOfCareEntitlementList.add( subjectOfCareEntitlement );
        subjectOfCareParticipant.setEntitlements( subjectOfCareEntitlementList );

//      String subjectOfCareParticipationType ="Subject Of Care";
//      SubjectOfCareParticipation subjectOfCareParticipation = new SubjectOfCareParticipationImpl( subjectOfCareParticipationType,  subjectOfCareParticipant );

        // Dispenser
        HPII dispenserHPII = new HPII( "8003610000010401" );
        String dispenserFamilyName = "Davo";
        
        Calendar dispenserDOB = GregorianCalendar.getInstance();
        dispenserDOB.set( 1952, Calendar.JANUARY, 1 );

        //the author location
        AustralianAddress dispenserAddress = new AustralianAddressImpl();
        dispenserAddress.addUnstructuredAddressLine( "chemical wherehouse 10 Browning street" );
        dispenserAddress.setCity( "West End"  );
        dispenserAddress.setState( AustralianStateTerritory.QUEENSLAND.getAbbreviation() );
        dispenserAddress.setPostcode(  "4101" );
        ProviderAddress addressCotext = new ProviderAddressImpl( false, dispenserAddress, AddressPurpose.BUSINESS );
        DispenserParticipant dispenserParticipant = new DispenserParticipantImpl( dispenserHPII, new PersonNameImpl( dispenserFamilyName ),addressCotext );
        DispenserParticipation dispenserParticipation = new DispenserParticipationImpl(   dispenserParticipant );

        // Dispenser Organisation
        HPIO dispensingOrgHPIO = new HPIO( "8003620000030333" );
        String dispenserOrgName = "London Drugs";

        AustralianAddress dispensingOrgAddress = new AustralianAddressImpl();
        dispensingOrgAddress.addUnstructuredAddressLine( "Desk-40, Level 2, 10 Browning street" );
        dispensingOrgAddress.setCity( "West End"  );
        dispensingOrgAddress.setState( AustralianStateTerritory.QUEENSLAND.getAbbreviation() );
        dispensingOrgAddress.setPostcode(  "4101" );
        
        ProviderAddress dispensingOrganisationAddress = new ProviderAddressImpl( false, dispensingOrgAddress, AddressPurpose.BUSINESS );
        Telecom dispensingOrgEmail = new TelecomImpl( TelecomMedium.EMAIL, "info@londondrugs.com.au", TelecomUse.BUSINESS );
        Telecom dispensingOrgTel = new TelecomImpl( "0512345678" );
        List<Telecom> dispensingOrgTelecoms = Arrays.asList( dispensingOrgEmail,dispensingOrgTel );
        Organisation dispensingOrganisation = new OrganisationImpl( dispenserOrgName );

        DispensingOrganisationParticipant dispensingOrganisationParticipant =
                new DispensingOrganisationParticipantImpl( 
                dispensingOrgHPIO,
                dispensingOrganisationAddress, 
                dispensingOrgTelecoms,
                dispensingOrganisation );

        AsEntityIdentifier dispensingOrgEntitlement = new AsEntityIdentifierImpl("1.22.333.4444","12345678-1");
        
        
        Entitlement dispensingOrganisationEntitlement = new EntitlementImpl( dispensingOrgEntitlement, EntitlementType.MEDICARE_PHARMACY_APPROVAL_NUMBER );
        
	
        //validity between now and two weeks from now
        dispensingOrganisationEntitlement.setEntitlementValidityDuration(RestrictedTimeInterval.getLowHighInstance(  new PrecisionDate(Precision.DAY, 900l) ,new PrecisionDate(Precision.DAY)));
		
       
        DispensingOrganisationParticipation dispensingOrganisationParticipation = new DispensingOrganisationParticipationImpl( dispensingOrganisationParticipant );




        //therapeuticGoodIdentification 
        Code amt = new AMTCode("23641011000036102","paracetamol 500 mg + codeine phosphate 30 mg tablet");
        Code pbs = new PBSCode("1471K","FLUCONAZOLE");
        
        //amt may be translated to pbs, or either may be used on their own
        amt.addTranslation( pbs);
        
        
        
        
        // A builder pattern to create a 'PCEHRDispenseItem' object which can be complex.
        PCEHRDispenseItemBuilder builder = new PCEHRDispenseItemBuilder();
        
        builder //may chain calls 
        
        .therapeuticGood(  pbs ) //example of using pbs without amt->pbs transaltion
        .eventDate( new DateTime() )
        .isbrandSubstitutionOccured( true )
        .maximumNumberOfRepeats( 5)
        .numberOfThisDispense(1)
        .claimTypeCategory( ClaimTypeCategory.GENERAL_BENEFIT )
        .quantityDispensed( QuantityUnitDescriptionImpl.create(new RealQuantity( 3, "bottles" )) )
        .patientCategory(PatientCategory.COMMUNITY_PATIENT)
        .prescriptionItem( UniqueIdentifierImpl.createSimpleIdentifier( "1.22.33.444", "123457" ) )
        .dispenseItem( UniqueIdentifierImpl.createSimpleIdentifier( "1.22.33.444", "123456" ) )
        .dispensingStatusType( DispensingStatus.COMPLETED );
        
        PCEHRDispenseItem content=builder.build();

        DispenseRecordContext context = new DispenseRecordContextImpl( subjectOfCareParticipant, dispenserParticipation, dispensingOrganisationParticipation );
        DispenseRecord dispenseRecord = new DispenseRecordImpl( context , content  );
        
        
        int versionId = 2; //this version replaces a previous document
        BaseClinicalDocument cdaClinicalDocument = ClinicalDocumentFactory.getNPDRDispenseRecord();
        cdaClinicalDocument.setVersionNumber(  versionId );
    
        // String dispenseDocumentId = "2.25.300851251280737466240776669920800075139";
        
        // You can also use the conversion tool
        String doucmentUUID = UUID.randomUUID().toString(); 
        String documentIdAsAnOid =  UUIDTool.uuidToOid(doucmentUUID );                                          
        String dispenseDocumentId=documentIdAsAnOid;
        
        cdaClinicalDocument.setClinicalDocumentId( dispenseDocumentId );
        
        // as an example we can add another template if needed.
        cdaClinicalDocument.addTemplateId( TemplateIdImpl.getInstance( "1.0", "1.2.36.1.2001.1001.100.149" ) );
        String cdaSetID = "2.3.1234535353";
        cdaClinicalDocument.setSetId( cdaSetID );
        
        HPII authenticator = new HPII("8003610000010401");
        Person authenticatorPerson =  PersonImpl.getInstance( authenticator , new PersonNameImpl("Jones") );
        HPIO authHpio =  new HPIO("1234687901234561");
        Organization authenticatingOrg = OrganizationImpl.getInstance( authHpio  );
        AssignedEntity assignedAuthenticator = AssignedEntityImpl.getInstance( UUID.randomUUID().toString(), authenticatorPerson, authenticatingOrg);
        
        LegalAuthenticator cdaLegalAuthenticator = LegalAuthenticatorImpl.getInstance(now , assignedAuthenticator );


        //HPIO the easy way
        AsEntityIdentifier custodianIdentifier = new HPIO( "8003620000030333" );
        
        
        UniqueIdentifier typedDocumentID = new UniqueIdentifierImpl( UUID.randomUUID().toString() );
        UniqueIdentifier otherId = new UniqueIdentifierImpl( UUID.randomUUID().toString());
        
        
        CustodianOrganization custodianOrg = 
                CustodianOrganizationImpl.getInstance( Arrays.asList(typedDocumentID,otherId),
                custodianIdentifier );
        custodianOrg.setName( new OrganizationNameImpl("Mal's Practice") );

        AssignedCustodian cdaAssignedCustodian = AssignedCustodianImpl.getInstance( custodianOrg );
        
        Custodian cdaCustodian = CustodianImpl.getInstance( cdaAssignedCustodian );
    
         // replacement style related document
//        int replacedVersion = versionId++;
//        UniqueIdentifier parentDocumentID = UniqueIdentifierImpl.createSimpleIdentifier( dispenseDocumentId, "extension" );
//        UniqueIdentifier parentDocumentSetID = UniqueIdentifierImpl.createSimpleIdentifier( cdaSetID, "Source Record Identifier" );
//        ReplacementRelatedDocument relatedDocument = new ReplacementRelatedDocument( parentDocumentID, parentDocumentSetID, replacedVersion );
//        //the document code being replaced
//        Code code = new NCTISDataComponent("100.16765","PCEHR Dispense Record");
//        relatedDocument.setDocumentCode( code  );
//        List<RelatedDocument> relatedDocuments = Collections.singletonList( (RelatedDocument)relatedDocument  );
        
        
        
        //transform style replacement document
        UniqueIdentifier docId = new UniqueIdentifierImpl(  UUIDTool.uuidToOid(UUID.randomUUID()) );
        UniqueIdentifier setId =  new UniqueIdentifierImpl( UUID.randomUUID().toString()  );
       
        TransformRelatedDocument relatedDocument = new TransformRelatedDocument( docId, setId, 1 );
        List<RelatedDocument> relatedDocuments = Collections.singletonList( (RelatedDocument)relatedDocument  );
        
        DispenseRecordCdaModel dispenseRecordCdaModel = 
                new DispenseRecordCdaModel( 
                        cdaClinicalDocument,
                        cdaLegalAuthenticator,
                        relatedDocuments,
                        cdaCustodian
                        );
    
        
        DispenseRecordCreator dispenseRecordCreatorCreator = new DispenseRecordCreator( dispenseRecordCdaModel, dispenseRecord );
        //dispenseRecordCreatorCreator.useStrict(); // do strict Schematron checking
        String cdaString;
        try {
            cdaString = TestHelper.documentToXML( dispenseRecordCreatorCreator.create() );
        } catch (Exception e) {
            throw new RuntimeException( e );
        }
        
        TestHelper.printToFile( cdaString, DOCUMENT_FILE_NAME );
        System.out.println( cdaString  );
    }
}
