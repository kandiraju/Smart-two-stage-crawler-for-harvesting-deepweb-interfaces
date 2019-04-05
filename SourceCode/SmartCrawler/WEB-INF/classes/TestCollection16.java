import java.util.*;  
class TestCollection16{  
 public static void main(String args[]){  
   
Map<Integer, String> hm = 
      new TreeMap<Integer, String>(Collections.reverseOrder());

  
  hm.put(100,"Amit");  
    hm.put(100,"Amit");  

    hm.put(100,"Ravi22"); 
  hm.put(100,"Vijay");  
hm.put(100,"Rahul");

    hm.put(100,"Rahul");

 Set set = hm.entrySet();
 Iterator i = set.iterator();
    // Display elements

	for(int ii=0;ii<3;ii++){
//	while(i.hasNext()) {
    	i.hasNext();
      Map.Entry me = (Map.Entry)i.next();
      System.out.print(me.getKey() + ": ");
      System.out.println(me.getValue());
    }
 
 }  
}  