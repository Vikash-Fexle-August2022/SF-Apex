public class staticWaysToDealsWithCollections {
   public staticWaysToDealsWithCollections(){
         Map<String,Map<String,List<String>>> MapOfCountryWithCityAndStates = new Map<String,Map<String,List<String>>>();
        List<String>ListOfCity=new 	List<String>();
           Map<String,List<String>>  MapOfState=new  Map<String,List<String>>();
			 ListOfCity.add('Patna');
        ListOfCity.add('Darbhanga');
        	MapOfState.put('Bihar',ListOfCity);
        		MapOfCountryWithCityAndStates.put('India',MapOfState);
       				
        List<String>ListOfCity1=new 	List<String>();
           Map<String,List<String>> MapOfState1=new  Map<String,List<String>>();
			 ListOfCity1.add('Jaipur');
        ListOfCity1.add('Ajmer');
        	MapOfState1.put('Rajasthan',ListOfCity1);
        		MapOfCountryWithCityAndStates.put('Bharat',MapOfState1);
        
        List<String>ListOfCity2=new 	List<String>();
           Map<String,List<String>> MapOfState2=new  Map<String,List<String>>();
			 ListOfCity2.add('Texas');
        ListOfCity2.add('California');
        	MapOfState2.put('California',ListOfCity2);
        		MapOfCountryWithCityAndStates.put('US',MapOfState2);
        
       
        System.debug(MapOfCountryWithCityAndStates);
        
    }
    
}