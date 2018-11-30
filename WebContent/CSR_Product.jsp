<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import  = "java.sql.*, Controller.ConnectionFactory, java.util.*, Model.Order, Model.Shoe" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>THAM</title>
  <!-- https://www.getoutsideshoes.com/aigle-kids-woodypop-fun-unicorn-pink.html -->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }

    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
    }

    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

  <div class="jumbotron">
    <div class="container text-center">
      <h1>THAM Shoes Shop</h1>
      <p>Mission, Vission & Values</p>
    </div>
  </div>

  <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li class="active"><a href="CSR_Product.jsp">Product</a></li>
          <li><a href="CSR_Order.jsp">Order</a></li>
          <li><a href="CSR_Customer.jsp">Customer</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="CSR_EmployeeInfo.jsp"><span class="glyphicon glyphicon-edit"></span> Employee Info</a></li>
          <li><a href="CSR_SuccessfulLogOut.jsp"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
        </ul>
      </div>
    </div>
  </nav>

   <div class="container">
    <div class="jumbotron">

      <h2><span class="glyphicon glyphicon-tags"></span>  Product Information</h2>
      <div style="margin-bottom:13px; margin-top:13px">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit">
                <i class="glyphicon glyphicon-search"></i>
              </button>
            </div>
          </div>
      </div>
<% 
	Connection connection = ConnectionFactory.getConnection();
	ResultSet rs = null;
	PreparedStatement pst = null;
	
	//there are only 3 category
	String category [] = {"Kid", "Woman", "Man"};
	
	//create arrayList of each category
	ArrayList<Shoe>[] shoeList = new ArrayList[3];
	for(int j=0; j< category.length; j++){
		pst=connection.prepareStatement("Select * from Shoes Where category = ?");
		pst.setString(1, category[j]);
		rs = pst.executeQuery();
		
		shoeList[j] = new ArrayList<Shoe>();
		while(rs.next()){
				shoeList[j].add(new Shoe (rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), 
								rs.getDouble(5), rs.getInt(6), rs.getString(7), rs.getString(8)));
		}
	}
%>
      
      
      <form action= "ProductController" action = "POST"> 
      <% 	String denyMsg = request.getParameter("denyMsg");
      		if(denyMsg != null) {
      			out.println("<h3 style = 'color: red'>" + denyMsg + "</h3> ");
      		} %>
      <h3></h3>
  
      
     <%
     for(int j=0; j< category.length; j++ ){
    	 double totalPrice = 0;
    	 int totalQty =0;
     %>

       <div class="well" style="background-color:white">
        <p style="color:Grey"><b><%=category[j]%> Shoes</b></p>
        <table class="table table-hover" style="text-align:center">
          <thead>
            <tr>
              <th></th>
              <th style="text-align:center">Item Name</th>
              <th style="text-align:center">Size</th>
              <th style="text-align:center">Unit Price</th>
              <th style="text-align:center">Stock Qty</th>
            </tr>
          </thead>
          <tbody>
         <%for (int i= 0; i< shoeList[j].size(); i++){ 
        	 totalPrice += shoeList[j].get(i).getPrice()  ;
        	 totalQty += shoeList[j].get(i).getQuantity() ;
         %>
            <tr>
              <td><input type="checkbox" name = "product" value="<%=shoeList[j].get(i).getItemId()%>"></td>
              <td><%=shoeList[j].get(i).getItemName()%></td>
              <td><%=shoeList[j].get(i).getShoeSize()%></td>
              <td><%=shoeList[j].get(i).getPrice()%></td>
              <td><%=shoeList[j].get(i).getQuantity()%></td>
            </tr>
           <%
          } %>
            
          </tbody>
        </table>
        <hr style="border:solid 1px lightGray">
        <p style="text-align:right; margin-right:20px;font-size:16px;font-weight:bold">Total Price : $<%=String.format("%.2f",totalPrice)%> / Total Stock Qty: <%=totalQty %></p>
      </div>
      <% } %>
      

 
      
      <div style="text-align:center;">
        <button style="width:80px" class="btn btn-md btn-primary" type="submit" name="action" value ="addProduct">ADD  </button>  
        <button style="width:80px" class="btn btn-md btn-primary" type="submit" name="action" value ="editProduct">EDIT  </button>  
        <button style="width:80Px" class="btn btn-md btn-primary" type="submit" name="action" value ="deleteProduct">DELETE  </button>  
      </div>
     </form>
    </div>
    <br><br>
  </div>




<footer class="container-fluid text-center">
  <p>Park, Min Jung  (991495289) & Doan, Ngoc Phuong Thao (991466176)</p>
  <p>Assignment 3 of PROG32758 Enterprise Java Development @ Sheridan College</p>

</footer>

</body>
</html>
