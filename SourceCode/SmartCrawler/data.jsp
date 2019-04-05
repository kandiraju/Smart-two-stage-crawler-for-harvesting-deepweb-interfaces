<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>

<br><br><br><br><br>
<h2>Crawled Data..</h2>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from metadata order by fileid ");
%>	
<h2>

<table cellspacing=5 >

<tr><td><td><h3><font size="" color="#d7d7d7"><b><b>Sno&nbsp;&nbsp;&nbsp;<td><h3><font size="" color="#a0a0a0"><b>Topic<td><h3><font size="" color="#d7d7d7"><b>URL<td><h3><font size="" color="#a0a0a0"><b>Crawl Data
<% int i=0;
while(rs.next())
	{
		%>
		<tr><td><td><h4><font size="" color="#d7d7d7"><b><%=++i%>
		<td><h4><font size="" color="#a0a0a0"><b><%=rs.getString(1)%>
		<td><h4><font size="" color="#d7d7d7"><b><%=rs.getString(2)%>
		<td><h4><b><a href="#" onclick="window.open('data2.jsp?id=<%=rs.getString(3)%>.txt', 'newwindow', 'width=650, height=550'); return false;" ><font size="" color="#a0a0a0"><%=rs.getString(3)%>.txt</a></font>



<%
	}

												


                                               %>
											 
</table>
<br><br><br><br><br><br><br>
<center>



<%@ include file="footer.jsp"%>