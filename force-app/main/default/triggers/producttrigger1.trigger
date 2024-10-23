trigger producttrigger1 on Product__c (before insert, before update) {
    ProductQuantityHandler.deactivateProducts(Trigger.new);
}