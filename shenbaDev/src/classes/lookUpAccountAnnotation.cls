global class lookUpAccountAnnotation {
   @InvocableMethod
   public static void getAccountIds(List<Id> aid) {
      Map<string,ID> testmap=new Map<String,Id>();
      List<Account> accountId = [Select id,BillingStreet from Account where id in :aid];
      List<contact> contacts= [SELECT id,name,mailingStreet FROM Contact WHERE AccountId=:accountId[0].id];
      for (Contact c :contacts) {
         c.mailingStreet=accountId[0].BillingStreet;
      }
    if(contacts!=null && contacts.size()>=1)
     update contacts;
   }
}