package Servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import Models.RegModel;
import oracle.sql.NUMBER;
/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		
		
		
		
		
		PrintWriter pw = response.getWriter(); 
		PreparedStatement  ps;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/renting","root","");
				
		
		String email=request.getParameter("email");
		String pws=request.getParameter("password");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String UserType=request.getParameter("UserType");
		String image=" ";
		


		 
		String password=RegModel.MD5(pws);
		
		
		
	 	RegModel.setEmail(email);
		RegModel.setPassword(password);
		RegModel.setName(name);
		RegModel.setMobile(mobile);
		RegModel.setAddress(address);
		RegModel.setGender(gender);
		RegModel.setDob(dob);
		RegModel.setImage(image);
		RegModel.setUserType(UserType);
		
		
		
        ps=con.prepareStatement("insert into user(UserEmail,UserPass,UserName,gender,dob,UserMobile,UserAddress,image,UserType) values(?,?,?,?,?,?,?,?,?)");
        
        
        
        
        
        ps.setString(1, email);
		ps.setString(2, password);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setString(5, dob);
	    ps.setString(6, mobile);
		ps.setString(7, address);
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

        	 
    		
    		if(UserType.equals("Admin"))
    		{
    			response.sendRedirect("DashBoard/index.jsp");
    		}
    		else if(UserType.equals("LandLoard")) {
    			response.sendRedirect("Account/landlord.jsp");
    		}
    		
    		response.sendRedirect("Account/start.jsp");
 
    		
    		
    		
    		
    		
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
