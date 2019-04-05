package Crawl;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class  CrawlText
{
	public static String main(String urlString) throws Exception
	{
	Document doc;
	
	//urlString = "http://db.apache.org/derby/releases/release-10.11.1.1.cgi";
	doc = Jsoup.connect(urlString).get();
	String text = doc.body().text();

	return text;


	}

	public static void main(String[] args)  throws Exception
	{
		CrawlText.main("http://db.apache.org/derby/releases/release-10.11.1.1.cgi");
	}

}
