package au.gov.nehta.model.cda.acd;

import au.gov.nehta.model.cda.common.custodian.Custodian;
import au.gov.nehta.model.cda.common.document.BaseClinicalDocument;
import au.gov.nehta.model.cda.common.document.ClinicalDocument;
import au.gov.nehta.model.cda.common.id.LegalAuthenticator;
import au.gov.nehta.model.common.CDAModelImpl;
import org.joda.time.DateTime;

public class AdvanceCareDirectiveModel extends CDAModelImpl {

  private DateTime effectiveTime;
  private ClinicalDocument pathClinicalDoucment;

  public AdvanceCareDirectiveModel(
      ClinicalDocument clinicalDocument,
      LegalAuthenticator legalAuthenticator,
      Custodian custodian,
      DateTime effectiveTime) {
    super(null, legalAuthenticator, custodian);
    this.pathClinicalDoucment = clinicalDocument;
    this.effectiveTime = effectiveTime;
    validate();
  }

  private void validate() {
    if (pathClinicalDoucment == null) {
      throw new IllegalArgumentException("PathologyClinicalDocument missing");
    }
    if (pathClinicalDoucment.getCompletionCode() == null) {
      throw new IllegalArgumentException("PathologyClinicalDocument is missing completion code");
    }
    if (pathClinicalDoucment.getClinicalDocumentId() == null) {
      throw new IllegalArgumentException("PathologyClinicalDocument is missing DocumentID code");
    }
    if (pathClinicalDoucment.getTypeId() == null) {
      throw new IllegalArgumentException("PathologyClinicalDocument is missing typeID ");
    }
    if (pathClinicalDoucment.getTemplateIds() == null
        || pathClinicalDoucment.getTemplateIds().size() == 0) {
      throw new IllegalArgumentException("PathologyClinicalDocument is missing templateId ");
    }

    if (effectiveTime == null) {
      throw new IllegalArgumentException("AuthorTime is missing");
    }
  }

  public ClinicalDocument getCompletionClinicalDoucment() {
    return pathClinicalDoucment;
  }

  @Override
  public BaseClinicalDocument getBaseClinicalDocument() {
    return pathClinicalDoucment;
  }

  public DateTime getAuthorTime() {
    return effectiveTime;
  }

  public void setAuthorTime(DateTime authorTime) {
    this.effectiveTime = authorTime;
  }
}
