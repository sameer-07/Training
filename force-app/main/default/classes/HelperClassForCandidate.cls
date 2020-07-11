public class HelperClassForCandidate {
    
    public static void beforeInsert(List<candidate__c> can)
    {
        
         for(candidate__c acc:can)
         {
         if(acc.salary__c==NULL)
            {
                acc.salary__c.addError('Expected Salary field is missing');
            }
            
         for(candidate__c c:can)
            {
                c.Application_Date__c=system.today();

            }
    	}
 	}
      public static void BeforeInsertApply(List<candidate__c> can)
      {
  for(candidate__c acc : can){
    string jobname=acc.Job__c;

       
     for(Job__c c:[SELECT id from Job__c WHERE Active__c !=true])
     {
        if(c.id==jobname)
        {
            acc.addError('This job is not active'); 
        }
             
     }
  }
    

    
   
        
    }
}