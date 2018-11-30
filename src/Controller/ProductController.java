package Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;
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
//			RequestDispatcher rd=request.getRequestDispatcher("CSR_Product.jsp");  
//			rd.forward(request, response);
			System.out.println("ddddddddddd");
			session = request.getSession();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String action = request.getParameter("action");
			
			System.out.println("action = "+ action);
			if("addProduct".equals(action)) {
				addProduct(request, response);
			}else if ("editProduct".equals(action)) {
				editProduct(request, response);
			}else if ("deleteProduct".equals(action)) {
				deleteProduct(request, response);
			}else if ("addItem".equals(action)) {
				System.out.println("add product");
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public void addProduct (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			con = ConnectionFactory.getConnection();
			String itemName = request.getParameter("addItemName");
			String category = request.getParameter("addCategory");
			int shoeSize = Integer.parseInt(request.getParameter("addItemSize"));
			double price = Double.parseDouble(request.getParameter("addPrice"));
			int quantity = Integer.parseInt(request.getParameter("addQty"));
			String imgPath = request.getParameter("imagePath");
			System.out.println(imgPath);
			String description = request.getParameter("addDescription");
			
			pst = con.prepareStatement("insert into Shoes (itemName, category, shoeSize, price, quantity, image, description) "
					+ "values (?, ?, ?, ?, ?,?, ?)");
			pst.setString(1,itemName );
			pst.setString(2, category);
			pst.setInt(3, shoeSize);
			pst.setDouble(4, price);
			pst.setInt(5, quantity);
		//	pst.setString(6, "images/"+imgPath);
			pst.setString(6, "images/Women_Shoes/05-01.png");
			pst.setString(7, description);

			int newItem = pst.executeUpdate();

			RequestDispatcher rd=request.getRequestDispatcher("CSR_Product.jsp");  
			rd.forward(request, response);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}
	
	public void deleteProduct (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			
			con = ConnectionFactory.getConnection();
			String products [] = request.getParameterValues("product");
			if (products != null) {
				for (int i= 0; i< products.length; i++) {
					int itemId = Integer.parseInt(products[i]);
					System.out.println(productIsOrdered(itemId));
					if (productIsOrdered(itemId)) {
						System.out.println("can not delete");
						request.setAttribute("denyMsg", "Can not delete item(s)");
					}else {
						System.out.println("can delete");
						pst = con.prepareStatement("Delete from Shoes where itemId = ? ");
						pst.setInt(1, itemId);
						int deleteItems = pst.executeUpdate();
						if(deleteItems > 0 ) {
							System.out.println("Number of products have been deleted :" + deleteItems);      
						}
					}
				}
			}
			RequestDispatcher rd=request.getRequestDispatcher("CSR_Product.jsp");  
			rd.forward(request, response);			
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}
	
	public void editProduct (HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			con = ConnectionFactory.getConnection();
			String products [] = request.getParameterValues("product");
			if (products != null) {
				for (int i= 0; i< products.length; i++) {
					int itemId = Integer.parseInt(products[i]);
					System.out.println(productIsOrdered(itemId));
					if (productIsOrdered(itemId)) {
						System.out.println("can not delete");
						request.setAttribute("denyMsg", "Can not delete item(s)");
					}else {
						System.out.println("can delete");
						pst = con.prepareStatement("Delete from Shoes where itemId = ? ");
						pst.setInt(1, itemId);
						int deleteItems = pst.executeUpdate();
						if(deleteItems > 0 ) {
							System.out.println("Number of products have been deleted :" + deleteItems);      
						}
					}
				}
			}
			RequestDispatcher rd=request.getRequestDispatcher("CSR_Product.jsp");  
			rd.forward(request, response);			
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionFactory.closeConnection(con, pst, null);
		}
	}
	
	
	
	/*
	 * To check if the itemId is available in the Order table
	 */
	public boolean productIsOrdered (int itemId) throws Exception {
		boolean isOrdered= false;
		try {
			con = ConnectionFactory.getConnection();
			pst = con.prepareStatement("select COUNT(*) from orders where itemId = ?");
			pst.setInt(1, itemId);
			System.out.println(pst);
			int num = pst.executeUpdate();
			if (num != 0) {
				isOrdered = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isOrdered;
	}
	
//	public String getImagePath (HttpServletRequest request) throws Exception {
//		String fileName = null;
//		try {
//			Part filePart = request.getPart("ImgPath");
//			System.out.println("the file name :" + filePart);
//			fileName = extractFileName(filePart);
//			//String savePath = File.separator + fileName;
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
//		return fileName;
//	}
//	
//	public String extractFileName (Part part ) {
//		String contentDisp = part.getHeader("content-disposition");
//		String [] items = contentDisp.split(";");
//		for(String s: items) {
//			if(s.trim().startsWith("filename")) {
//				return s.substring(s.indexOf("*") + 2, s.length() -1);
//			}
//		}
//		return "";
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
