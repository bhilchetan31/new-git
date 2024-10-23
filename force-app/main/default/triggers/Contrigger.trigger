trigger Contrigger on Contact (after insert) {
    if(trigger.isafter && trigger.isinsert){
        CheckboxTriggerhand.trgMethod(trigger.new);
    }
}