package Crawl;
import org.apache.commons.lang.StringUtils;
public class  CountWords
{
	public static int main(String input, String compare) 
	{


		input=input.toLowerCase();
	   compare=compare.toLowerCase();
       int number = StringUtils.countMatches(input, compare);
		return number;
	}
}
