public class EncryptionCandidate {
public static void print()
{
   Candidate__c c=[Select id,name,EIN__c from Candidate__c where id='a01i000000MoFbX'];
   System.debug('Candidate ***'+c.name+' '+c.EIN__c);
}
}