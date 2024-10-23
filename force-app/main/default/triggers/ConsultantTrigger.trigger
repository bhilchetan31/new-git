trigger ConsultantTrigger on Consultant__c (after insert,after update) {
 	if(trigger.isafter && trigger.isinsert || trigger.isafter && trigger.isupdate)
        Consultanthandler.Consultantmethod(Trigger.new);
    }