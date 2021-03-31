    public with sharing class ServiceInvoiceGenerator {
        public static void ServiceInvoiceGenerator(List<Course_Opportunity__c> courses, List<Course_Opportunity__c> oldCourses) {
        List<Course_Invoice__c> newInvoices = new List<Course_Invoice__c>();
        Integer i = 0;
            for(Course_Opportunity__c o : courses){
                if(o.Stage__c == 'Completed' && oldCourses[i].Stage__c != 'Completed'){
                    Course_Invoice__c newInv = new Course_Invoice__c();
                    newInv.Instructor__c = o.Instuctor__c;
                    newInv.Course_Opportunity__c = o.Id;
                    newInv.Status__c = 'Draft';
                    newInv.Retention__c = 30;
                    newInv.VAT__c = 20;
                    newInvoices.add(newInv);

                }
                i++;
            }
            insert newInvoices;
        }
    }
