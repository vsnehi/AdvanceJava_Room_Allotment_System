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
      <img src="upload/<%=rs.getString(2)%>" style="height:300px;width:100%;" disabled="">
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



</div>

</div>
</div>








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
<!-- Payment Option -->
<form action="../CheckOut" method="POST">
<input type="text" name="pemail" value="<%=session.getAttribute("email")%>" class="w3-hide">
<input type="text" name="uid" value="" class="w3-hide">
<input type="text" name="roomid" value="<%out.println(oid);%>" class="w3-hide">
<input type="text" name="cardnumber" value="****" class="w3-hide">
<input type="text" name="expirationdate" value="****" class="w3-hide">
<input type="text" name="cvcode" value="*****" class="w3-hide">
<input type="text" name="coupon" value="****" class="w3-hide">
<input type="text" name="mobile" value="<%=session.getAttribute("mobile")%>" class="w3-hide">
<input type="text" name="money" value="<%=rs.getString(6)%>" class="w3-hide">
<input type="text" name="name" value="<%=rs.getString(3)%>" class="w3-hide">

 
<script
  src="https://checkout.stripe.com/checkout.js" class="stripe-button"
  data-key="pk_test_fC5d1njpz0pyDTGFPk4tkLeg"
  data-amount="<%=rs.getInt(6)*100%>"
  data-name="Rent Is Easy"
  data-description="Home Rent System"
  data-image="../images/h2.jpg"
  data-locale="auto">
</script>
</form>
<br>
<hr>

 
<div class="w3-white w3-input " style="float:right;"><a href="https://www.paypal.me/IndoTufan"><img src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_donate_cc_147x47.png" alt="Pay Now"></a>
</div>

 

</div>


<div class="w3-white w3-input " style="float:right;">



</div>

</div> 

</div>
</div>














</div>


<%   }   
   
    // close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

         out.println("Unable to connect to database.");
       }
    %>


<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
   


<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
	
</body>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js'></script>

    <script  src="../Inc/index.js"></script>

</body>
</html>
