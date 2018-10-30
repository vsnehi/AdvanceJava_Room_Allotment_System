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
                         Delete Category
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover w3-table-all w3-tiny" id="dataTables-example">
                                    <thead class="odd gradeX form table responsive">
                                        <tr class="even gradeX form table responsive">
                                            <th>#-Delete</th>
                                            <th>NAME</th>
                                            <th>INFO</th>
                                            <th>Price</th>
                                            <th>AC/Non AC</th>
                                            <th>Email</th>
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
         String QueryString = "select * from morecat ORDER BY mid DESC";
         rs = statement.executeQuery(QueryString);
%>


   <%
    while (rs.next()) {
    %>




<tr class="odd gradeX" style="overflow-x:auto;">
        <td>
        <form method="POST" action="../deletecat"> 
        <input type="radio" name="id" value="<%=rs.getInt(1)%>">
            <input type="submit" class="btn btn-alert w3-red w3-padding" value="Delete Now">
            </form>
        </td>
        <td style="overflow-x:auto;"><%=rs.getString(2)%></td>       
        <td style="overflow-x:auto;"><%=rs.getString(3)%></td>   
        <td style="overflow-x:auto;"><%=rs.getString(4)%></td>   
        <td><%=rs.getString(5)%></td>   
         <td><%=rs.getString(6)%></td> 
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