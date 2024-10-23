trigger Teachertrigger on Teacher__c (before insert) {
	
    For(Teacher__c tr:trigger.new){
        if(tr.Teachers_subject__c=='Math'){
          tr.Salary__c=30000;
        }
    }
}