<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*" %> 
<%@ page import="javax.servlet.http.HttpSession" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
 <%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String image = (String) session.getAttribute("image");
				String UserType = (String) session.getAttribute("UserType");
				
%>
<title><% out.print(name); %></title>
	
	
	<%			
				
			
				
			} else {
				
			}
		}
 	
	if(session.getAttribute("UserType")=="Admin"){
		response.sendRedirect("../DashBoard/index.jsp");
	}
	else if(session.getAttribute("UserType")=="LandLord"){
		response.sendRedirect("landlord.jsp");
	}
%>
<link rel="icon" href="upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">

<jsp:directive.include file = "meta.jsp" />
<link href="js/dataTables.bootstrap.css" rel="stylesheet">

</head>
<body data-spy="scroll" data-target=".header">
 
<jsp:directive.include file = "../Inc/rheader.jsp" />

<div id="body" ng-app="">



 
<jsp:directive.include file = "pages.jsp" />
 
 
 
 
 
<button class="w3-button btn btn-success w3-input">More now ++</button>

   
 
<jsp:directive.include file = "footer.jsp" />

</div> 



    
    
    
 <p class="back-to-top"><i class="fa fa-chevron-up"></i></p>
      
    <script src="../DesiningTools/index/js/bootstrap.min.js"></script>
    <script src="../DesiningTools/index/js/services/jquery.easypiechart.min.js"></script>
    <script src="../DesiningTools/index/js/carousel/jquery.bxslider.min.js"></script>
    <script src="../DesiningTools/index/js/portfolio/grid.js"></script>
    <script src="../DesiningTools/index/js/isotope/jquery.isotope.min.js"></script>
    <script src="../DesiningTools/index/js/contact-form.js"></script>
    <script src="../DesiningTools/index/js/parallax/jquery.parallax-1.1.3.js"></script>
    <script src="../DesiningTools/index/js/parallax/jquery.localscroll-1.2.7-min.js"></script>
    <script src="../DesiningTools/index/js/parallax/jquery.scrollTo-min.js"></script>
    <script src="../DesiningTools/index/js/ambixo.js"></script>
  <script src="js/dataTables.bootstrap.js"></script>
   <script src="js/jquery.dataTables.js"></script>
<script src="DesiningTools/angular.min.js"></script>

  
</html>