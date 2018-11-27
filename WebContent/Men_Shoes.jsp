<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import  = "java.sql.*, Controller.ConnectionFactory, java.util.*, Model.Shoe" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>THAM</title>
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
      <button type="submit" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="Women_Shoes.jsp">Women Shoes</a></li>
        <li class="active"><a href="Men_Shoes.jsp">Men Shoes</a></li>

        <li><a href="Kid_Shoes.jsp">Kids Shoes</a></li>
        <li><a href="Contact.jsp">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="SignUp.jsp"><span class="glyphicon glyphicon-edit"></span> Sign Up</a></li>
        <li><a href="LogIn.jsp"><span class="glyphicon glyphicon-user"></span> Log In</a></li>
        <li><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart <span class="badge">5</span></a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- 
<form>
  <div class="container" >
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">adidas SAMBA OG</div>
          <div class="panel-body"><img src="images\Men_Shoes\01-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Sole: Rubber<br>
            Meterial: Leather<br>
            Price <b>$109.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="submit" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">B2</div>
          <div class="panel-body"><img src="images\Men_Shoes\02-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Sole: Rubber<br>
            Material: Leather<br>
            Price <b>$129.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="submit" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">LACOSTE FRAISIER-118</div>
          <div class="panel-body"><img src="images\Men_Shoes\03-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Sore: Rubber<br>
            Material: Rubber<br>
            Price <b>$55.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="button" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div><br>

  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">LACOSTE Explorateur</div>
          <div class="panel-body"><img src="images\Men_Shoes\04-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Meterial: Leather<br>
            Waterproof<br>
            Price <b>$174.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="button" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Pajar TITO</div>
          <div class="panel-body"><img src="images\Men_Shoes\05-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Lining: Faux Fur<br>
            Material: Nubuck<br>
            Price <b>$101.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="button" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-danger">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Sport Cuff WP 2.0</div>
          <div class="panel-body"><img src="images\Men_Shoes\06-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            lining: Fablic<br>
            Waterproof<br>
            Price <b>$126.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="button" class="btn btn-danger" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div><br><br>
</form>
-->

<% 
	Connection connection = ConnectionFactory.getConnection();
	ResultSet rs = null;
	Statement st = connection.createStatement();
	rs = st.executeQuery("Select * from Shoes Where category = 'Man shoes'");
	
	ArrayList<Shoe> manShoeList = new ArrayList<Shoe>();
	while(rs.next()){
		manShoeList.add(new Shoe (rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5)));
	}
	request.setAttribute("manShoeList", manShoeList);
%>

<form method = "POST" action ="ShoeController">
	<div class="container"  >
	<c:forEach var = "shoe"  items="${manShoeList}">
		<div class="col-sm-4">
	        <div class="panel panel-default">
	          <div class="panel-heading" style="text-align:center;font-weight: bold">${shoe.itemName}</div>
	          <div class="panel-body"><img src="images\Men_Shoes\01-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
	          <div class="panel-footer">
	            Sole: Rubber<br>
	            Meterial: Leather<br>
	            Price <b>$${shoe.price}</b><br><br>
	            <div class="container">
		            <select name = "WomanShoeSize">
						  <option value="" disabled selected>size</option>
						  <option value="6">6</option>
						  <option value="7">7</option>
						  <option value="8">8</option>
						  <option value="9">9</option>
						  <option value="10">10</option>
					  </select>
	              <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
	              <button type="submit" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
	            </div>
	          </div>
	       </div>
      </div>
    </c:forEach> 
	</div>
	
</form>



<footer class="container-fluid text-center">
  <p>Park, Min Jung  (991495289) & Doan, Ngoc Phuong Thao (991466176)</p>
  <p>Assignment 3 of PROG32758 Enterprise Java Development @ Sheridan College</p>

</footer>

</body>
</html>

