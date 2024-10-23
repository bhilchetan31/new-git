trigger orderline on OrderLineItem__c (before insert,before update) {
    if(trigger.isbefore && trigger.isinsert || trigger.isbefore && trigger.isupdate){
        OrderLineItemHandler.ordermethod(trigger.new);
        
    }
}