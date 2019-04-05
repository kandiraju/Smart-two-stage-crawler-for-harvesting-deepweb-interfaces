package Crawl;
import java.util.List;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class FSL
{

 public static List extractLinks(String url) throws Exception {
   final ArrayList result = new ArrayList();

   Document doc = Jsoup.connect(url).get();

   Elements links = doc.select("a[href]");

   for (Element link : links) {
	
	   //1
	   
	   if(link.attr("abs:href")==""){}
	   else{
	   result.add(link.attr("abs:href"));}


   }

   return result;
 }


 public final static void main(String[] args) throws Exception{

         String site = "javabeginnerstutorial.com/core-java/";
        List links = LinkExtractor.extractLinks(site);
   for (Object link : links) {
       System.out.println(link);
   }
 }
}

