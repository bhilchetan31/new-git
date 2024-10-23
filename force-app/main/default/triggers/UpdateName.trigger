trigger UpdateName on Consultant__c (before insert,before update) {

    For(Consultant__c con:Trigger.new){
        if(con.Type__c =='Intern'){
            con.Name='Er. ' +con.Name;
        }
    }
}