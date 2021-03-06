package au.gov.nehta.model.clinical.shs;

import java.util.List;

import org.joda.time.DateTime;

import au.gov.nehta.model.cda.common.code.Coded;
import au.gov.nehta.model.cda.common.id.AsEntityIdentifier;
import au.gov.nehta.model.cda.common.telecom.Telecom;
import au.gov.nehta.model.clinical.common.participation.PersonName;
import au.gov.nehta.model.clinical.diagnostic.pathology.ExtendedEmploymentOrganisation;
import au.gov.nehta.model.clinical.etp.common.participation.AddressContext;
import au.gov.nehta.model.clinical.etp.common.participation.Entitlement;

/**
 * Document author for a shared health summary 
 *
 */
public interface SharedHealthSummaryAuthor{
	/**
	 * The involvement or role of the participant in the related action from a
	 * healthcare perspective rather than the specific participation
	 * perspective.
	 * 
	 * Role SHOULD have a value chosen from 1220.0 - ANZSCO - Australian and New
	 * Zealand Standard Classification of Occupations, First Edition, 2006 -
	 * METeOR 350899. [ABS2006]. However, if a suitable value in this set cannot
	 * be found, then any code set that is both registered with HL7 and
	 * publically available MAY be used.
	 */
	public Coded getRole();
	
	/**
	 * This element will hold the same value as Shared Health Summary > Date-
	 * Time Attested (ClinicalDocument/ legalAuthenticator/ time) Although the
	 * definition of this element states that it is a time interval, the
	 * following applies: "The end of the participation period of a Document
	 * Author participation is the time associated with the completion of
	 * editing the content of a document.". Thus only the end time need be
	 * recorded.
	 */
	public DateTime getParticipationPeriod();

	/**
	 * A number or code issued for the purpose of identifying a participant
	 * within a healthcare context.
	 */
	public List<AsEntityIdentifier> getEntityIdentifiers();
	
	/**
	 * The description of a location where an entity is located or can be
	 * otherwise reached or found and a description of the purpose for which
	 * that address is primarily used by that entity.
	 */
	public List<AddressContext> getAddresses();
	
	/**
	 * The electronic communication details of entities.
	 */
	public  List<Telecom> getElectronicCommunicationDetails();
	
	/**
	 * The appellation by which an individual may be identified separately from
	 * any other within a social context.
	 */
	public List<PersonName> getPersonNames();
	
	/*
	 * A person's occupation and employer
	 */
	public ExtendedEmploymentOrganisation getEmploymentDetail();
	
	/*
	 * The entitlement or right of a participant to act in a given capacity
	 * (as defined by Entitlement Type) within a healthcare context.
	 */
	public List<? extends Entitlement> getEntitlements(); 
	
	/**
	 * author/assignedAuthor/id
	 * 
	 * A required CDA element. This is a technical identifier that is used for
	 * system purposes such as matching. If a suitable internal key is not
	 * available, a UUID MAY be used.
	 */
	public String getID();
}
