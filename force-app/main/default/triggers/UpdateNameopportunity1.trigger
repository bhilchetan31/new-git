trigger UpdateNameopportunity1 on Account (after insert) {
     list<Opportunity>opportunitytoupdate = new list<Opportunity>();
    For(Account acc:Trigger.new){
        Opportunity opp=new Opportunity();
         acc.Id=opp.AccountId;
        opp.CloseDate=Date.today();
        opp.StageName='Closed Won';
        acc.Name=opp.Name;
       
       opportunitytoupdate.add(opp);
    }
    if(!opportunitytoupdate.isEmpty()){
        insert opportunitytoupdate;
    }
    
}