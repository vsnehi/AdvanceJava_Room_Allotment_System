package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletecat
 */
@WebServlet("/deletecat")
public class deletecat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletecat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
		
		
		PrintWriter pw = response.getWriter(); 
		PreparedStatement  ps;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/renting","root","");
				
		
		    String delete=request.getParameter("id");
	
		    ps=con.prepareStatement("DELETE from morecat WHERE mid="+delete+"");
	        
		    int i = ps.executeUpdate();
		    if(i!=0){  

	        	 
	        	response.sendRedirect("DashBoard/index.jsp");

	        }  
	        else{  
	        	response.sendRedirect("access.jsp");  }
		
		 }  
	      catch (Exception e){  
	        pw.println(e);  
	      }  
	
		
		
		doGet(request, response);
	}

}
