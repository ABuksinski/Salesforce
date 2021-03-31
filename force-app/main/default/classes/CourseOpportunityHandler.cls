public with sharing class CourseOpportunityHandler {
    public static void newCalendarEvent(List<Course_Opportunity__c> courses) {
        List<Event> newEvent = new List<Event>();
        Boolean eventExist = false;
         List<Event> existing = [SELECT WhatID FROM Event];
        for(Course_Opportunity__c o : courses){
           eventExist = false;
            for(Integer i = 0; i<existing.size();i++){
                if(existing[i].whatId ==o.Id){
                    eventExist = true;
                }
            }
            if(!eventExist){
                Event eve = new Event();
                eve.WhatId = o.Id;
                eve.StartDateTime = o.Start_Date__c;
                eve.EndDateTime = o.End_Date__c ;
                eve.Subject = o.Name + ' : ' + o.Course__c;
                eve.OwnerId = o.Instuctor__c;
                eve.Location = o.Location__c;
                
                newEvent.add(eve);
            }
        }
        insert newEvent;
    }
    public static void updateCalendarEvent(List<Course_Opportunity__c> courses) {
        List<Event> newEvent = new List<Event>();
        Boolean eventExist;
        List<Event> existing = [SELECT WhatID FROM Event]; 
        for(Course_Opportunity__c o : courses){
              eventExist = false;
              for(Integer i=0; i>= existing.size();i++)
            if(!eventExist ){
                existing[i].WhatId = o.Id;
                existing[i].StartDateTime = o.Start_Date__c;
                existing[i].EndDateTime = o.End_Date__c ;
                existing[i].Subject = o.Name + ' : ' + o.Course__c;
                existing[i].OwnerId = o.Instuctor__c;
                existing[i].Location = o.Location__c;
                newEvent.add(existing[i]);
            }
        }
        update newEvent;
    }
    public static void deleteCalendarEvent(List<Course_Opportunity__c> courses) {
        List<Event> newEvent = new List<Event>();
        List<Event> existing = [SELECT WhatID FROM Event];

        for(Course_Opportunity__c o : courses){
            if(existing.size() > 0  && o.Stage__c == 'Cancelled'){
                delete[SELECT WhatID FROM Event WHERE WhatId =: o.id];
                
            }
        }
        
    }
}