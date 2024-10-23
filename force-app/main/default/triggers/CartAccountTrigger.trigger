trigger CartAccountTrigger on Cart__c (before insert, before update) {
    for (Cart__c cart : Trigger.new) {
        // Check if an account is selected in the cart
        if (cart.Account__c != null) {
            // Get the primary contact for the selected account
            Id primaryContactId = PrimaryContactSelector.getPrimaryContactId(cart.Account__c);
            
            // Set the Customer field with the primary contact Id
            cart.Customer__c = primaryContactId;
        }
    }
}