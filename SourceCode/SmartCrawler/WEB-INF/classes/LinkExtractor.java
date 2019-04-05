package Crawl;
import java.util.List;
import java.util.ArrayList;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class LinkExtractor
{

 public static List extractLinks(String url) throws Exception {
   final ArrayList result = new ArrayList();

   Document doc = Jsoup.connect(url).get();

   Elements links = doc.select("a[href]");

   for (Element link : links) {
	
	   //1
	   result.add(link.attr("abs:href"));

					


            String body = link.text();
		//2
		result.add(body);
		//3
		result.add(" ");


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

