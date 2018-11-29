package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;  

    public ProductController() {
    	
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			System.out.println("ProductController");
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();


			
			String action = request.getParameter("action");
		
			if("addProduct".equals(action)) {
				System.out.println("delete");
			}else if ("editProduct".equals(action)) {
				System.out.println("edit");
			}else if ("deleteProduct".equals(action)) {
				deleteProduct(request, response);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public void deleteProduct (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			con = ConnectionFactory.getConnection();
			String products [] = request.getParameterValues("product");
			if (products != null) {
				for (int i= 0; i< products.length; i++) {
					pst = con.prepareStatement("Delete from Shoes where itemId = ?");
					pst.setInt(1, Integer.parseInt(products[i]));			
					int deleteItems = pst.executeUpdate();
					if(deleteItems > 0 ) {
						System.out.println("Number of products have been deleted :" + deleteItems);      
					}
				}
			}
			RequestDispatcher rd=request.getRequestDispatcher("Cart.jsp");  
			rd.forward(request, response);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
