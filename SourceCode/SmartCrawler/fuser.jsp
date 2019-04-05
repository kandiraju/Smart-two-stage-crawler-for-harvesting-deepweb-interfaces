<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String name = request.getParameter("id");
String email= request.getParameter("id2");
String id= request.getParameter("id3");


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

		session.setAttribute("name",name);
		session.setAttribute("user",id);


try{
int i=st1.executeUpdate("insert into  flogin values('"+name+"','"+email+"','"+id+"')");

response.sendRedirect("u_home.jsp?id=succ");

}
catch(Exception ee){

response.sendRedirect("u_home.jsp");
}






}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>