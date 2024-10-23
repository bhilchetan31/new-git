trigger contrig on Contact (after insert) {
    if(trigger.isafter && trigger.isinsert){
        Checkboxtriggerhand.trgmethod(trigger.new);
    }
}