<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="javax.servlet.http.HttpSession" %>    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%
		if (session != null) {
			if (session.getAttribute("name") != null) {
				String name = (String) session.getAttribute("name");
				String email = (String) session.getAttribute("email");
				String mobile = (String) session.getAttribute("mobile");
				String gender = (String) session.getAttribute("gender");
				String image = (String) session.getAttribute("image");
				%>
<title><% out.print(name); %></title>
	<%			
				
				
				
			} else {
				
			}
		}
	%>
 

<link rel="icon" href="upload/<%=session.getAttribute("image")%>" type="image/gif" sizes="16x16">

<jsp:directive.include file = "meta.jsp" />




</head>
<body data-spy="scroll" data-target=".header">
<jsp:directive.include file = "../Inc/mheader.jsp" />

<div class="w3-container-fluid" style="margin-top:100px;">
<div class="row">
<div class="col-lg-12">
<!-- TOP -->

</div>
</div>
<div class="row">
<div class="col-lg-2">
<!-- Side -->

</div>
<div class="col-lg-10">
<!--Content  -->
<div class="row">
<div class="col-sm-12">
<div class="col-sm-3 be-post">
<%
try {
  
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         String QueryString = "select * from room_list ORDER BY Roomid DESC";
         rs = statement.executeQuery(QueryString);
 
    while (rs.next()) {
    %>
 

								<a href="" class="be-img-block">
								<img src="upload/<%=rs.getString(2)%>" alt="No Images Upload" style="height:300px;width:200px;">
								</a>
								<a class="be-post-title"><%=rs.getString(3)%></a>
								<span>
									<a href="" class="be-post-tag"><%=rs.getString(4)%></a>, 
									<a href="" class="be-post-tag"><%=rs.getString(5)%></a>,  
									<a href="" class="be-post-tag"><%=rs.getString(6)%></a>
								</span>
								 <div class="author-post">
									<img src="upload/<%=rs.getString(7)%>" class="ava-author">
									<span><a>Upload By:, <%=rs.getString(8)%></a></span>
								</div>
								<div class="info-block">
									<span><i class="fa fa-thumbs-o-up"></i><a onclick="Like()" id="Likes"><%=rs.getString(12)%></a></span>
									<span><i class="fa fa-eye"></i><%=rs.getString(10)%></span>
									<span><i class="fa fa-comment-o"></i><%=rs.getString(11)%></span>
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
</div>
</div>
</div>
</div>
</div>
</div>








<button class="w3-button btn btn-success w3-input">More now ++</button>
<jsp:directive.include file = "footer.jsp" />
<p class="back-to-top"><i class="fa fa-chevron-up"></i></p>
     <script type="text/javascript">

  function mySearchFunction2() {
    var input, filter, ul, li, i,j,ul2,li2;
   
    input = document.getElementById("HomeSearch");
    filter = input.value.toUpperCase();
    ul = document.getElementById("Hul");
    li = ul.getElementsByTagName("span");
 
    
for (i = 0; i < li.length; i++) {
if (li[i].innerHTML.toUpperCase().indexOf(filter) > -1 ) {
            li[i].style.display = "";
           
        } else {
            li[i].style.display = "none";
          
        }
    }

   

}

 
</script> 
 
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
 

  
</body>
</html>