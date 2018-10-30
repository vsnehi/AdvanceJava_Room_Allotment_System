package Servlet;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Models.account;
 
 
 
@WebServlet("/access")
public class access extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
  
	
    public access() {
        
    	super();
    }

 

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        HttpSession session = request.getSession(true);
		PreparedStatement  ps;
		
	   
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String image=request.getParameter("image");
		String UserType=request.getParameter("UserType");

		
		
		account.setEmail(email);
		account.setPassword(password);
		account.setName(name);
		account.setMobile(mobile);
		account.setAddress(address);
		account.setGender(gender);
		account.setDob(dob);
		account.setImage(image);
		account.setUserType(UserType);
		 
	
		 try {
		   
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/home","root","");
ps=con.prepareStatement("insert into access(email,password,name,mobile,address,gender,dob,image,UserType) values(?,?,?,?,?,?,?,?,?)");
		
		        ps.setString(1, email);
				ps.setString(2, password);
				ps.setString(3, name);
				ps.setString(4, mobile);
				ps.setString(5, address);
			    ps.setString(6, gender);
				ps.setString(7, dob);
				ps.setString(8, image);
				ps.setString(9, UserType);
			
			int i = ps.executeUpdate();
			 if(i!=0){  

		        	session.setAttribute("email", email);
		    		session.setAttribute("password", password);
		    		session.setAttribute("name", name);
		    		session.setAttribute("gender", gender);
		    		session.setAttribute("dob", dob);
		    		session.setAttribute("mobile", mobile);
		    		session.setAttribute("address", address);
		    		session.setAttribute("UserType", UserType); 

		        	response.sendRedirect("Account/start.jsp");

		        }  
		        else{  
		        	response.sendRedirect("access.jsp");  }  
 
		 } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
		
		
		
	
		
		doGet(request, response);
	}

}
