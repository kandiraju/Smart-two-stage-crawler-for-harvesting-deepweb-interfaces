<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>

<br><br><br><br><br>
<h2>Crawled Data sets..</h2>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select distinct(topic) from metadata ");
%>	
<h2>

<table cellpadding=5 >

<tr><td><td><td><h3><font size="" color="#20ae92"><b><b>Sno&nbsp;&nbsp;&nbsp;<td><h3><font size="" color="#a4dff0"><b>Topic
<% int i=0;
while(rs.next())
	{
		%>
		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td><h4><font size="" color="#20ae92"><b><%=++i%>
		<td><h4><font size="" color="#a4dff0"><b><%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;
		<td><h4><b><a href="#" onclick="window.open('ana2.jsp?id=<%=rs.getString(1)%>', 'newwindow', 'width=750, height=400'); return false;" ><font size="" color="#20ae92">Graph</a></font>



<%
	}

												


                                               %>
											 
</table>
<br><br><br><br><br><br><br>
<center>



<%@ include file="footer.jsp"%>