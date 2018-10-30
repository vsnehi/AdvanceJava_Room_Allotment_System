<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*" %> 
<%@ page import="javax.servlet.http.HttpSession" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Rooms </title>
    <link href="../DesiningTools/index/rs-plugin/css/settings.css" rel="stylesheet" />
    <link href="../DesiningTools/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="../DesiningTools/index/css/ambixo.css" rel="stylesheet">
 <link href="../DesiningTools/css/w3.css" rel="stylesheet">

   	    <link rel="stylesheet" href="style/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="style/icon.css">
		<link rel="stylesheet" href="style/loader.css">
		<link rel="stylesheet" href="style/idangerous.swiper.css">
		<link rel="stylesheet" href="style/stylesheet.css">
		
   
   
   
    <!-- Script -->
    <script src="../DesiningTools/index/js/jquery.min.js"></script>
    
    <script type="text/javascript" src="../DesiningTools/w3.js"></script>
    
    
    <script	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
   
   
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="script/idangerous.swiper.min.js"></script>
	<script src="script/isotope.pkgd.min.js"></script>
	<script src="script/jquery.viewportchecker.min.js"></script>		
	<script src="script/global.js"></script>	
	
<script src="script/bootstrap.min.js"></script>		
	

 
<link rel="icon" href="upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">
<title>Making Payment</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="../Inc/style.css">

</head>
<body>


<jsp:directive.include file = "../Inc/rheader.jsp" />


<div class="container-fluid" style="margin-top:80px;margin-bottom:300px;">
  
<div class="row">
<div class="col-lg-3">
<p class="w3-center"><img src="upload/<%=session.getAttribute("image")%>" class="w3-card-4 w3-border w3-padding" style="height:206px;width:206px" onclick="document.getElementById('modal01').style.display='block'" class="w3-hover-opacity"></p>
<br><h4 class="w3-center"><%=session.getAttribute("name")%></h4>
<hr>
<table class="w3-table-all">
<tr>
  <td class="w3-light-grey w3-hover-red"><i class="fa fa-user-circle-o" aria-hidden="true"> Users Type:</i></td>
  <td class="w3-light-grey w3-hover-red"><%=session.getAttribute("UserType")%></td>
 </tr> 
<tr >  
  <td class="w3-hover-green"><i class="fa fa-birthday-cake" aria-hidden="true"> Birthday</i></td>
 <td class="w3-hover-green"><%=session.getAttribute("dob")%></td>
 
</tr>
<tr>
  <td class="w3-hover-blue"><i class="fa fa-address-card" aria-hidden="true"> User Address</i></td>
  <td class="w3-hover-blue"><%=session.getAttribute("address")%></td>
</tr>

<tr>
  <td class="w3-hover-blue"><i class="fa fa-male" aria-hidden="true"> Gender</i></td>
  <td class="w3-hover-blue"><%=session.getAttribute("gender")%></td>
</tr>

<tr>
  <td class="w3-hover-blue"><i class="fa fa-bag" aria-hidden="true"> Email</i></td>
  <td class="w3-hover-blue"><%=session.getAttribute("email")%></td>
</tr>

<tr>
  <td class="w3-hover-blue"><i class="fa fa-mobile" aria-hidden="true"> Mobile</i></td>
  <td class="w3-hover-blue"><%=session.getAttribute("mobile")%></td>
</tr>
</table>
</div>

 


<div class="col-lg-1"></div>

<div class="col-lg-8">

      <div class="form-group">
      <label for="usr" class="w3-h1">Booked</label>
      </div>
      
      <div class="form-group w3-h1"><h1><a href="start.jsp">More Deals</a></h1></div>
  

</div>
</div>














</div>


 
 
<jsp:directive.include file = "footer.jsp" />


<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
   


<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	
</body>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js'></script>

    <script  src="../Inc/index.js"></script>

</body>
</html>