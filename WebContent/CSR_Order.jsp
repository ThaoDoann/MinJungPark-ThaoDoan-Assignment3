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
          <li><a href="CSR_Product.jsp">Product</a></li>
          <li class="active"><a href="CSR_Order.jsp">Order</a></li>
          <li><a href="CSR_Customer.jsp">Customer</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="CSR_EmployeeInfo.jsp"><span class="glyphicon glyphicon-edit"></span>  Employee Info</a></li>
          <li><a href="CSR_SuccessfulLogOut.jsp"><span class="glyphicon glyphicon-user"></span>  Log Out</a></li>
        </ul>
      </div>
    </div>
  </nav>

<!-- 
  <div class="container">
    <div class="jumbotron">
      <div>
        <h2><span class="glyphicon glyphicon-gift"></span>ㅤOrder Information</h2>
        <div style="margin-bottom:13px;margin-top:13px">
          <form>
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>



      <div class="well" style="background-color:white">
        <table class="table table-hover" style="text-align:center">
          <thead>
            <tr>
              <th></th>
              <th style="text-align:center">Order ID</th>
              <th style="text-align:center">Order Date</th>
              <th style="text-align:center">Customer ID</th>
              <th style="text-align:center">Item ID</th>
              <th style="text-align:center">Item Type</th>
              <th style="text-align:center">Quantity</th>
              <th style="text-align:center">Order Status</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>23123</td>
              <td>mmm-dd-yyyy</td>
              <td>88</td>
              <td>34234</td>
              <td>Women</td>
              <td>9</td>
              <td>
                <form>
                  <select class="form-control"  style="width:150px; height:30px;font-size:12px;margin:auto">
                    <option>Waiting</option>
                    <option>In Process</option>
                    <option>Delivery</option>
                  </select>
                </form>
              </td>
            </tr>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>23123</td>
              <td>mmm-dd-yyyy</td>
              <td>88</td>
              <td>34234</td>
              <td>Women</td>
              <td>9</td>
              <td>
                <form>
                  <select class="form-control"  style="width:150px; height:30px;font-size:12px;margin:auto">
                    <option>Customer Ordered</option>
                    <option>In Process</option>
                    <option>Delivered</option>
                    <option>Arrived</option>
                  </select>
                </form>
              </td>
            </tr>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>23123</td>
              <td>mmm-dd-yyyy</td>
              <td>88</td>
              <td>34234</td>
              <td>Women</td>
              <td>9</td>
              <td>
                <form>
                  <select class="form-control"  style="width:150px; height:30px;font-size:12px;margin:auto">
                    <option>Waiting</option>
                    <option>In Process</option>
                    <option>Delivery</option>
                  </select>
                </form>
              </td>
            </tr>
          </tbody>
        </table>
        <hr style="border:solid 1px lightGray">
        <p style="text-align:right; margin-right:20px;font-size:16px;font-weight:bold">Total Number of Order: 99<p>
      </div>

      <div style="text-align:center;">
        <button style="width:80px" class="btn btn-md btn-primary" type="submit" >SAVE</button>
      </div>
    </div>
    <br><br>
  </div>
  
  -->
    <div class="container">
    <div class="jumbotron">
      <div>
        <h2><span class="glyphicon glyphicon-gift"></span> Order Information</h2>
        <div style="margin-bottom:13px;margin-top:13px">
          <form>
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>


<% 
	Connection connection = ConnectionFactory.getConnection();
	ResultSet rs = null;
	PreparedStatement pst = null;
	Statement st = connection.createStatement();
	int totalOrder = 0;
	
	rs = st.executeQuery("Select * from Orders");
	double netPrice =0;
	ArrayList<Order> orderList = new ArrayList<Order>();
	while(rs.next()){
		orderList.add(new Order (rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getInt(5), rs.getString(6)));
	}
%>
	 <form method ="POST" action = "ShoppingController">
      <div class="well" style="background-color:white">
        <table class="table table-hover" style="text-align:center">
          <thead>
            <tr>
            <!--    <th></th> -->
              <th style="text-align:center">Order ID</th>
              <th style="text-align:center">Order Date</th>
              <th style="text-align:center">Customer ID</th>
              <th style="text-align:center">Item ID</th>
              <th style="text-align:center">Quantity</th>
              <th style="text-align:center">Order Status</th>
            </tr>
          </thead>
          <tbody>
            <% 
          for(int i =0; i < orderList.size(); i++  ){  
        	  String status = orderList.get(i).getStatus();
        	  totalOrder += orderList.get(i).getQuantity();
 				%>           
            <tr>
           <!-- <td> <input type="checkbox" name="order" value = <%=orderList.get(i).getOrderId()%> ></td> -->
              <!-- OrderId -->
              <td><%=orderList.get(i).getOrderId() %></td>
              <!-- Order Date -->
              <td><%=orderList.get(i).getOrderDate()%> </td>	
              <!-- Customer ID -->
              <td><%=orderList.get(i).getCustomerId()%> </td>      		
              <!-- Item ID -->
              <td><%=orderList.get(i).getItemId()%> </td>
              <!-- Quantity -->
              <td><%=orderList.get(i).getQuantity()%> </td>
              <!-- Order Status -->
              <td>
                  <select name = "status<%=orderList.get(i).getOrderId()%>"  class="form-control"  style="width:150px; height:30px;font-size:12px;margin:auto">
                    <% if(status.equals("Order-Place")){ %>
                    	<option value='Order-Place' selected>  Customer Ordered</option>
                    <% }else {%>
                    	<option value='Order-Place'>  Customer Ordered</option>
                    <%} if(status.equals("In-Process")){ %>
                    	<option value = "In-Process" selected> In Process</option>
                    <% }else {%>
                    	<option value = "In-Process"> In Process</option>
                    <%} if(status.equals("Delivered")){ %>
                    	<option value = "Delivered" selected>Delivered</option>
                    <% }else {%>
                    	<option value = "Delivered">Delivered</option>
                    <%} if(status.equals("Completed")){ %>
                   		<option value = "Completed" selected>Arrived</option>
                   	<% }else {%>
                   		<option value = "Completed">Arrived</option>
                   	<%}%>
                  </select>
        
              </td>
            </tr>
            <%} %>

          </tbody>
        </table>
        <hr style="border:solid 1px lightGray">
        <p style="text-align:right; margin-right:20px;font-size:16px;font-weight:bold">Total Number of Order: <%=totalOrder%> <p>
      </div>

      <div style="text-align:center;">
        <button style="width:80px" class="btn btn-md btn-primary" type="submit" name= "action" value="editOrder">SAVE</button>
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
