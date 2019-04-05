<%@ page  import="java.sql.*" import="databaseconnection.*" %>

					  
					  <%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
														   out.println("<script>alert('Welcome, Your account successfully registerd.')</script>");
                                                       }
			    %>




<%

%>
<%@ include file="uheader.jsp"%>
<br><br><br><br><br><br>
<h1>Welcome <%=session.getAttribute("name")%></h1>

<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>