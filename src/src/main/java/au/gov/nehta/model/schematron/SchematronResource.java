package au.gov.nehta.model.schematron;

/**
 * A class representing resources associated with schematron checking.
 */
public class SchematronResource {

  /**
   * default locations
   **/
  private static final String CCD_3B = "ccd-3B.sch";
  private static final String CCD_3A = "ccd-3A.sch";
  private static final String CCD_1A = "ccd-1A.sch";

  public enum SchematronResources {
    PCEHR_DISPENSE_3B(new SchematronResource("resources/PCEHR-DispenseRecord/", CCD_3B)),
    PCEHR_PRESCRIPTION_3B(new SchematronResource("resources/PCEHR-PrescriptionRecord/", CCD_3B)),
    E_PRESCRIPTION_3B(new SchematronResource("resources/ePrescription/", CCD_3B)),
    DISPENSE_RECORD_3B(new SchematronResource("resources/dispenseRecord/", CCD_3B)),
    PATHOLOGY_REPORT_3B(new SchematronResource("resources/PathologyReport/", CCD_3B)),
    EVENT_SUMMARY_3A(new SchematronResource("resources/EventSummary/", CCD_3A)),
    EVENT_SUMMARY_3B(new SchematronResource("resources/EventSummary/", CCD_3B)),
    SPECIALIST_LETTER_3A(new SchematronResource("resources/SpecialistLetter/", CCD_3A)),
    SPECIALIST_LETTER_3B(new SchematronResource("resources/SpecialistLetter/", CCD_3B)),
    DISCHARGE_SUMMARY_3A(new SchematronResource("resources/DischargeSummary/", CCD_3A)),
    DISCHARGE_SUMMARY_3B(new SchematronResource("resources/DischargeSummary/", CCD_3B)),
    SERVICE_REFERRAL_3A(new SchematronResource("resources/ServiceReferral/", CCD_3A)),
    SERVICE_REFERRAL_3B(new SchematronResource("resources/ServiceReferral/", CCD_3B)),
    DIAGNOSTIC_IMAGE_REPORT_3B(new SchematronResource("resources/DiagnosticImageReport/", CCD_3B)),
    E_REFERRAL_1A(new SchematronResource("resources/DiagnosticImageReport/", CCD_1A)),
    E_REFERRAL_3A(new SchematronResource("resources/e-Referral/", CCD_3A)),
    PRESCRIPTION_REQUEST_3B(new SchematronResource("resources/prescriptionRequest/", CCD_3B)),
    SHARED_HEALTH_SUMMARY_3B(new SchematronResource("resources/SharedHelathSummary/", CCD_3B));


    private SchematronResource resource;


    SchematronResources(SchematronResource r) {
      this.resource = r;
    }

    public SchematronResource resource() {
      return resource;
    }

  }

  private final String templatePath;
  private final String schematron;


  /**
   * A class representing resources associated with schematron checking.
   *
   * @param templatePath - the  location for the schematron template eg:
   * resources/PCEHR-DispenseRecord/
   * @param schematron - the  file of the schematron definition for a particular CDA document eg:
   * ccd-3B.sch
   */
  public SchematronResource(String templatePath, String schematron) {
    this.templatePath = templatePath;
    this.schematron = schematron;
  }

  /**
   * @return the schema location
   */
  public String getTemplatePath() {
    return templatePath;
  }

  /**
   * @return the schematron location
   */
  public String getSchematron() {
    return schematron;
  }

}
