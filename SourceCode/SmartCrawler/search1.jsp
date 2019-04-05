<%@ include file="aheader.jsp"%>
<%@ page import="org.jsoup.nodes.Element" import="java.sql.*" import="databaseconnection.*"  import="google.*" import="java.io.*" import="java.util.Vector"%>

  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("fail"))
    {
     out.println("<script type=text/javascript>alert('Data already Available '); </script>");
     }
%>


<br><br><br><br><br>
<%
String 	key=request.getParameter("search");
session.setAttribute("key",key);

Vector v=new Vector();
v=googleSearch.main(key);
	
%>
<br>
<h1> <font size="" color="yellow">Feature Space of deep web Sites (FSS)</font></h2>
<font size="" color="#56d830">FSS = {U, A, T }   [U: URL, A: Anchor, T: Text]</font>
<h5><font size="" color="#939ef0">Results From Google, Applying Reverse searching Algorithm(1)</h5></font><br>
<%
	File f=new File("crawlerdata/googleResults.txt");
	FileReader fr=new FileReader(f);
	BufferedReader br=new BufferedReader(fr);
		String s=br.readLine();
		%>
		
		<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td>
		<table cellspacing="10">
<%		while(s !=null)
		{
			%>
			
			<tr><td><font size="+1" color=""><%=s%></font>&nbsp;
<%			s=br.readLine();


		}


%>
</table></table>

