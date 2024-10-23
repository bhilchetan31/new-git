trigger StudentTrigger on Student__c (before delete) {
    if(trigger.isbefore && trigger.isdelete){
        Studenthandlerclass.studmethod(Trigger.old);
    }
}