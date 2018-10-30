


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String image = (String) session.getAttribute("image");
				String UserType = (String) session.getAttribute("UserType");
				String address = (String) session.getAttribute("address");
				String dob = (String) session.getAttribute("dob");	
				%>
<title><% out.print(name); %></title>
	<%			
				
				
				
			} else {
				
			}
		}
	%>
 
<html>
<link rel="icon" href="upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<jsp:directive.include file = "meta.jsp" />
<body class="w3-theme-l5" data-spy="scroll" data-target=".header">
<jsp:directive.include file = "../Inc/mheader.jsp" />

<!-- Page Container -->
<div class="w3-container-fluid w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
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

</table>
<br></div>
</div>
<br>

  
<div class="w3-card-4 w3-round w3-white w3-hide-small">
<div class="w3-container">
<div class="w3-label w3-input w3-center" style="color:red;font-weight:bold;">Add Room Category</div> 
<table class="w3-table">
<form action="../Category" method="POST">
          <input type="text" class="w3-input" name="mname" placeholder="Room Type"><br>
          <input type="text" class="w3-input" name="minfo" placeholder="Room Info"><br>
          <input type="text" class="w3-input" name="mprice" placeholder="Room Price"><br>
          <input type="email" class="w3-input w3-rate w3-hide" name="memail" value="<%=session.getAttribute("email")%>" placeholder="email"><br>
          <input type="rate" class="w3-input w3-rate" name="mrate" placeholder="Room Type ex:AC/Non AC"><br>
          <input type="submit" class="w3-red w3-input" value="Add Room Type" name="submit"><br>
          
</form>
</table>
</div>
</div>
<br>



<!-- End Left Column -->
</div>
    
    
    
 





<!-- Middle Column -->
<div class="w3-col m7">
<jsp:directive.include file = "homepost.jsp" />
 













</div>

  <!--  <!-- Right Column -->
    <div class="w3-col m2">
<%
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
  
 
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         String QueryString = "select * from morecat ORDER BY mid DESC";
         rs = statement.executeQuery(QueryString);
%>
<div class="w3-card-4 w3-round w3-white w3-padding-16 w3-center w3-container">
<table class="w3-table w3-striped w3-border" id="myUL">
<tr>
      <th>Room Type</th>
      <th>Room Info</th>
      <th>Room Price</th>
      <th>AC/Non AC</th>
</tr>
<%
    while (rs.next()) {
%>
<tr>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
</tr>
<%   }    %>
</table>
</div>					
<%
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
      out.println("Unable to connect to database.");
}
%>                                      
            						


<!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>


<br>
<hr>
 
<button type="button" class="w3-input w3-success" >Checkout These Home</button>
 
<jsp:directive.include file = "footer.jsp" />

<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>















<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57f73a27f35b8928"></script> 



Start of Tawk.to Script
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5898ca1c22a7eb0a6722b9ff/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
End of Tawk.to Script
</body>
</html> 
