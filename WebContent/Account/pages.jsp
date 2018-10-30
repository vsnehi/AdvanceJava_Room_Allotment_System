<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>  

<div id="content-block">
<div class="container-fluid  custom-container" style="margin-top:100px;">
<div class="row">
<div class="col-md-2 left-feild">
<form action="./" class="input-search">
<input type="text" required="" placeholder="Enter keyword" id="HomeSearch" onkeyup="mySearchFunction2()" autofocus style="color:red;border-radius:35px;border:2px solid black;">
							<i class="fa fa-search"></i>
							<input type="submit" value="">
</form>				
</div>	
				
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
%>

	<div class="ul">
		<div class="col-md-10 ">
					<div class="for-be-dropdowns">
						<div class="be-drop-down">
							<i class="icon-projects"></i>
							<span class="be-dropdown-content"> Rooms by Type</span>
							<ul class="drop-down-list">
														
<%
    while (rs.next()) {
%>
 <li class="w3-white" style="border:1px solid black;" id="tag" ><a onclick="Typ()" href="#"><%=rs.getString(5)%></a></li>
<script>
 
function Typ(){
	 
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("Hul").innerHTML = this.responseText;
	    }
	  };
 	  xhttp.open("GET", "type.jsp?x=<%=rs.getString(5)%>", true);
	  xhttp.send();
}

 

</script>

<% 
}
%>					
	</ul>
							
							
							
						</div>
						<div class="be-drop-down">
							<i class="icon-creative"></i>
							<span class="be-dropdown-content">Price By
							</span>
							<ul class="drop-down-list">
								<%
	rs = statement.executeQuery(QueryString);							
    while (rs.next()) {
   
%> 
<li class="w3-white" style="border:1px solid black;" id="price"><a onclick="PriceBy()" href="#"><%=rs.getString(6)%></a></li>

<script>
 
function PriceBy(){
	 
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("Hul").innerHTML = this.responseText;
	    }
	  };
 	  xhttp.open("GET", "price.jsp?x=<%=rs.getString(6)%>", true);
	  xhttp.send();
}

 

</script>

<% 
}
%>	
							</ul>
						</div>
						<div class="be-drop-down">
							<i class="icon-features"></i>
							<span class="be-dropdown-content">AC/Non AC
							</span>
							<ul class="drop-down-list">
										<%
rs = statement.executeQuery(QueryString);							
while (rs.next()) {
%>
<li class="w3-white" style="border:1px solid black;"><a onclick="AC()" href="#"><%=rs.getString(9)%></a></li>

<script>
 
function AC(v){
	 
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("Hul").innerHTML = this.responseText;
	    }
	  };
 	  xhttp.open("GET", "ac.jsp?x=<%=rs.getString(9)%>", true);
	  xhttp.send();
}

 

</script>


<% 
}
%>		</ul>
						</div>
					 
					</div>				
				</div>
		</div>		
 <%
    rs = statement.executeQuery(QueryString);							
    rs.close();
    statement.close();
    connection.close();
} catch (Exception ex) {
    %>
  
   
    <%
         out.println("Unable to connect to database.");
       }
    %>             				
 </div>
 </div>
 	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
<div class="container-fluid custom-container">
<div class="row">
<div class="col-md-2 left-feild">
					<div class="be-vidget">
						<h3 class="letf-menu-article">
							Room Categories
						</h3>
						<div class="creative_filds_block">
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

	<div class="ul">
							
   <%
    while (rs.next()) {
    %>
    
    
    

  <a class="w3-dropdown-hover"><%=rs.getString(2)%>
  <span class="w3-dropdown-content w3-bar-block w3-card-4">
        <li href="#" class="w3-bar-item w3-button " style="background-hover:#0d58c8;"><%=rs.getString(3)%></li>
        <li href="#" class="w3-bar-item w3-button w3-hover-blue"><%=rs.getString(4)%></li>
        <li href="#" class="w3-bar-item w3-button w3-hover-blue"><%=rs.getString(5)%></li>
        <li href="#" class="w3-bar-item w3-button w3-hover-blue"><%=rs.getString(6)%></li>
  </span>
  </a>
<%   }    %>
     </div>	
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
				
</div>
</div>
<div class="be-vidget">
						<h3 class="letf-menu-article">
							Search By Tags
						</h3>
