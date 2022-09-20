		public class CountsManager
		{
  		public static void  updateNoOfStudentDetails(String schoolName)
    	{
        	//Create a List of School to find all the school with the help of parent to child relationship. 
        	List<School__c> listOfSchool=[SELECT Id, Name, (SELECT Id FROM Students__r) 
                                      FROM School__c 
                                      Where Name=:schoolName ];
       	
        	//Check the list of school is empty or not.
        	if(!listOfSchool.isEmpty())
        	{ 
                //Fetch the school in which i want to show all the number of students.
               for(School__c school:listOfSchool)
               {
                   school.Number_of_Students__c=school.Students__r.size();
                   
               }
               
            }
            //When no any school fetching then go to else part.
        	else
        		{
            		System.debug('Unable to fetch');
        		}
        
       	 	if(!listOfSchool.isEmpty())
       		 {
            	update listOfSchool;
			 }
   	 	}
   
    	public static void updateNoOfClassesDetails(ID schoolId)
    	{
            //Create a List of School to find all the school with the help of parent to child relationship. 
        List<School__c> totalClasses=[SELECT Id,Name,(SELECT Id FROM Classes__r) 
                                      FROM School__c 
                                      WHERE Id=:schoolId];
            //Check the list of Classes is empty or not.
            if(!totalClasses.isEmpty())
            {
                for(School__c cls:totalClasses)
               	 	{
                    cls.No_of_Classes__c=cls.Classes__r.size();
                	}
            }
            //When no any Classes ol fetching then go to else part.
            else
            {
               	 System.debug('Unable to fetch update No Of Classes Details');
            }
            if(!totalClasses.isEmpty())
            {
                update totalClasses;
            }
		}  
}