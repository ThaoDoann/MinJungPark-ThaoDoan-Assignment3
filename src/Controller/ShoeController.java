package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.Shoe;
/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ShoeController")
public class ShoeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;  

    public ShoeController() {
    	
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();


			
			String action = request.getParameter("action");
		
			if("".equals(action)) {

			}else if ("".equals(action)) {

			}else if ("".equals(action)) {

			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public void initializePages (String type, HttpServletRequest request, HttpServletResponse response ) throws Exception{
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
