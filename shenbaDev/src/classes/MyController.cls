public class MyController {
   //public ApexPages.StandardSetController stdCntrlr {get; set;}
   public Position__c posRecord {get; set;}
   List<Candidate__c> Candidates {get; set;}
   public Boolean s { get; set; }
   public MyController(ApexPages.StandardController controller) {
       posRecord = (Position__c)controller.getRecord();
       s=false;
       //posRecord.Name = posRecord.name;
       //update posRecord;
       // stdCntrlr = controller;
    }
   public void show()
   {
     s=true;
     
   }
   public List<Candidate__c> getCandidates() {
       Candidates = [SELECT Name,First_Name__c,Last_Name__c FROM Candidate__c
                WHERE Id in (
                Select Candidate__c from Job_Application__c where Position__c = :posRecord.Id
                )];
        return Candidates;
    }
}