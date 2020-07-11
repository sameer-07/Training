trigger all_job_trigger on Job__c (before delete,after insert,after update) {

if(Trigger.isbefore && Trigger.isdelete)
    {      
            all_job_trigger.beforeDelete(trigger.old);
    }
    
    if(Trigger.isafter && Trigger.isinsert)
    {    
   
    all_job_trigger.afterInsertUpdate();
    
 }
    
if(Trigger.isafter && Trigger.isupdate)
    {    
  all_job_trigger.afterInsertUpdate();
     }
    
    if(Trigger.isafter && Trigger.isupdate )
    {
    all_job_trigger.afterUpdate(Trigger.New);
    }

}