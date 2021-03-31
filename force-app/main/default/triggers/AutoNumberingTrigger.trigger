trigger AutoNumberingTrigger on Course_Invoice__c (before insert, before update, before delete, after insert, after update, after delete) {
        if (trigger.isBefore){
            if(trigger.isInsert){
                for(Course_Invoice__c inv : trigger.New){
                    //Display error if someone manually tries to enter Job Number
                    if(inv.Name != null){
                        inv.addError('You are not allowed to enter Invoice Number manually. Its auto generated.');
                    }
                }
                AutoNumbering.AutoNumbering(trigger.New);
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
            }
            else if(trigger.isDelete){
        
            }
            else if(trigger.isUndelete){
            }
        }
        }
