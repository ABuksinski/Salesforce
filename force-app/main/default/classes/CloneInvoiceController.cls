public with sharing class CloneInvoiceController {   
//     public String idOfRecord {get;set;}
   
//     public void cloneRecord()
//     {
//         List<Invoice_Line_Item__c> items = new List<Invoice_Line_Item__c>();
//         Course_Invoice__c inv = [SELECT Id, Name, Stage__c, Course_Opportunity__c FROM Course_Invoice__c WHERE Id = idOfRecord ];
//         Course_Invoice__c invCopy = inv.clone(false, true);
//         insert invCopy;
//         List<Invoice_Line_Item__c> it = [SELECT Id, Name, Course_Invoice__c FROM Invoice_Line_Item__c WHERE Course_Invoice__c = : inv.Id];
//         for(Invoice_Line_Item__c i : it)
//         {
//             Invoice_Line_Item__c itCopy = i.clone(false,true);
//             itCopy.Course_Invoice__c = invCopy.Id;
//             items.add(itCopy);
//         }
//         insert items;
//     }
}