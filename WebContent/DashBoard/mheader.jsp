<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  
<%@ page import="javax.servlet.http.HttpSession" %>   
 <%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String password = (String) session.getAttribute("password");
				
 %>
				
	
	<%			
				
				
				
			} else {
				String login = "../access.jsp";
			    response.sendRedirect(login);		
			}
		}
	%>
  
  				

<header class="w3-card-4 w3-white">
		<div class="container-fluid custom-container ">
			<div class="row no_row row-header">
				
				
				
				
				<div class="brand-be author-post">
					<a href="index.jsp"><img src="../Account/upload/<%=session.getAttribute("image")%>" >
					</a>
				</div>
				
				
			<!-- Here is Searchbox -->	
				
				
 		
				
				
				
				
				
				
				
				
				<div class="login-header-block">
 
				
				 
<!-- Here is Account details -->				 
				 
				 
				 				
				
				
<div class="header-menu-block">
					<button class="cmn-toggle-switch cmn-toggle-switch__htx" style="float:right;"><span></span></button>
					<ul class="header-menu" style="color:red;height:50px;margin-top:0px;margin-right:110px;">
						
							
<li>
<a style="color:black;font-weight:bold;">

 <%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String password = (String) session.getAttribute("password");
				
 	
		
 
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
  
 
         Connection co = null;
         Statement ss = null;
         ResultSet rr = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         co = DriverManager.getConnection(connectionURL, "root", "");
         ss = co.createStatement();
         String im = "select * from user where UserEmail='"+email+"' and UserPass='"+password+"'";
         rr = ss.executeQuery(im);
%>


   <%
    while (rr.next()) {
    %>
 
       
	<img class="login-user img-circle" src="../Account/upload/<%=rr.getString(9)%>" alt=""  style="height:35px;width:36px;margin-top:0px;">
	
 
 <%   }    %>
     
    <%
    // close all the connections.
    rr.close();
    ss.close();
    co.close();
} catch (Exception ex) {
 
	
         out.println("Unable to connect to database.");
       }
               
    
    
    	} else {
				String login = "../access.jsp";
			    response.sendRedirect(login);		
			}
		}
  %>



<%=session.getAttribute("name")%> 
</a>
                             <i class="fa fa-angle-down"></i>
							<ul style="color:black;font-weight:bold;">
								<li>
								<li><a><img src="../Account/upload/<%=session.getAttribute("image")%>" style="height:50px;width:50px;"></a></li> 
								<form method="post" action="../adminprofile" encType="multipart/form-data">
								<a><label for="file" class="w3-input"> Upload Image </label></a>
								<a><input type="file" name="file" id="file" class="w3-hide"></a>
								<a><input type="submit"  name="submit" class="w3-input"></a>
								</form>
								
								</li>
							 <li class="w3-red"><a href="logout.jsp"> Logout now</a></li>
							</ul>
						</li>
				</ul>
				</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
 		
				
				
								
			</div>
		</div>
	</header>
	
	
	
<script type="text/javascript">

  function mySearchFunction() {
    var input, filter, ul, li, i,j,ul2,li2;
   
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("tr");
 
    
for (i = 0; i < li.length; i++) {
if (li[i].innerHTML.toUpperCase().indexOf(filter) > -1 ) {
            li[i].style.display = "";
           
        } else {
            li[i].style.display = "none";
          
        }
    }

   

}

 
</script>