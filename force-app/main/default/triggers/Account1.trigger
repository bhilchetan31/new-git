trigger Account1 on Account (before insert) {
    for(Account acc:Trigger.new){
        if(acc.Rating =='Hot'){
            acc.Industry ='Banking';
        }
    }
}