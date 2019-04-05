
<%@ include file="header.jsp"%>

<br><br><br><br><br>
            <div id="templatemo_contact" class="row templatemo_contact">

                    <div class="templatemo_contacttitle">Admin Login</div>
                </div>

<b>
<form method="post" action="alogin.jsp">
					<table  cellspacing=><tr><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>


                <div class="templatemo_contactform">

	<table  align="center" cellpadding=><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Username"  size="30"><br>
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="30"><br>


			
			
			<tr><td>		                          
			<input type="submit" value="Login">



</tr>
</table>						
</div>
</form>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>