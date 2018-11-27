package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Customer;

/**
 * Servlet implementation class LogInController
 */
@WebServlet("/LogInController")
public class LogInController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;
	
    public LogInController() {

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String action = request.getParameter("action");
		
			if("SignIn".equals(action)) {
				validateLogin(request, response);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/**
	 * Check if the user name and password is valid
	 * @param userType: customer or employee (which table)
	 */
	public void validateLogin (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			String userType = request.getParameter("userType");
			
			con = ConnectionFactory.getConnection();
			String query = "SELECT * From "+userType+ " where userName = ?";
			pst = con.prepareStatement(query);
			pst.setString(1, userName);
			
			rs = pst.executeQuery();
			
			boolean isValid = false;
			while(rs.next()) {
				String userNameReturn = rs.getString(2);
				String passwordReturn = rs.getString(3);
				if(userNameReturn.equals(userName) && passwordReturn.equals(password) ) {
					isValid = true;
					break;
				}
			}
			
			//if login is success ==> display the successful page & add the user full name into session
			if(isValid) {
		//		Customer newCustomer = new Customer(String customerId, String customerName, String password, String firstName, String lastName, String address
				session.setAttribute("fullName", (rs.getString(4) +" "+ rs.getString(5) ));
				response.sendRedirect("SuccessfulLogIn.jsp");
			}else {
				session.setAttribute("errorMgs", "Wrong user name and password");
				response.sendRedirect("LogIn.jsp");
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
