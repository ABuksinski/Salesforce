trigger ServiceInvoiceGeneratorTrigger on Course_Opportunity__c (before insert, before update, before delete, after insert, after update, after delete) {
    if (trigger.isBefore){
        if(trigger.isInsert){
    
        }
        else if(trigger.isUpdate){
    
        }
        else if(trigger.isDelete){
    
        }
        else if(trigger.isUndelete){
        }
    } else if(trigger.isAfter) {
        if(trigger.isInsert){

        }
        else if(trigger.isUpdate){
ServiceInvoiceGenerator.ServiceInvoiceGenerator(Trigger.new, Trigger.old);
        }
        else if(trigger.isDelete){
    
        }
        else if(trigger.isUndelete){
        }
    }
    }