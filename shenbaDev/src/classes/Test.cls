public class Test{
    public String filename{get;set;}
    public String body{get;set;}
  public void doAttachment(){ 
   Attachment at=new Attachment();
   at.Name=filename;
   at.Body=Blob.valueOf(body);
   //a//t.Parentid=//Needs to add your record id below which you need attachment ;
   insert at;
   }
}