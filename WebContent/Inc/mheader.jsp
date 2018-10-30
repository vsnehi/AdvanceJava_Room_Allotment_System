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
				
				
				
				
				<div class="brand-be author-post" style="float:left;">
					<a href="start.jsp"><img src="upload/<%=session.getAttribute("image")%>" >
					</a>
				</div>
				
				
			<!-- Here is Searchbox -->	
				
				
				
<div class="col-md-2 left-feild">
					<form action="./" class="input-search">
						<input type="text" required="" placeholder="Enter keyword" class="w3-input" id="myInput" onkeyup="mySearchFunction()" style="border:2px dashed black;color:green;font-weight:bold;">
							<i class="fa fa-search" style="margin-left:0px;margin-top:0px;"></i>
							<input type="submit" value="Submit" name="Submit">
					</form>			
</div>	
				
				
				
				
				
				
				
				
				
				
				
				
				<div class="login-header-block">
					<div class="login_block">																	
						<a class="notofications-popup" href="#">
							<i class="fa fa-bed" aria-hidden="true"></i>
							<span class="noto-count">
							
							
							
							
							
							
	<%
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
  
 
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         String QueryString = "select Uid from user";
         rs = statement.executeQuery(QueryString);
         int i=0;
         
%>


   <%
    while (rs.next()) {
   
    	i++;
  
    	 
    	
    	%>
	
	   
 	                                        
   <%   }    %>
     
    <%
    out.println(i);
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    %>
  
   
    <%
         out.println("Unable to connect to database.");
       }
    %>   					
							
							
							
 </span>
 </a>

<div class="noto-popup notofications-block">
<div class="noto-label">We have Members</div>
<div class="noto-body">




<div class="noto-entry">
<div class="noto-content clearfix">
 
<jsp:directive.include file = "table.jsp" />
 
</div>
</div>							
</div>
						
						
   				
						
				<!-- 		<a class="messages-popup" href="blog-detail-2.html">
							<i class="fa fa-envelope-o"></i>
							<span class="noto-count">4</span>
						</a>
						<div class="noto-popup messages-block">
							<div class="noto-label">Your Messages <span class="noto-label-links"><a href="messages-2.html">compose</a><a href="messages.html">View all messages</a></span></div>
							<div class="noto-body">
								<div class="noto-entry style-2">
									<div class="noto-content clearfix">
										<div class="noto-img">	
											<a href="blog-detail-2.html">
												<img src="img/c1.png" alt="" class="be-ava-comment">
											</a>
										</div>
										<div class="noto-text">
											<div class="noto-text-top">
												<span class="noto-name"><a href="blog-detail-2.html">Ravi Sah</a></span>
												<span class="noto-date"><i class="fa fa-clock-o"></i> May 27, 2015</span>
											</div>
											<div class="noto-message">Sed velit mauris, pulvinar sit amet accumsan vitae, egestas, pulvinar sit amet accumsan vitae, egestas</div>
										</div>
									</div>
								</div>
								<div class="noto-entry style-2">
									<div class="noto-content clearfix">
										<div class="noto-img">	
											<a href="blog-detail-2.html">
												<img src="img/c6.jpg" alt="" class="be-ava-comment">
											</a>
										</div>
										<div class="noto-text">
											<div class="noto-text-top">
												<span class="noto-name"><a href="blog-detail-2.html">Louis Paquet</a></span>
												<span class="noto-date"><i class="fa fa-clock-o"></i> May 27, 2015</span>
											</div>
											<div class="noto-message">
											Pellentesque habitant morbi tristique senectus et netus tristique senectus
											</div>
										</div>
									</div>
								</div>
								<div class="noto-entry style-2">
									<div class="noto-content clearfix">
										<div class="noto-img">	
											<a href="blog-detail-2.html">
												<img src="img/c9.jpg" alt="" class="be-ava-comment">
											</a>
										</div>
										<div class="noto-text">
											<div class="noto-text-top">
												<span class="noto-name"><a href="blog-detail-2.html">Cüneyt ŞEN</a></span>
												<span class="noto-date"><i class="fa fa-clock-o"></i> May 27, 2015</span>
											</div>
											<div class="noto-message">
												Sed id erat vitae libero malesuada dictum vel sit amet eros
											</div>
										</div>
									</div>
								</div>								
								<div class="noto-entry style-2">
									<div class="noto-content clearfix">
										<div class="noto-img">	
											<a href="blog-detail-2.html">
												<img src="img/c10.jpg" alt="" class="be-ava-comment">
											</a>
										</div>
										<div class="noto-text">
											<div class="noto-text-top">
												<span class="noto-name"><a href="blog-detail-2.html">Tomasz Mazurczak</a></span>
												<span class="noto-date"><i class="fa fa-clock-o"></i> May 27, 2015</span>
											</div>
											<div class="noto-message">
												In molestie libero quis cursus ullamcorper eu rhoncus magna
											</div>
										</div>
									</div>
								</div>												
							</div>							
						</div> -->
				 
				 
				 
				 
				 
				 
				 

 </div>	
				</div>
				
				 
<!-- Here is Account details -->				 
				 
				 
				 				
				
				
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

 
	<img class="login-user img-circle" src="upload/<%=rr.getString(9)%>" alt=""  style="height:35px;width:36px;margin-top:0px;">
	
 
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



<a class="w3-white" style="margin-right:200px;"><%=session.getAttribute("name")%> </a>
</a>
                             <i class="fa fa-angle-down"></i>
							<ul style="color:black;font-weight:bold;">
								<li>
								<li><a><img src="upload/<%=session.getAttribute("image")%>" style="height:50px;width:50px;"></a></li> 
								<form method="post" action="../ProfileImage2" encType="multipart/form-data">
								<a><label for="file" class="w3-input"> Upload Image </label></a>
								<a><input type="file" name="file" id="file" class="w3-hide" required=""></a>
								<a><input type="submit"  name="submit" class="w3-input"></a>
								</form>
								
								</li>
								<li><a href="landlord.jsp"> Landlord Dashbord </a></li>
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