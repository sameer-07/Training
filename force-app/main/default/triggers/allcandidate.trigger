trigger allcandidate on candidate__c (before insert,after update) 
{

        if(Trigger.isbefore && Trigger.isinsert)
    {
    HelperClassForCandidate.beforeInsert(Trigger.New);
    HelperClassForCandidate.BeforeInsertApply(Trigger.New);
     }
     
}