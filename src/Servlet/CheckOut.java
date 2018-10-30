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
import javax.servlet.http.HttpSession;
import Models.*;
/**
 * Servlet implementation class CheckOut
 */
@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOut() {
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
	 PreparedStatement  ps,delete;
	  
	 
	 
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/renting","root","");
				
			String pemail=request.getParameter("pemail");
			String uid=request.getParameter("uid");
			String roomid=request.getParameter("roomid");
			String cardnumber=request.getParameter("cardnumber");
			String expirationdate=request.getParameter("expirationdate");
			String cvcode=request.getParameter("cvcode");
			String coupon=request.getParameter("coupon");
			String mobile=request.getParameter("mobile");
			String money=request.getParameter("money");
			String name=request.getParameter("name");
			String conform="yes";
			
			
		
			mCheckOut.setCardnumber(cardnumber);
			mCheckOut.setConform(conform);
			mCheckOut.setCoupon(coupon);
			mCheckOut.setCvcode(cvcode);
			mCheckOut.setExpirationdate(expirationdate);
			mCheckOut.setUid(uid);
			mCheckOut.setRoomid(roomid);
			mCheckOut.setPemail(pemail);
			mCheckOut.setName(name);
			mCheckOut.setMoney(money);
			mCheckOut.setMobile(mobile);
			
			
			
			 ps=con.prepareStatement("insert into payment(pemail,uid,roomid,cardnumber,expirationdate,cvcode,coupon,mobile,money,name,conform) values(?,?,?,?,?,?,?,?,?,?,?)");
		        
		        
		        
		        
		        
		        ps.setString(1, pemail);
				ps.setString(2, uid);
				ps.setString(3, roomid);
				ps.setString(4, cardnumber);
				ps.setString(5, expirationdate);
			    ps.setString(6, cvcode);
				ps.setString(7, coupon);
				ps.setString(8, mobile);
				ps.setString(9, money);
				ps.setString(10, name);
				ps.setString(11, conform);
				
				
				delete=con.prepareStatement("DELETE from room_list WHERE Roomid="+roomid+"");
				int k = delete.executeUpdate(); 
				
				int i = ps.executeUpdate();
		        
		        
		        if(i!=0){  
		        	response.sendRedirect("Account/conform.jsp");
		          }
		        

		        
			
			
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
		
	
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
		doGet(request, response);
	}

}
