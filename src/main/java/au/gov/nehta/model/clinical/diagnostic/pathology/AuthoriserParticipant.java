package au.gov.nehta.model.clinical.diagnostic.pathology;

import org.joda.time.DateTime;

public interface AuthoriserParticipant {
    
    /**
     * Details pertinent to the identification of an individual 
     * that has participated in a healthcare event/encounter/clinical
     * interaction
     * 
     */
    public AuthorParticipant getParticipant();
    

    /**
     * Although the definition of this element states that it is a time
     * interval, the following applies: "The end of the participation period of
     * a [Author] participation is the time associated with the completion of
     * editing the content..." Thus only the end time need be recorded.
     * 
     */
    public DateTime getEditingEndTime();


    /**
     * UUID This is a technical identifier that is used for system purposes such
     * as matching. If a suitable internal key is not available, a UUID MAY be
     * used.
     */
    public String getId();
}
