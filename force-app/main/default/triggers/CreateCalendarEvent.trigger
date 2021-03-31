trigger CreateCalendarEvent on Course_Opportunity__c (before insert, before update, before delete, after insert, after update, after delete) {
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
CourseOpportunityHandler.newCalendarEvent(Trigger.new);
    }
    else if(trigger.isUpdate){
CourseOpportunityHandler.updateCalendarEvent(Trigger.new);
CourseOpportunityHandler.deleteCalendarEvent(Trigger.new);
    }
    else if(trigger.isDelete){

    }
    else if(trigger.isUndelete){
    }
}
}