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
	System.out.println(link);

	int i=1;
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(fileid) from metadata");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
try{
	String sql="insert into metadata (topic,url,fileid) values ('"+key+"','"+link+"',"+i+")";
	System.out.println(sql);
	st.executeUpdate(sql);
}
catch(SQLException e){

System.out.println("----------------------1st"+e);
String sql="select *from metadata where topic='"+key+"' && url='"+link+"' ";
//	System.out.println(sql);
ResultSet rs2=st.executeQuery(sql);
if(rs2.next())
{
	i=rs2.getInt(3);
}


//	System.out.println(sql);



}
}
catch(Exception ee){
	System.out.println("-----------------------"+ee);
}


		
		List links = FSL.extractLinks("http://"+link);
		


%>
<br>
<br>

<h2> <font size="" color="#f22687">In-Site Link List  </font></h2>

<br>
<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td><table>
<tr><td>
<%int tot=links.size();%>
<h3>Total Links Found: <%=tot%>
<%
String line2="";
Set s=new HashSet();
	for (Object line : links) {

			line2=line.toString();
			s.add(line2);
	}


%>
<%int dis=s.size();%>
<h3>Distinct  Links Found: <%=dis%>
<h3>Link similarity Found: <%=(tot-dis)%>
</table></table><br>
                <div class="templatemo_contactform">
<form method="post" action="search5.jsp">
<input type="hidden" name="key" value="<%=key%>">
<input type="hidden" name="link" value="<%=link%>">
<input type="hidden" name="id" value="<%=i%>">
<input type="submit" value="Ranking Process">

</form>
</div>

<br><br><br><br><br>
<%@ include file="footer.jsp"%>
