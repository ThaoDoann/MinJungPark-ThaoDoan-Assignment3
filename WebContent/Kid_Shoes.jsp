<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import  = "java.sql.*, Controller.ConnectionFactory, java.util.*, Model.Shoe" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        <li><a href="Home.jsp">Home</a></li>
        <li><a href="Women_Shoes.jsp">Women Shoes</a></li>
        <li><a href="Men_Shoes.jsp">Men Shoes</a></li>

        <li class="active"><a href="Kid_Shoes.jsp">Kids Shoes</a></li>
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
  <div class="container" >
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Native Toddler's Charley Sandal</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\01-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Sole: Rubber<br>
            Velcro<br>
            Price <b>$19.00</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Aigle Kids Woodypop Fun</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\02-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Natural rubber upper<br>
            Hand made<br>
            Price <b>$85.00</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Native Kid's Jimmy 3.0</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\03-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Nubuck PU Upper<br>
            Reflective Liner<br>
            Price <b>$89.00</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Vans Toddler Slip-On Bunny</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\04-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Made with bunny ears details<br>
            Suede uppers<br>
            Price <b>$34.99</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Padraig Baby Slipper in Cream Stripe</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\05-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            pure wool<br>
            hand dyed and crocheted <br>
            Price <b>$49.00</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Vans x Marvel Toddler's Authentic</div>
          <div class="panel-body"><img src=".\images\Kid_Shoes\06-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Sole: Vulcanized Rubber<br>
            Fastening: Lace-up<br>
            Price <b>$34.00</b><br><br>
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
  </div><br><br>
  -->
  
  <% 
	Connection connection = ConnectionFactory.getConnection();
	ResultSet rs = null;
	Statement st = connection.createStatement();
	rs = st.executeQuery("Select * from Shoes Where category = 'Kid'");
	
	ArrayList<Shoe> kidShoeList = new ArrayList<Shoe>();
	while(rs.next()){
		kidShoeList.add(new Shoe (rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), 
				rs.getDouble(5), rs.getInt(6), rs.getString(7), rs.getString(8)));
	}
	request.setAttribute("kidShoeList", kidShoeList);
  %>
  <form method = "POST" action ="ShoeController">
  	 <div class="container" >
  	 
		<c:forEach var = "shoe"  items="${kidShoeList}">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">${shoe.itemName}</div>
          <div class="panel-body"><img src='${shoe.image}' class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            <div class = "itemDescription">
	            ${shoe.description}
	        </div>
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
              <button type="button" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
        </div></c:forEach>
      </div>
  
  </form>
  

<footer class="container-fluid text-center">
  <p>Park, Min Jung  (991495289) & Doan, Ngoc Phuong Thao (991466176)</p>
  <p>Assignment 3 of PROG32758 Enterprise Java Development @ Sheridan College</p>

</footer>

</body>
</html>
