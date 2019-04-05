<%@ page import="databaseconnection.*" %>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
int c1=0, c2=0, c3=0;
try
{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
st.executeUpdate("delete from  graph");
ResultSet rs=st.executeQuery("select * from counttab");
while(rs.next())
	{
	c1=rs.getInt(1);
		c2=rs.getInt(2);
			c3=rs.getInt(3);
}
st.executeUpdate("insert into graph value('0','"+c1+"','"+c2+"','"+c3+"')");




String query="SELECT * from graph";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/entitylinking","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("EVALUATION GRAPH", "", "",dataset, PlotOrientation.VERTICAL, true, true, true);
                
ChartUtilities.saveChartAsJPEG(new File("D:/Apache Tomcat/webapps/EntityLinking/images/logotype.jpg"), chart, 700, 300);
response.sendRedirect("graph2.jsp");
}
catch (Exception e)
{
System.out.println("Problem in creating chart."+e);
}
%>