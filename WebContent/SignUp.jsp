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
          <li class="active"><a href="SignUp.jsp"><span class="glyphicon glyphicon-edit"></span> Sign Up</a></li>
          <li><a href="LogIn.jsp"><span class="glyphicon glyphicon-user"></span> Log In</a></li>
          <li><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart <span class="badge">5</span></a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container" >
    <div class="jumbotron">
      <form class="form-signin" action="Controller" Method= "POST">
        <h2 class="form-signin-heading"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;Customer Registration</h2><br>
        <h5>Please fill in this form to create an account.</h5>
        <!-- username -->
        <div class="input-group" style="margin-bottom:6px">
          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
          <input type="text" class="form-control" name="regUser" placeholder="User Name" required><br>
        </div>
        <!-- password -->
        <div class="input-group" style="margin-bottom:6px">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
          <input type="password" class="form-control" name="regPassword" placeholder="Password" required><br>
        </div>
        <!-- first name -->
        <div class="input-group" style="margin-bottom:6px; width:49.5%; float:left">
          <span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
          <input type="text" class="form-control" name="fName" placeholder="First Name" required>
        </div>
        <!-- last name -->
        <div class="input-group" style="margin-bottom:6px; width:49.5%; float:right">
          <span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
          <input type="text" class="form-control" name="lName" placeholder="Last Name" required><br>
        </div>
        <!-- address -->
        <div class="input-group" style="margin-bottom:6px">
          <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
          <input type="text" class="form-control" name="address" placeholder="Address" required><br>
        </div>
        <!-- city -->
        <div class="input-group" style="margin-bottom:6px; width:49.5%; float:left">
          <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
          <input type="text" class="form-control" name="city" placeholder="City" required><br>
        </div>
        <!-- postal code -->
        <div class="input-group" style="margin-bottom:6px; width:49.5%; float:right">
          <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
          <input type="text" class="form-control" name="postalCode" placeholder="Postal Code" required><br>
        </div>
        <br><br><br><br>
        <div style="text-align:center">
          By creating an account you agree to our <a href="https://policies.google.com/terms?hl=en&gl=ZZ">Terms & Privacy</a>.<br><br>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" name="action" value = "SignUp">SIGN UP</button>
        <div style="text-align:center">
          Already have an account? <a href="SignUp.jsp"> Click here to sign in!</a>
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

