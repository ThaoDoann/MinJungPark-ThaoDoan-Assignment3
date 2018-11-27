package Controller;
import Controller.ConnectionFactory;
import Model.Customer;
import Model.Shoe;

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
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static HttpSession session ;
	static Connection con = null;
	PreparedStatement pst;
	static ResultSet rs = null;
	Statement st;
		
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
		
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	

	
	public void addProduct (HttpServletRequest request) throws Exception{
		try {
			con = ConnectionFactory.getConnection();
			
			String itemName = request.getParameter("regUser");
			String category = request.getParameter("regPassword");
			int shoeSize = Integer.parseInt(request.getParameter("fName"));
			double price = Double.parseDouble(request.getParameter("lName"));

			String addItemQuery = "Insert into Shoes (itemName, category, shoeSize, price) values (?, ?, ?, ?)";
			pst = con.prepareStatement(addItemQuery);
				pst.setString(1, itemName);   						
				pst.setString(2 , category);						
				pst.setInt   (3 , shoeSize);					
				pst.setDouble(4 , price);
			int addItems = pst.executeUpdate();
//			ResultSet rs = pst.getGeneratedKeys();
			
			if(addItems > 0 ) {
				//get the id of the last item that has been inserted
	            int id = 0;
	            if(rs.next()){
	                id = pst.getGeneratedKeys().getInt(1);
	                Shoe newShoe = new Shoe (id, itemName, category, shoeSize, price);
	            }
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
		doGet(request, response );
	}

}
