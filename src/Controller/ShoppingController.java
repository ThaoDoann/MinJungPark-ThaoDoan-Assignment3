package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Model.Order;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ShoppingController
 */
@WebServlet("/ShoppingController")
public class ShoppingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingController() {
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
		
			if("deleteCart".equals(action)) {
				deleteCart(request, response);
			}else if ("editCart".equals(action)) {
				editCart(request, response);
			}else if ("payCart".equals(action)) {
				payCart(request, response);
			}else if ("editOrder".equals(action)) {
				editOrder(request, response);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	

	
	public void deleteCart (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			Order order = new Order();
			con = ConnectionFactory.getConnection();
			String orderId [] = request.getParameterValues("order");
			
			
			if (orderId != null) {
				for (int i= 0; i< orderId.length; i++) {
					pst = con.prepareStatement("Delete from orders where orderId = ?");
					pst.setInt(1, Integer.parseInt(orderId[i]));			
					int deleteItems = pst.executeUpdate();
					if(deleteItems > 0 ) {
						System.out.println("Number of rows have been deleted :" + deleteItems);      
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

	
	public void editCart (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			con = ConnectionFactory.getConnection();
			String orderId [] = request.getParameterValues("order");
			
			if (orderId != null) {
//				for (int i= 0; i< orderId.length; i++) {
//					int quantity = request.getParameterValue
//					rs = pst.executeStatement
//					pst = con.prepareStatement("Update Orders set quantity = ? where orderId = ?");
//					pst.setInt(1, );
		//			pst.setInt(2, Integer.parseInt(orderId[i]));	
					int editedItems = pst.executeUpdate();
					if(editedItems > 0 ) {
						System.out.println("Number of cart have been edited :" + editedItems);      
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

	public void payCart (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			con = ConnectionFactory.getConnection();
			String orders [] = request.getParameterValues("order");
			for (int i= 0; i< orders.length; i++) {
				int deleteItems = pst.executeUpdate();
				if(deleteItems > 0 ) {
					System.out.println("Number of rows have been deleted :" + deleteItems);      
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
	
	public void editOrder (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			Order order = new Order();
			ArrayList<Order> orderList = order.getOderList();
			
			String status []= request.getParameterValues("status");
			
			con = ConnectionFactory.getConnection();
			st = con.createStatement();
			for(int i=0; i< status.length; i++) {
				int orderId = orderList.get(i).getOrderId();
				pst = con.prepareStatement("Update Orders set status = ? where orderId = ?");
				pst.setString(1, status[i]);
				pst.setInt(2, orderId);
				System.out.println(pst);
				
				pst.executeUpdate();
			}
			RequestDispatcher rd=request.getRequestDispatcher("CSR_Order.jsp");  
			rd.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
