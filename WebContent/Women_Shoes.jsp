
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
        <li  class="active"><a href="Women_Shoes.jsp">Women Shoes</a></li>
        <li><a href="Men_Shoes.jsp">Men Shoes</a></li>

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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Friend in Fashion Bon Voyage</div>
          <div class="panel-body"><img src="images\Women_Shoes\01-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 10mm/ 0.4 inch<br>
            Italian blush pink suede<br>
            Price <b>$113.00</b><br><br>
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
        <div class="panel panel-danger">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Gaia Block Pump Black</div>
          <div class="panel-body"><img src=".\images\Women_Shoes\02-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 95mm<br>
            Italian soft suede and black leather<br>
            Price <b>$120.00</b><br><br>
            <div class="container">
          
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
 
              <button type="submit" class="btn btn-danger" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Emma Suede Sandal Beige</div>
          <div class="panel-body"><img src=".\images\Women_Shoes\03-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 85mm<br>
            Italian soft beige suede<br>
            Price <b>$218.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="submit" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Chiara, Gold Leopard Snearkers</div>
          <div class="panel-body"><img src=".\images\Women_Shoes\04-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 4mm<br>
            Quality rubber sole, Zip up<br>
            Price <b>$88.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="submit" name = "action" value ="" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-heading" style="text-align:center;font-weight: bold">Claudia, Rosa Suede Ballet Flats</div>
          <div class="panel-body"><img src=".\images\Women_Shoes\05-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 5mm/ 0.25 inch<br>
            Suede leather<br>
            Price <b>$99.00</b><br><br>
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
          <div class="panel-heading" style="text-align:center;font-weight: bold">Greta Lace Pump Black Patent</div>
          <div class="panel-body"><img src=".\images\Women_Shoes\06-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
          <div class="panel-footer">
            Heel measures: 85mm<br>
            Italian black patent leather and suede<br>
            Price <b>$199.00</b><br><br>
            <div class="container">
              <form>
                  <input type="number" class="form-control" min="1" max="10" step="1" style="max-width: 120px; height:34px; float:left">
              </form>
              <button type="submit" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </form><br><br> -->
 
<% 
	Connection connection = ConnectionFactory.getConnection();
	ResultSet rs = null;
	Statement st = connection.createStatement();
	rs = st.executeQuery("Select * from Shoes Where category = 'Woman shoes'");
	
	ArrayList<Shoe> womanShoeList = new ArrayList<Shoe>();
	while(rs.next()){
		womanShoeList.add(new Shoe (rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5)));
	}
	request.setAttribute("womanShoeList", womanShoeList);
%>
 
 <form method = "POST" action = "ShoeController">
	 <div class="container" >
		<c:forEach var = "shoe"  items="${womanShoeList}">
		<div class="col-sm-4">
	        <div class="panel panel-default">
	          <div class="panel-heading" style="text-align:center;font-weight: bold">${shoe.itemName} ${shoe.itemId}</div>
	          <div class="panel-body"><img src=".\images\Women_Shoes\01-01.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image"></div>
	          <div class="panel-footer">
	            Heel measures: 10mm/ 0.4 inch<br>
	            Italian blush pink suede<br>
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
	              <button type="submit" name ="action" value= "123" class="btn btn-default" style="margin-left:10px" >Add to Cart</button>
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
