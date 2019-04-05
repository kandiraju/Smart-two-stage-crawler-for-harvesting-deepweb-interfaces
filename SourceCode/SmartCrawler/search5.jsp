<%@ include file="aheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="google.*"  import="Crawl.*" import="java.io.*" import="java.util.*" import="java.util.Vector"%>


<br><br><br><br><br>


<%
String 	key=(String)session.getAttribute("key");
if(key==null){
response.sendRedirect("index.jsp?id=exp");
}
String link=request.getParameter("link");
String id=request.getParameter("id");

		Random r=new Random();	
		int ran=0;
	//---------------------------------------------------------
	//System.out.println(link);
		List links = FSL.extractLinks("http://"+link);
		int sno=0;
%>



<br>
<br>
<h2> <font size="" color="#f22687">Link Ranking  </font></h2>
<font size="" color="#ff3300">Getting top k (ex:10) results from total links <%int tot=links.size();%><%=tot%></font>

<br>
<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td><table>
<tr><td><h3>Sno&nbsp;&nbsp;&nbsp;<td><h3>Sim Score&nbsp;&nbsp;&nbsp;<td><h3> Link
<%
String line2="";String sss="";
Set s=new HashSet();
	for (Object line : links) {

			line2=line.toString();
			s.add(line2);
	}
//out.println(s.size());
Map<Integer, String> hm = 
      new TreeMap<Integer, String>(Collections.reverseOrder());


String file="";
String words[]=key.split("\\s+");
int count=0;

for (Object ss : s) {

	count=0;
	sss=ss.toString();
	//System.out.println(sss);

	try{
	
	file = CrawlText.main(sss);
	
	}
	catch(Exception er){}
	if(words.length>1)
	{
		for(String ex:words)
		{
			count=count+CountWords.main(file,ex);
		}
	}
	else
	{
			count=count+CountWords.main(file,key);
	}
//	System.out.println(count);
	ran = r.nextInt(10);
	count=count+ran;	
	hm.put(count,sss);
	
	System.out.println(count+"  "+sss);

	}

 File f=new File("crawlerdata/"+id+".txt");
 f.createNewFile();
 PrintWriter pw=new PrintWriter(f);

	 Set set = hm.entrySet();
	Iterator i = set.iterator();
    // Display elements

	for(int ii=0;ii<10;ii++){
//	while(i.hasNext()) {
	i.hasNext();
    Map.Entry me = (Map.Entry)i.next();
//pw.println(me.getKey() + ": "+me.getValue());
    pw.println(me.getValue());
       %>
<tr><td ><h5><%=++sno%><td align="center"><h5>

<%
	   out.println(me.getKey()); %><td><h5> <a href="<%=me.getValue()%>" target="_blank"><%=me.getValue()%></a>
    
<%	}

pw.flush();
pw.close();
%>

</table></table></h4><br><br>
<font size="+1" color="#ffff00">Data is stored in <%=id%>.txt file;</font>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
st.executeUpdate("update  metadata set tot='"+tot+"', dis='"+s.size()+"' where fileid="+id+" ");
%>	

<br><br><br><br><br>
<%@ include file="footer.jsp"%>