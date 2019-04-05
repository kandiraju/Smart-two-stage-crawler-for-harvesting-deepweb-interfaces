<%@ include file="aheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="google.*"  import="Crawl.*" import="java.io.*" import="java.util.*" import="java.util.Vector"%>


<br><br><br><br><br>

<%
String 	key=(String)session.getAttribute("key");
if(key==null){
response.sendRedirect("index.jsp?id=exp");
}

String link=request.getParameter("link");
	System.out.println(link);




		
		List links = LinkExtractor.extractLinks("http://"+link);


%>
<br>
 <h1>Feature Space of Links (FSL)</h1>
<h3> <font size="" color="orange">Crawling Links from '<u><%=link%></u>' </font></h3>

<br>
<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td><table>
<%
int ii=1;
String line2="";
	for (Object line : links) {

line2=line.toString();
if(line2.contains("http://")||line2.contains("https://"))

		{%>
<tr><td><h4><%=ii%>)  <a href="<%=line%>" target="_blank"><font size="" color="#54b8ed"><%=line%></font></a></h5>
<%
			ii++;}else{%>
<tr><td><h5> <%=line%></h5>


	<%}

   }

%>
</table></table>
                <div class="templatemo_contactform">
<form method="post" action="search4.jsp">
<input type="hidden" name="key" value="<%=key%>">
<input type="hidden" name="link" value="<%=link%>">

	<input type="submit" value="Process">
</form>
</div>
<%@ include file="footer.jsp"%>
