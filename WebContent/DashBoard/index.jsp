 <%@ page import = "java.io.*,java.util.*" %>
 <%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String password = (String) session.getAttribute("password");
				String UserType = (String) session.getAttribute("UserType");
				
 
				
		if(UserType=="LandLoard"){
			   response.sendRedirect("Account/landlord.jsp");	
		}
		else if(UserType=="RoomRenter"){
			   response.sendRedirect("Account/start.jsp");	
					}
        /*  // New location to be redirected
         String site = new String("http://www.photofuntoos.com");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);  */
    
			} else {
				String login = "../access.jsp";
			    response.sendRedirect(login);		
			}
		}
	%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=session.getAttribute("name")%></title>

<link rel="icon" href="../Account/upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">

      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
 <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
 <link href="assets/w3.css" rel="stylesheet" />
<jsp:directive.include file = "meta.jsp" />
<jsp:directive.include file = "mheader.jsp" />


<style>

  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  
</style>
</head>
<body>
 <div id="wrapper">
 <nav class="navbar w3-white navbar-cls-top w3-card-4" data-spy="affix" data-offset-top="197" style="margin-bottom: 0">
 <div class="navbar-header">
 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
 <span class="sr-only">Toggle navigation</span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 <span class="icon-bar"></span>
 </button>
 </div>
 <center><div style="font-decoration:none;color:black;font-weight:bold;">Administrator Panel</div></center>
 </nav>   
           <!-- /. NAV TOP  -->
<nav class="navbar-default navbar-side w3-white" role="navigation" style="position:fixed;">
<div class="sidebar-collapse ">
<ul class="nav" id="main-menu">
<li class="text-center" style="border-radius:33px;">
<img src="../Account/upload/<%=session.getAttribute("image")%>" class="user-image img-circle w3-card-4"/>
<h3 class="w3-white w3-card-4 w3-input" style="font-family:cursive;border:1px solid black;float:left;"><%=session.getAttribute("name")%></h3>	
<h3 class="w3-white w3-card-4 w3-input" style="font-family:cursive;border:1px solid black;float:left;"><%=session.getAttribute("UserType")%></h3>	
<h3 class="w3-white w3-card-4 w3-input" style="font-family:cursive;border:1px solid black;float:left;"><%=session.getAttribute("mobile")%></h3>	
<h3 class="w3-white w3-card-4 w3-input" style="font-family:cursive;border:1px solid black;"><%=session.getAttribute("email")%></h3>	
</li>
				
					
<!-- <li>
            <a  href="#" class="w3-card-16"><i class="fa fa-envelope fa-1x"></i> Massage Box</a>
</li> -->
<li>
         <a href="#" class="w3-card-4 w3-red"><i class="fa fa-trash-o fa-1x"></i>Delete<span class="fa arrow"></span></a>
               <ul class="nav nav-second-level">
                          <li class="w3-card-4 w3-red">
                               <a onclick="DeleteAccount()"><i class="fa fa-trash-o fa-1x"></i>Delete Account<span class="fa arrow"></span></a>
                         </li>
                                <li class="w3-card-4 w3-red">
                                <a onclick="DeletePost()"><i class="fa fa-trash-o fa-1x"></i>Delete Post</a>
                                </li>
                                <li class="w3-card-4 w3-red">
                                 <a onclick="DeleteCat()"><i class="fa fa-trash-o fa-1x"></i>Delete Category</a>
                               </li>
                               </ul>
                               </li>  
                               <li>
 <a href="#" class="w3-card-4 w3-white"><i class="fa fa-edit fa-1x"></i> Adding <span class="fa fa-arrow-circle-o-down" aria-hidden="true"></span>
 </a>
                               <ul class="nav nav-second-level w3-card-16 w3-white">
                               <li class="w3-card-4 w3-white">
                                <a onclick="AddAccount()"><i class="fa fa-edit fa-1x"></i> Add Account </span></a>
                               </li class="w3-card-4 w3-white">
                               <li>
                                <a onclick="AddPost()"><i class="fa fa-edit fa-1x"></i> Add Post</a>
                                </li>
                                <li class="w3-card-4 w3-white">
                                <a onclick="AddCat()"><i class="fa fa-edit fa-1x"></i> Add Category</a>
                               </li>
                              </ul>
                       </li> 
                       
                       
                       
                         <li>
 <a href="#" class="w3-card-16 w3-white"><i class="fa fa-edit fa-1x"></i> Views <span class="fa fa-arrow-circle-o-down" aria-hidden="true"></span>
 </a>
                               <ul class="nav nav-second-level w3-card-16 w3-white">
                               <li class="w3-card-4 w3-white">
                                <a onclick="ViewAccount()"><i class="fa fa-edit fa-1x"></i> View Account </span></a>
                               </li>
                               <li class="w3-card-4 w3-white">
                                <a onclick="ViewPost()"><i class="fa fa-edit fa-1x"></i> View Post</a>
                                </li>
                                <li class="w3-card-4 w3-white">
                                <a onclick="ViewCat()"><i class="fa fa-edit fa-1x"></i> View Category</a>
                               </li>
                              </ul>
                       </li> 
                       
                       
                         <li>
 <a href="#" class="w3-card-16 w3-red"><i class="fa fa-edit fa-1x"></i> Booking <span class="fa fa-arrow-circle-o-down" aria-hidden="true"></span>
 </a>
                               <ul class="nav nav-second-level w3-card-16 w3-white">
                               <li class="w3-card-4 w3-white">
                                <a onclick="ViewBooking()"><i class="fa fa-edit fa-1x"></i> View Booking </span></a>
                               </li>
                               <li class="w3-card-4 w3-white">
                                <a onclick="DeleteBooking()"><i class="fa fa-edit fa-1x"></i> Delete Booking</a>
                                </li>
                               </ul>
                       </li> 
