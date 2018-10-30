<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  
<%@ page import="javax.servlet.http.HttpSession" %>   
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <header>
 
        
 <nav id="main-nav" >
          <div class="navbar w3-white" role="navigation">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" style="color:white;" data-toggle="collapse" data-target=".navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
              </div>
              <div class="collapse navbar-collapse w3-white">
            <ul style="float:right;" class="nav navbar-nav">
    <div class="header-menu-block">
	<button class="cmn-toggle-switch cmn-toggle-switch__htx" style="float:right;"><span></span></button>
	<ul class="header-menu" style="color:red;height:50px;margin-top:0px;margin-right:100px;">
						
							
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

 
	<img class="login-user img-circle w3-white" src="Account/upload/<%=rr.getString(9)%>" alt=""  style="height:95px;width:96px;margin-top:0px;">
	
 
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



<a class="w3-white"><%=session.getAttribute("name")%></a> 
</a>
                             <i class="fa fa-angle-down"></i>
							<ul style="color:black;font-weight:bold;">
						
								<li><img src="Account/upload/<%=session.getAttribute("image")%>" style="height:150px;width:100%;border-bottom:2px solid black;"></li> 
							<li class="w3-white"><%=session.getAttribute("name")%></li>
							 <li class="w3-red w3-padding w3-card-4"><a href="Account/logout.jsp"> Logout now</a></li>
							</ul>
						</li>
				</ul>
				</div>
  
                
 
                
<!-- <li><a href="#" onclick="document.getElementById('register').style.display='block'" ><img src="DesiningTools/images/registration.png" title="Registration Process" style="hight:50px;width:50px;background-color:none;"></a></li>
<li><a href="#" onclick="document.getElementById('login').style.display='block'" style="width:auto;background-color:none;" title="Login"><img src="DesiningTools/images/tlogin.png" style="hight:50px;width:50px;"></a></li>
  -->   
  
  
              </ul>
              </div>
            </div>
          
        </nav>
      </div>
      <svg class="decor" height="100" preserveaspectratio="none" version="1.1" viewbox="0 0 100 100" width="100%" xmlns="http://www.w3.org/2000/svg">
        <path d="M0 100 L100 0 L0 0" stroke-width="0"></path>
      </svg>
    </header>