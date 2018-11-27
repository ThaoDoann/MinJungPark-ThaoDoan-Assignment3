<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

          <li><a href="Kid_Shoes.jsp">Kids Shoes</a></li>
          <li><a href="Contact.jsp">Contact</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="SignUp.jsp"><span class="glyphicon glyphicon-edit"></span> Sign Up</a></li>
          <li class="active"><a href="LogIn.jsp"><span class="glyphicon glyphicon-user"></span> Log In</a></li>
          <li><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart <span class="badge">5</span></a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="jumbotron">
      <form class="form-signin" action="LogInController" METHOD = "POST">
      	<%
      		String errorMessage = (String)session.getAttribute("errorMgs");
      		if (errorMessage != null){
      			out.println("<p style = 'color: red'> "+errorMessage+" </p>");
      		}
      	%>
      	
        <h2 class="form-signin-heading"><span class="glyphicon glyphicon-user"></span>Please log in</h2><br>
        <input type="text" class="form-control" placeholder="Please enter your user name" name="userName"  style="height:50px;margin-bottom:10px" required>
        <input type="password" class="form-control" placeholder="Please enter your password" name="password" style="height:50px;margin-bottom:10px" required>
        <div class="checkbox" style="text-align:center">
          <b>Log in as a</b>
          <input type="radio" name="userType" value="Customers"> Customer
          <input type="radio" name="userType" value="CSR"> CSR <br>
        </div>
        <button class="btn btn-lg btn-primary btn-block  " type="submit" name="action" value = "SignIn">LOG IN</button>
        <div style="text-align:center">
          Haven't gotten an account yet? <a href="SignUp.jsp"> Click here to create a new account!</a>
        </div>

        <br><br>
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
