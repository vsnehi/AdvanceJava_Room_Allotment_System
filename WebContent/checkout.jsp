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
    <link href="DesiningTools/index/rs-plugin/css/settings.css" rel="stylesheet" />
    <link href="DesiningTools/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="DesiningTools/index/css/ambixo.css" rel="stylesheet">
 <link href="DesiningTools/css/w3.css" rel="stylesheet">

   	    <link rel="stylesheet" href="Account/style/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="Account/style/icon.css">
		<link rel="stylesheet" href="Account/style/loader.css">
		<link rel="stylesheet" href="Account/style/idangerous.swiper.css">
		<link rel="stylesheet" href="Account/style/stylesheet.css">
		
   
   
   
    <!-- Script -->
    <script src="DesiningTools/index/js/jquery.min.js"></script>
    
    <script type="text/javascript" src="DesiningTools/w3.js"></script>
    
    
    <script	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
   
   
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="Account/script/idangerous.swiper.min.js"></script>
	<script src="Account/script/isotope.pkgd.min.js"></script>
	<script src="Account/script/jquery.viewportchecker.min.js"></script>		
	<script src="Account/script/global.js"></script>	
	
<script src="Account/script/bootstrap.min.js"></script>		
	

 
<link rel="icon" href="Account/upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">
<title>Making Payment</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="Inc/style.css">

</head>

<body>

<jsp:directive.include file = "Inc/rheader.jsp" />


<div class="container-fluid" style="margin-top:80px;margin-bottom:300px;">


<div class="row">
<div class="col-md-12">
<div class="panel panel-default credit-card-box">
  

<%

      
try {
         String oid=request.getParameter("id");
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
         String QueryString = "select * from room_list WHERE Roomid='"+oid+"'";
         rs = statement.executeQuery(QueryString);
 
    while (rs.next()) {
    %>
 
  <form>
      <div class="form-group">
      <label for="pwd">Room Image:</label>
      <img src="Account/upload/<%=rs.getString(2)%>" style="height:300px;width:100%;" disabled="">
      </div>
     <div class="form-group">
      <label for="usr">User Name</label>
      <input type="text" class="form-control" name="" value="<%=rs.getString(8)%>" disabled="">
     </div>
     <div class="form-group">
      <label for="pwd">Room Name:</label>
      <input type="text" class="form-control" name="" value="<%=rs.getString(3)%>" disabled="">
     </div>
     <div class="form-group">
      <label for="pwd">Room Address:</label>
      <textarea type="text" class="form-control" name="" disabled="">
      <%=rs.getString(4)%>
      </textarea>
     </div>
     <div class="form-group">
      <label for="pwd">Room Type:</label>
      <input type="text" class="form-control" name="" value="<%=rs.getString(5)%>" disabled="">
     </div>
     <div class="form-group">
      <label for="pwd">AC/Non AC:</label>
      <input type="text" class="form-control" name="" value="<%=rs.getString(9)%>" disabled="">
     </div>
     <div class="form-group">
      <label for="pwd">Room Price:</label>
      <input type="text" class="form-control" name="" value="<%=rs.getString(6)%>" disabled="">
      </div>
    

  </form>

<%   }   
   
    // close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

         out.println("Unable to connect to database.");
       }
    %>


</div>

</div>
</div>








<div class="row">
<div class="col-lg-2">
 <p class="w3-center"><img src="Account/upload/<%=session.getAttribute("image")%>" class="w3-card-4 w3-border w3-padding" style="height:206px;width:206px" onclick="document.getElementById('modal01').style.display='block'" class="w3-hover-opacity"></p>
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

</table>











</div>
<div class="col-lg-2"></div>
<div class="col-lg-8">
 





<div class="panel panel-default credit-card-box">
<div class="panel-heading display-table" >
<div class="row display-tr" >
<h3 class="panel-title display-td" >Payment Details</h3>
<div class="display-td" >                            
<img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
</div>
</div>                    
</div>
<div class="panel-body">

<form role="form" id="payment-form" action="CheckOut">
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="cardNumber">CARD NUMBER</label>
<div class="input-group">
<input 
type="tel"
class="form-control"
name="cardNumber"
placeholder="Valid Card Number"
autocomplete="cc-number"
required autofocus 
/>
<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
</div>
</div>                            
</div>
</div>
<div class="row">
<div class="col-xs-7 col-md-7">
<div class="form-group">
<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
<input 
type="tel" 
class="form-control" 
name="cardExpiry"
placeholder="MM / YY"
autocomplete="cc-exp"
required 
/>
</div>
</div>
<div class="col-xs-5 col-md-5 pull-right">
<div class="form-group">
<label for="cardCVC">CV CODE</label>
<input 
type="tel" 
class="form-control"
name="cardCVC"
placeholder="CVC"
autocomplete="cc-csc"
required
/>
</div>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<div class="form-group">
<label for="couponCode">COUPON CODE</label>
<input type="text" class="form-control" name="couponCode" />
</div>
</div>                        
</div>
<div class="row">
<div class="col-xs-12">
<input class="btn btn-success" type="submit" value="Checkout now">
</div>
</div>
<div class="row" style="display:none;">
<div class="col-xs-12">
<p class="payment-errors"></p>
</div>
</div>
</form>


</div>
<div class="w3-white w3-input " style="float:right;"><a href="https://www.paypal.me/IndoTufan"><img src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_donate_cc_147x47.png" alt="Pay Now"></a>
</div>

</div> 

</div>
</div>














</div>



<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
   


<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	
</body>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js'></script>

    <script  src="Inc/index.js"></script>

</body>
</html>
