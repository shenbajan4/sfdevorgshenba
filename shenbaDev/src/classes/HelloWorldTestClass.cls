@isTest 
private class HelloWorldTestClass {
    static testMethod void validateHelloWorld() {
       Position__c p = new Position__c(Name='Sr.Developer', Min_Pay__c=50000);
       System.debug('MinPay before inserting new positon: ' + p.Min_Pay__c);

       // Insert Postion
       insert p;
    
       // Retrieve the new book
       p = [SELECT Min_Pay__c FROM Position__c WHERE Name =:p.Name];
       System.debug('Minpay after trigger fired: ' + p.Min_Pay__c);

       // Test that the trigger correctly updated the MinPay
       System.assertEquals(50500, p.Min_Pay__c);
    }
}