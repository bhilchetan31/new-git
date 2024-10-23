trigger contrigger1 on Contact (after insert,after update) {
	
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            CheckboxTriggerhand.trgmethod(Trigger.new);
        }
    }
}