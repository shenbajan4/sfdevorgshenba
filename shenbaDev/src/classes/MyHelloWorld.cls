public class MyHelloWorld {
  public static void apply(Position__c[] position) {
      for (Position__c p :position){
         p.Min_Pay__C +=500;
      }
   }
}