trigger ProductTrigger on Product__c (after insert,after update) {
    if(trigger.isafter){
        if(Trigger.isinsert || Trigger.isupdate){
             ProductTriggerHandler.productMethod (trigger.new);
        }    
    }
  
}