trigger Cartitemtrigger on Card_Item__c (after insert ,after update) {
    if(trigger.isafter){
        if(trigger.isinsert || trigger.isupdate){
            CartTriggerHandler.cartitemmethod(trigger.new);
            
        }
    }
}