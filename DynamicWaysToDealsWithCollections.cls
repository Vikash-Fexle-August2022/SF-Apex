public class DynamicWaysToDealsWithCollections {
    //Create a constructor.
    public DynamicWaysToDealsWithCollections(){
		       	 Map<String,Map<String,List<Student__c>>> mapOfSchoolNameWithClassNameAndRelatedStudentsDetails=new Map<String,Map<String,List<Student__c>>>();
				 //Using Map function for find out Class and Student Details.       
        		 Map<String,List<Student__c>> mapOfClassNameAndRelatedStudentsDetails=new Map<String,List<Student__c>>();

        					//Using List function for fetch all the list of school.
    							List<School__c>schoolName=[SELECT Name 
                                             FROM School__c ];
       						//Using List function for fetch all the list of Students.
        					List<Student__c>studentList=[SELECT Name 
                                                 FROM Student__c];
        					//Using List function for fetch all the list of Classes.
                  List<Class__c>classList=[SELECT Name 
                                                         FROM Class__c];  
       			  System.debug('$$$$$$'+schoolName);
        
        			for(Class__c c: classList)
                {                         
        					mapOfClassNameAndRelatedStudentsDetails.put(c.Name,studentList);
           			}
        			for(School__c s:schoolName)
                {
            				mapOfSchoolNameWithClassNameAndRelatedStudentsDetails.put(s.Name,mapOfClassNameAndRelatedStudentsDetails);
        			  }
       			System.debug('#########_______------>>>>'+mapOfSchoolNameWithClassNameAndRelatedStudentsDetails);
    }   
}