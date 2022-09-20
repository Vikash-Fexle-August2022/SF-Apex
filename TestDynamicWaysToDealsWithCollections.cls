/*****
Create a Test Class to verify DynamicWaysToDealsWithCollections .
Date : 20-09-2022
Code Coverage : 100%
Test Case : All Passed.
*****/
@isTest
private class TestDynamicWaysToDealsWithCollections 
{ 
   private static testmethod void DetailsOfSchoolClassStudent()
     { 
         //Create a school variable where store school details.
          School__c testSchool=new School__c(); 
    	 testSchool.Name='Darbhanga Public School';
         testSchool.Number_of_Teacher__c=10;
         testSchool.No_of_Classes__c=6;
         testSchool.Number_of_Students__c=200;
         Test.startTest();
         insert testSchool;
         
         //Create a clas variable where store class details
         Class__c testClass = new Class__c();
         testClass.Name='1ST-BSEB';
         testClass.Class_Teacher_Name__c='Amar Gupta';
         testClass.Number_of_students__c=43;
         testClass.School__c= testSchool.Id;
         insert testClass;  
     
         
		 //Create a class object to fetch DynamicWaysToDealsWithCollections class data.
         DynamicWaysToDealsWithCollections a=new DynamicWaysToDealsWithCollections();

         //Compare the school detail to mapOfSchoolNameWithClassNameAndRelatedStudentsDetails is true or not using Map.
         System.assertEquals(true,a.mapOfSchoolNameWithClassNameAndRelatedStudentsDetails.containsKey('Darbhanga Public School'));
         //Compare the class detail to mapOfClassNameAndRelatedStudentsDetails is true or not using Map.
    	 System.assertEquals(true, a.mapOfClassNameAndRelatedStudentsDetails.containsKey('1ST-BSEB'));
		
     }

}




/*
         //Create a student variable where store student details
         Student__c testStudent = new Student__c();
         testStudent.Name='Abc Kumar';
         testStudent.Father_s_Name__c='Manoj Kumar Sharma';
         testStudent.School__c=testSchool.Id ;
         testStudent.Class__c=testClass.Id;
         testStudent.DOB__c=Date.newInstance(2006, 12, 9);
         Test.stopTest();
         insert testStudent;
*/