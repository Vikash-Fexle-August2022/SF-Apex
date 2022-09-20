/*****
Create a Test Class to verify StaticWaysToDealsWithCollections class.
Date : 20-09-2022
Code Coverage : 100%
Test Case : All Passed.
*****/
@isTest
private class TestStaticWaysToDealsWithCollections {
   @isTest private static void Test(){
      		//Create a class object to fetch staticWaysToDealsWithCollections class data.
      		staticWaysToDealsWithCollections a=new staticWaysToDealsWithCollections();
      
      		//Compare the school detail to mapOfSchoolNameWithClassNameAndRelatedStudentsDetails is true or not using Map.
  	  		System.assertEquals(
           						true,a.MapOfCountryWithCityAndStates.containsKey('Bharat'));
      		//Compare the school detail to mapOfSchoolNameWithClassNameAndRelatedStudentsDetails is true or not using Map.
      		System.assertEquals(
           						true,a.MapOfCountryWithCityAndStates.containsKey('India'));
      		//Compare the school detail to mapOfSchoolNameWithClassNameAndRelatedStudentsDetails is true or not using Map.
      		System.assertEquals(
           						true,a.MapOfCountryWithCityAndStates.containsKey('US'));
    
    }
}
   /*   Map<String,Map<String,List<String>>> TestOfCountryWithCityAndStates = new Map<String,Map<String,List<String>>>();
        List<String>TestListOfCity=new 	List<String>();
        Map<String,List<String>>  TestMapOfState=new  Map<String,List<String>>(); 
          TestListOfCity.add('Patna');
          TestListOfCity.add('Darbhanga'); 
          TestMapOfState.put('Bihar',TestListOfCity);
          TestOfCountryWithCityAndStates.put('India',TestMapOfState);
         Map<String,Map<String,List<String>>> TestOfCountryWithCityAndStates1 = new Map<String,Map<String,List<String>>>();
         List<String>TestListOfCity1=new 	List<String>();
         Map<String,List<String>>  TestMapOfState1=new  Map<String,List<String>>(); 
          TestListOfCity1.add('Jaipur');
          TestListOfCity1.add('Ajmer');
          TestMapOfState1.put('Rajasthan',TestListOfCity1);
          TestOfCountryWithCityAndStates1.put('Bharat',TestMapOfState1);
       
        /* Map<String,Map<String,List<String>>> TestOfCountryWithCityAndStates2 = new Map<String,Map<String,List<String>>>();
         List<String>TestListOfCity2=new 	List<String>();
         Map<String,List<String>>  TestMapOfState2=new  Map<String,List<String>>(); 
          TestListOfCity2.add('Texas');
          TestListOfCity2.add('California');
          TestMapOfState2.put('California',TestListOfCity2);
        		TestOfCountryWithCityAndStates2.put('US',TestMapOfState2);*/
              //staticWaysToDealsWithCollections a=new staticWaysToDealsWithCollections();

    /*   staticWaysToDealsWithCollections a=new staticWaysToDealsWithCollections();
    	//System.debug('$$$$$$$$$$'+ a.MapOfCountryWithCityAndStates);
     System.assertEquals(
           TestOfCountryWithCityAndStates1,a.MapOfCountryWithCityAndStates);
       	System.assertEquals(
           TestOfCountryWithCityAndStates,a.MapOfCountryWithCityAndStates);
       /*	System.assertEquals(
            TestOfCountryWithCityAndStates2,a.MapOfCountryWithCityAndStates);
       */