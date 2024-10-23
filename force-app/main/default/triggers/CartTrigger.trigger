trigger CartTrigger on Cart__c (before insert, before update) {
    if (Trigger.isBefore) {
        PrimaryContactSelector.getcontact(Trigger.new);
    }
}