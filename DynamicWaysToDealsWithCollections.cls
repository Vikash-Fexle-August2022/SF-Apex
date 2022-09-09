public class DynamicWaysToDealsWithCollections {
    //Create a constructor.
    public DynamicWaysToDealsWithCollections(){
		       	Map<String,Map<String,List<Student__c>>> mapOfSchoolNameWithClassNameAndRelatedStudentsDetails =new Map<String,Map<String,List<Student__c>>>();
				    //Using Map function for find out Class and Student Details.       
        		Map<String,List<Student__c>> mapOfClassNameAndRelatedStudentsDetails=new Map<String,List<Student__c>>();

        		//Using List function for fetch all the list of school.
    				List<School__c>school=[ SELECT id,Name 
                                      FROM School__c];
				    System.debug(school);
              //Initialize the for each loop to get school variable in new variable.	
        			for(School__c schoolList :school)
                        {
                          List<Class__c>classes=[SELECT Id,Name
                                                 FROM Class__c 
                                                 WHERE School__r.Id =: schoolList.Id];
                             
                            for(Class__c classList : classes)
                            {
                                List<Student__c>students=[SELECT Id,Name 
                                                          FROM Student__c 
                                                          WHERE Class__r.Id =: classList.Id];
                                mapOfClassNameAndRelatedStudentsDetails.put(classList.Name,students);
                                mapOfSchoolNameWithClassNameAndRelatedStudentsDetails.put(schoolList.Name,mapOfClassNameAndRelatedStudentsDetails);
                          
                            }
                        }
        			System.debug('##############'+mapOfSchoolNameWithClassNameAndRelatedStudentsDetails);
    }
}