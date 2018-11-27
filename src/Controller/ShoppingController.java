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

/**
 * Servlet implementation class ShoppingCartController
 */
@WebServlet("/ShoppingController")
public class ShoppingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;  

    public ShoppingController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String action = request.getParameter("action");
		
			if("deleteCart".equals(action)) {
				deleteCart(request, response);
			}else if ("editCart".equals(action)) {
				editCart(request, response);
			}else if ("payCart".equals(action)) {
				payCart(request, response);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public void deleteCart (HttpServletRequest request, HttpServletResponse response) throws Exception {

	}
	
	public void editCart (HttpServletRequest request, HttpServletResponse response) throws Exception {

	}

	public void payCart (HttpServletRequest request, HttpServletResponse response) throws Exception {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