<div class="tags_block clearfix">
							<ul>
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

	<div class="ul">
							
   <%
    while (rs.next()) {
    %>
  <li><a onclick="tags('<%=rs.getString(2)%>')"><%=rs.getString(2)%></a></li>

<script>
 
function tags(v){
	 var k;
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
		  k=v;
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("Hul").innerHTML = this.responseText;
	    }
	  };
 	  xhttp.open("GET", "tags.jsp?x=<%=rs.getString(2)%>", true);
	  xhttp.send();
}

 

</script>

  
   <%   }    %>
     </div>	
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
				
				
								
						
						
							</ul>
						</div>
					</div>
 </div>	
				
				
				
				
				
	             



		
				
<div class="col-md-10">
<div class="row _post-container_">

<div class="be-post" id="Hul">
<%
try {
  
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
         String QueryString = "select * from room_list ORDER BY Roomid DESC";
         rs = statement.executeQuery(QueryString);
    
    while (rs.next()) {
    String roomid=rs.getString(1);
    %>
    <div class="custom-column-5" height="300px" >    
                                 <a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-img-block">
								<img src="upload/<%=rs.getString(2)%>" alt="No Images Upload">
								</a>
								<a class="be-post-title"><%=rs.getString(3)%>&nbsp;&nbsp; <b style="color:red;weight:bold;font-family:cursive;"><%=rs.getString(9)%></b></a>
								<span>
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(4)%></a>, 
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(5)%></a>,  
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag" style="color:red;font-family:cursive;weight:bold;" ><%=rs.getString(6)%></a>
								</span>
								 <div class="author-post">
									<img src="upload/<%=rs.getString(7)%>" class="ava-author">
									<span><a>Upload By:, <%=rs.getString(8)%></a></span>
								</div>
								<div class="info-block">
								 
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
    %></div>
    
    
    
    
    
    
    
    
    
    
<div class="be-post w3-hide" id="priceS">
<%
try {
  
         String connectionURL = "jdbc:mysql://localhost:3306/renting";
         Connection connection = null;
         Statement statement = null;
         ResultSet rs=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         connection = DriverManager.getConnection(connectionURL, "root", "");
         statement = connection.createStatement();
         /* /* ORDER BY  Uid DESC */
         String QueryString = "select * from room_list ORDER BY Roomid DESC";
         rs = statement.executeQuery(QueryString);
    
    while (rs.next()) {
    String roomid=rs.getString(1);
    %>
    <div class="custom-column-5" height="300px" >    
                                 <a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-img-block">
								<img src="upload/<%=rs.getString(2)%>" alt="No Images Upload">
								</a>
								<a class="be-post-title"><%=rs.getString(3)%>&nbsp;&nbsp; <%=rs.getString(9)%></a>
								<span>
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(4)%></a>, 
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(5)%></a>,  
									<a href="checkout.jsp?id=<%=rs.getString(1)%>" class="be-post-tag"><%=rs.getString(6)%></a>
								</span>
								 <div class="author-post">
									<img src="upload/<%=rs.getString(7)%>" class="ava-author">
									<span><a>Upload By:, <%=rs.getString(8)%></a></span>
								</div>
								<div class="info-block">
								 
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
    %></div>
    
    
    
    
        
</div>
</div>




 















<script>
  function Like(){
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("Likes").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "Like.jsp?L=1", true);
	  xhttp.send();
  }


</script>

<script type="text/javascript">

  function mySearchFunction2() {
    var input, filter, ul, li, i,j,ul2,li2;
   
    input = document.getElementById("HomeSearch");
    filter = input.value.toUpperCase();
    ul = document.getElementById("Hul");
    li = ul.getElementsByTagName("div");
 
    
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

  function myTags() {
	  
    var input, filter, ul, li, i,j,ul2,li2;
    
    input = document.getElementById("tag");
    filter = tg.toUpperCase();
    ul = document.getElementById("Hul");
    li = ul.getElementsByTagName("div");
 
    
for (i = 0; i < li.length; i++) {
if (li[i].innerHTML.toUpperCase().indexOf(filter) > -1 ) {
            li[i].style.display = "";
           
        } else {
            li[i].style.display = "none";
          
        }
    }

   

}

 
</script>

<script>


function Ranges() {
  var input, filter, ul, li, i,j,ul2,li2;
 
  input = document.getElementById("Rak");
  filter = input.value.toUpperCase();
  ul = document.getElementById("Hul");
  li = ul.getElementsByTagName("div");

  
for (i = 0; i < li.length; i++) {
if (li[i].innerHTML.toUpperCase().indexOf(filter) > -1 ) {
          li[i].style.display = "";
         
      } else {
          li[i].style.display = "none";
        
      }
  }

 

}


</script>




</div>
</div>	