</ul>
</div>
</nav>  
        <!-- /. NAV SIDE  -->
<div id="page-wrapper" >
            <div id="page-inner">
                
              
         
                   
                   <div class="row" style="z-index:-1000;">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default w3-card-4">
                        <div class="panel-heading">
                          Registered Account
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover w3-table-all w3-tiny" id="dataTables-example">
                                    <thead class="odd gradeX form table responsive">
                                        <tr class="even gradeX form table responsive">
                                            <th>#</th>
                                            <th>Mail</th>
                                            <th>Pin</th>
                                            <th>Name</th>
                                            <th>Gender</th>
                                            <th>DOB</th>
                                            <th>Number</th>
                                            <th>Address</th>
                                            <th>Image</th>
                                            <th>UserType</th>
                                            </tr>
                                    </thead>
                                    <tbody>
                                    
<%
      try {
  
          String connectionURL = "jdbc:mysql://localhost:3306/renting";
  
 
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         String QueryString = "select * from user ORDER BY Uid DESC";
         rs = statement.executeQuery(QueryString);
%>


   <%
    while (rs.next()) {
    %>




<tr class="odd gradeX" style="overflow-x:auto;">
        <td><INPUT TYPE="radio" NAME="bt1" VALUE="<%=rs.getInt(1)%>"></TD>
        <td style="overflow-x:auto;"><%=rs.getString(2)%></td>       
        <td style="overflow-x:auto;"><%=rs.getString(3)%></td>   
        <td style="overflow-x:auto;"><%=rs.getString(4)%></td>   
        <td><%=rs.getString(5)%></td>   
        <td><%=rs.getString(6)%></td> 
        <td><%=rs.getString(7)%></td>   
        <td><%=rs.getString(8)%></td>   
        <td><img src="../Account/upload/<%=rs.getString(9)%>" style="heigt:25px;width:25px;"></td>   
        <td><%=rs.getString(10)%></td> 
</tr>
                
                                        
   <%   }    %>
     
    <%
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
                                        
                                        
  </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
                
              
   
            </div>
      
       
              
                
              
                 
   </div>
   </div>
   </div>
    
    
    
    
    
<script>
function AddAccount() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "addaccount.jsp", true);
	  xhttp.send();
	}


function AddPost() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "addpost.jsp", true);
	  xhttp.send();
	}
	
	
	
function AddCat() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "addcat.jsp", true);
	  xhttp.send();
	}

function DeleteAccount() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "deleteaccount.jsp", true);
	  xhttp.send();
	}
	
	
function DeletePost() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "deletepost.jsp", true);
	  xhttp.send();
	}
	
	
function DeleteCat() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "deletecat.jsp", true);
	  xhttp.send();
	}

function ViewAccount() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "viewaccount.jsp", true);
	  xhttp.send();
	}
	
	
function ViewPost() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "viewpost.jsp", true);
	  xhttp.send();
	}
	
	
function ViewCat() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "viewcat.jsp", true);
	  xhttp.send();
	}

function ViewBooking() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "ViewBooking.jsp", true);
	  xhttp.send();
	}

function DeleteBooking() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("page-wrapper").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "DeleteBooking.jsp", true);
	  xhttp.send();
	}

</script>
    
 
    <script src="assets/js/jquery-1.10.2.js"></script>
 
    <script src="assets/js/bootstrap.min.js"></script>
 
    <script src="assets/js/jquery.metisMenu.js"></script>
 
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    
     <script src="assets/js/dataTables/jquery.dataTables.js"></script>
     <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
     <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
  <script src="assets/js/custom.js"></script>
    
   
</body>
</html>