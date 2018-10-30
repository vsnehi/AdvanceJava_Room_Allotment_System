

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  

 
 <%
		if (session != null) {
			if (session.getAttribute("name") != null) {
		 
				   response.sendRedirect("Account/start.jsp");	
		 %>
				
	
	<%			
				
				
				
			}  
		}
	%>
 
  
<div class="w3-hide">  
 
<%

out.println("{{email}}");
 

String em="{{email}}";

out.println(em);
String xx="993@gmail.com";

try {
	String ev="{{email}}";

	out.println(ev);
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
         String QueryString = "select * from user WHERE UserEmail='"+em+"'";
         rs = statement.executeQuery(QueryString);
    
    while (rs.next()) {
    
    %>
    <script>
     
    	document.getElementById('repeatemail').innerHTML = 'Email is Repeted';
   
    </script>
    <%=rs.getString(3)%>"
 
			
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
  
<style>
*{
font-family:cursive;
}

</style>  
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Application</title>
<link rel="icon" href="DesiningTools/images/tsignup.png" type="image/gif" sizes="16x16">
 
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>


<link rel="stylesheet" href="DesiningTools/css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="DesiningTools/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="DesiningTools/w3.css" type="text/css" media="all" /> <!-- Style-CSS --> 


</head>
<body ng-app="" class="w3-container">
 


		<!--login-->
		<div class="main-content-agile" style="margin-top:60px;" id="log">
			<div class="sub-main-w3">	
				<h2>Sign In</h2>
				<form action="LoginServlet" method="post">
					<h6>Room Rent Management System</h6>
					
					<!-- <div class="navbar-right social-icons"> 
						<a href="#" class="one-w3ls" ><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a>
						<a href="#" class="two-w3ls" ><i class="fa fa-google-plus" aria-hidden="true"></i>Google+</a><br>
					
					 <div class="clear"></div>
					</div> -->
				    <p style="color:white;weight:bold;">{{email}}</p>
					<div class="icon1">
						<input placeholder="Email" name="email" type="email" required="" ng-model="email">
					</div>
					
					<div class="icon2">
						<input  placeholder="Password" name="password" type="password" required="">
					</div>
					<label class="anim">
					<input type="checkbox" class="checkbox">
						<span>Remember Me</span> 
				 </label> 
						<div class="clear"></div>
					<input type="submit" value="Sign in" name="submit">
					
			</form>
			<br><br>
				<a href="#" onclick="Reg()"><font style="color:red;float:right;font-fimily:cursive;">New Users ?</font></a>
			</div>
		</div>
		<!--//login-->
		
		
		
		
		
		
		
		
		
		<!-- Register -->
		
		
		
		
		
		
		
		
		 
		<div id="Reg" class="main-content-agile" style="margin-top:60px;" id="log" >
			<div class="sub-main-w3">	
				<h2>Registration process</h2>
				
				
		 <form class="w3-container" action="register" method="POST">
        <div class="w3-section">
         
         <div class="icon1">
          <select class="w3-input w3-border w3-margin-bottom" style="font-family:cursive;"  name="UserType">
          <option value="LandLoard" class="main-content-agile w3-padding active">LandLoard</option>
          <option value="RoomRenter" class="main-content-agile w3-padding">Room Renter</option>
          <option value="Admin" class="main-content-agile w3-padding">Admin</option>
          </select>
        </div>
                
         
         <div id="repeatemail" style="color:white;weight:bold;">{{email}}</div>
          <div class="icon1">
          <input class="w3-input w3-border w3-margin-bottom" type="email" id="email" placeholder="Email" name="email" required="" style=" font-family:cursive;" ng-model="email">
          </div>

          
          <div class="icon1">
           <input class="w3-input w3-border" type="password" placeholder="Password" name="password" style="font-family:cursive;" required>
          </div>

         
         <div class="icon1">
           <input class="w3-input w3-border" type="text" placeholder="Full Name" name="name" style="font-family:cursive;" required>
         </div>
         <div class="icon1">
           <input class="w3-input w3-border" type="date" placeholder="Date Of Birth" name="dob" style="font-family:cursive;" required>
          </div>
          
          <div class="icon1">
           <input class="w3-input w3-border" type="number" id="number" placeholder="Mobile Number" name="mobile" max="9999999999" min="7500000000" style="font-family:cursive;" required>
          </div>
          
          <div class="icon1">
           <input class="w3-input w3-border" type="text" placeholder="Home Address" name="address" style="font-family:cursive;" required>
          </div>
       
         
      
         
        <div class="icon1">
        <select required="" name="gender" placeholder="Choose Gender">
        <option value="male" id="male" value="male" style="color:red;font-family:cursive;" required="">Male</option>
        <option value="female" id="female" value="female" style="color:red;font-family:cursive;" required="">Female</option>
        </select>
        
         </div>
       
         
         <div class="">
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> <font style="color:green;">Remember me</font>
          </div>
      
       
         <input type="submit" name="submit" value="Register now"  onkeyup="myFunction()" class="w3-button w3-block w3-green w3-section w3-padding" >
          
</div>
      </form>
      	
      	<a href="#" onclick="Log()"><font style="color:red;float:right;font-fimily:cursive;">Login now ?</font></a>
			
      </div>
		</div>
		
		
		
		







       <!-- End Register -->





<script>

document.getElementById('Reg').style.display = "none";
function Reg(){
	document.getElementById('log').style.display = "none";
	document.getElementById('Reg').style.display= "block";
}
function Log(){
	document.getElementById('log').style.display = "block";
	document.getElementById('Reg').style.display= "none";
}











</script>



<script>
function myFunction() {
    var txt = "";
    if (document.getElementById("email").validity.rangeUnderflow) {
        txt = "Value too small";
    } else {
        txt = "Input OK";
    } 
    document.getElementById("repeatemail").innerHTML = txt;
}
</script>





 
<!-- <footer class="footer">Design and developed by Vikram Snehi</footer>
 -->
<script src="DesiningTools/angular.min.js"></script>
 </body>
</html>