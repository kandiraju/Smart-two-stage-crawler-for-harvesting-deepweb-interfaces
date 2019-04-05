<%@ include file="header.jsp"%>

<br><br><br><br><br><br>
<font size="" color="#6666ff" align="right"><h1>Login Page for User</h1></font>

<b>

			
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
			





<form method="post" name="f1"  action="ulogin.jsp">

	
                <div class="templatemo_contactform">
			<table align="right">
	<tr><td>


		<input type="text" name="uid" required placeholder="Username"  size="27" >
		<tr><td>

		<input type="password" name="pwd" required placeholder="Password" size="27"><br>

			<tr><td>			          
<input class="submit" type="submit"  value="Login" >
<tr><td>
<h5>Doesn't Have Account</h5>

<tr><td>
<table><tr><td>
<a href="signup.jsp"><img src="images/sign-up-now.png" width="240" height="45" border="0" alt=""></a>
<tr><td align="center">-------or-------
<tr><td><%@ include file="fb.jsp"%>
</table>


</form>

</tr>
</table>						
</div>





<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>