trigger updateweb on Lead (before insert,before update) {
	
    For(Lead ld:Trigger.new){
        if(ld.LeadSource=='Web'){
            ld.Status='Closed - Converted';
        }
    }
}