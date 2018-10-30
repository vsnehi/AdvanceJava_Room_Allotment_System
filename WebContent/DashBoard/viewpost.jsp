<%@ page import="java.sql.*" %>    
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ page import="Models.*" %>

<div id="page-inner">
                
              
         
                   
                   <div class="row" style="z-index:-1000;">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default w3-card-4">
                        <div class="panel-heading">
                        Delete POST
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover w3-table-all w3-tiny" id="dataTables-example">
                                    <thead class="odd gradeX form table responsive">
                                        <tr class="even gradeX form table responsive">
                                           
                                            <th>Image</th>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Type</th>
                                            <th>Price</th>
                                            <th>UserImg</th>
                                            <th>UserName</th>
                                            <th>AC/NON AC</th>
                                            <th>Viewed</th>
                                            <th>Comment</th>
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
         String QueryString = "select * from room_list ORDER BY Roomid DESC";
         rs = statement.executeQuery(QueryString);
%>


   <%
    while (rs.next()) {
    %>




<tr class="odd gradeX" style="overflow-x:auto;">
     
        <td><img src="../Account/upload/<%=rs.getString(2)%>" style="heigt:25px;width:25px;"></td>   
        <td style="overflow-x:auto;"><%=rs.getString(3)%></td>       
        <td style="overflow-x:auto;"><%=rs.getString(4)%></td>   
        <td style="overflow-x:auto;"><%=rs.getString(5)%></td>   
        <td><%=rs.getString(6)%></td>   
        <td><img src="../Account/upload/<%=rs.getString(7)%>" style="heigt:25px;width:25px;"></td>   
        <td><%=rs.getString(8)%></td> 
        <td><%=rs.getString(9)%></td>   
        <td><%=rs.getString(10)%></td>   
        <td><%=rs.getString(11)%></td>   
        <td><%=rs.getString(12)%></td> 
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
   
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>