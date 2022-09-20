/*****
Create a Test Class to Verify CountsManager class.
Date :20-09-2022
Code Coverage : 100%
Test Case : All Passed.
*****/
@isTest
public class CountsManagerTest {
 
    @testSetup 
    private static void DetailsOfSchoolClassStudent()
     {
		 //Create a school variable where store school details.
	     School__c testSchool=new School__c(); 
    	 testSchool.Name='Delhi Public School';
         testSchool.Number_of_Teacher__c=10;
         testSchool.No_of_Classes__c=6;
         testSchool.Number_of_Students__c=200;
         Test.startTest();
         insert testSchool;
         
         //Create a Class variable where store Class details.
         Class__c testClass = new Class__c();
         testClass.Name='1ST Class';
         testClass.Class_Teacher_Name__c='Amar Gupta';
         testClass.Number_of_students__c=43;
         testClass.School__c= testSchool.Id;
         insert testClass;
         
         //Create a Student variable where store Student details.
         Student__c testStudent = new Student__c();
         testStudent.Name='Abhi Sharma';
         testStudent.Father_s_Name__c='Manoj Kumar Sharma';
         testStudent.School__c=testSchool.Id ;
         testStudent.Class__c=testClass.Id;
         testStudent.DOB__c=Date.newInstance(2006, 12, 9);
         Test.stopTest();
         insert testStudent;
         
     }
    @isTest 
    private static void TestSchool()
    {
         //Create a integer variable to call updateNoOfStudentDetails.
         Integer countOfStudent = CountsManager.updateNoOfStudentDetails('Delhi Public School');
        //Compare the expected ant actual values equals or not. 
        System.assertEquals(1, countOfStudent);
     } 
    @isTest
    private static void TestClass() 
    {
        //Create  a List where fetch the school Name.
        List<School__c> school=[Select id,Name from School__c where Name='Delhi Public School'];
        //Create a integer variable to call updateNoOfClassesDetails.
        Integer countOfClass=CountsManager.updateNoOfClassesDetails(school[0].Id);
        //Compare the expected ant actual values equals or not.
        System.assertEquals(1,countOfClass);
    }
}