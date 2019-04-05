<%
session.invalidate();%>

  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>











<!DOCTYPE html>
<head>
	<!--
    	Robotic Template
    	http://www.templatemo.com/preview/templatemo_430_robotic
    -->
    <title>Smart Crawler</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo_misc.css">
    <link rel="stylesheet" href="css/templatemo_style.css">
    <!-- JavaScripts -->   
    <script src="js/jquery-1.11.1.min.js"></script> <!-- lightbox -->
    <script src="js/templatemo_custom.js"></script> <!-- lightbox -->
    <script src="js/jquery.lightbox.js"></script>
    <script src="js/bootstrap-collapse.js"></script> 
    <!-- JavaScripts -->  
</head>
<body>
    <div id="templatemo_home" class="templatemo_headerimg"><img src="images/templatemo_header.jpg" alt="templatemo header"></div>
    <div class="templatemo_headerimg_cover"><img src="images/templatemo_header.png" alt="templatemo header"></div>
    <div class="templatemo_headerwrapper">
        <div class="templatemo_menu">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->

					<%@ include file="mainmenu.jsp"%>
					
					<!-- /.navbar-collapse --> 
                </div>
                <!-- /.container-fluid --> 
            </nav>
            <div class="templatemo_socialmedia">
                <div class="templatemo_social"><a href="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fcloudtechnologiespro&width=1400&height=590&colorscheme=light&show_faces=true&header=true&stream=true&show_border=true" target="_blank"><img src="images/facebook.png" alt="templatemo facebook"></a></div>
                <div class="templatemo_social"><a href="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fcloudtechnologiespro&width&height=590&colorscheme=light&show_faces=true&header=true&stream=true&show_border=true"  target="_blank"><img src="images/twitter.png" alt="templatemo twitter"></a></div>
                <div class="templatemo_social"><a href="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fcloudtechnologiespro&width&height=590&colorscheme=light&show_faces=true&header=true&stream=true&show_border=true"  target="_blank"><img src="images/googleplus.png" alt="templatemo googleplus"></a></div>
            </div>
        </div>



<br><br><br><br><br><br><br><br><br><b><u>
                    <div class="templatemmo_subheader"><font size="+2" color="orange">Cloud Technologies,</font>&nbsp;&nbsp;&nbsp;<br><br>
																						#304, Siri Towers, Mytrivanm, Ameerpet, Hyd&nbsp;&nbsp;&nbsp;<br><br>
																						+91 8121953811, 040-65511811&nbsp;&nbsp;&nbsp;<br><br>
																						cloudtechnologiesprojects@gmail.com&nbsp;&nbsp;&nbsp;<br><br>
																						</div>


<br><br><br><br><br><br><br><br><br>
                    <div class="templatemo_separater">
                        <span class="page"></span>
                    </div>
<br><br>

        <div class="templatemo_footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    	Copyright &copy; 2015-2016 &nbsp;&nbsp;<a href="http://www.cloudstechnologies.in">Cloud Technologies</a>



                    </div>
                </div>
            </div>
        </div>
    </div>
