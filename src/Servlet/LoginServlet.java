package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.*; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
import Models.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		HttpSession session = request.getSession(true);
		
		
		 PrintWriter out=null;
		
		
		PrintWriter pw = response.getWriter(); 
		PreparedStatement  ps;
		
		
		String Uemail=request.getParameter("email");
		String pws=request.getParameter("password");
		String Upassword=RegModel.MD5(pws);
		
		
		
		
		
		
		
		 try {
			  
	          String connectionURL = "jdbc:mysql://localhost:3306/renting";
	  
	         
	         Connection connection = null;
	         Statement statement = null;
	         ResultSet rs = null;
	         Class.forName("com.mysql.jdbc.Driver").newInstance();
	         connection = DriverManager.getConnection(connectionURL, "root", "");
	         statement = connection.createStatement();
	         String QueryString = "select * from user where UserEmail='"+Uemail+"' and UserPass='"+Upassword+"'";
	         rs = statement.executeQuery(QueryString);
	      
	         
	         while (rs.next()) {
	        	 
	        	String id= rs.getString(1);
	        	String email= rs.getString(2);
	        	String password= rs.getString(3);
	        	String name= rs.getString(4);
	        	String gender= rs.getString(5);
	        	String dob= rs.getString(6);
	        	String mobile= rs.getString(7);
	        	String address= rs.getString(8);
	        	String image= rs.getString(9);
	        	String UserType= rs.getString(10);
	        	 
	        	 
	       
	        	
	        	
	        	session.setAttribute("email", email);
	    		session.setAttribute("password", password);
	    		session.setAttribute("name", name);
	    		session.setAttribute("gender", gender);
	    		session.setAttribute("dob", dob);
	    		session.setAttribute("mobile", mobile);
	    		session.setAttribute("address", address);
	    		session.setAttribute("UserType", UserType);
	    		session.setAttribute("image", image);

	    		
	    		if(UserType.equals("Admin"))
	    		{
	    			response.sendRedirect("DashBoard/index.jsp");
	    		}
	    		else if(UserType.equals("LandLoard")) {
	    			response.sendRedirect("Account/landlord.jsp");
	    		}
	    		else
	    		response.sendRedirect("Account/start.jsp");
	 	
	        	
	         }
 
		 
		 }catch(Exception e) {
	        	
			out.println("No any Account");
				 
	         }
		 
   		
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
