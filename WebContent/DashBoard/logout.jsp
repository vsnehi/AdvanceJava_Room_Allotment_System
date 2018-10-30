<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogOut Session </title>


    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/colors/default.css" id="theme" rel="stylesheet">
 
</head>
<body>

<%


 
if (session != null) {
	if (session.getAttribute("name") != null) {
		  session.invalidate(); 
		  response.sendRedirect("../access.jsp"); 
		%>
		

<%			
		
		
		
	} else {
		String login = "../access.jsp";
	    response.sendRedirect(login);		
	}
}
%>









 








<!-- 
 <section id="wrapper" class="error-page">
        <div class="error-box">
            <div class="error-body text-center">
                <h1 class="text-danger">OffLine</h1>
                <h3 class="text-uppercase">Thanks for Visiting  !</h3>
                <p class="text-muted m-t-30 m-b-30">YOU SEEM TO BE TRYING TO FIND HIS WAY Login Page</p>
                <a href="../access.jsp" class="btn btn-danger btn-rounded waves-effect waves-light m-b-40">Back to home</a> </div>
               </div>
    </section>
       
    
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bootstrap/dist/js/bootstrap.min.js"></script>

 -->





</body>
</html>