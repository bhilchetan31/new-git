trigger Queuabletrigger on Account (after insert) {
    if(trigger.isafter && trigger.isinsert){
        system.enqueueJob(new Contactcreationqueueable(trigger.new));
    }
}