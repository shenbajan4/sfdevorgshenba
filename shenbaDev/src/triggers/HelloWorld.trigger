trigger HelloWorld on Position__c (before insert) {
Position__c[] p= Trigger.new;
MyHelloWorld.apply(p);
}