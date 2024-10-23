trigger DuplicateContact on Contact (before insert) {
	
    if(trigger.isinsert && trigger.isbefore){
        Contacthandler.Contactmethod(Trigger.new);
    }
}