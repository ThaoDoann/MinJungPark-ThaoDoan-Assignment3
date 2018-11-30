<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html
    IMPORT ="Model.Shoe">
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
          <li><a href="CSR_Product.html">Product</a></li>
          <li><a href="CSR_Order.html">Order</a></li>
          <li ><a href="CSR_Customer.html">Customer</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="CSR_EmployeeInfo.html"><span class="glyphicon glyphicon-edit"></span> Employee Info</a></li>
          <li><a href="CSR_SuccessfulLogOut.html"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
        </ul>
      </div>
    </div>
  </nav>

<form action = "testController" method ="POST">
  <div class="container" >
    <div class="jumbotron">
        <h2 class="form-signin-heading"><span class="glyphicon glyphicon-pencil">    </span>   New Item</h2><br>
        <h5>Please fill the new shoe information.</h5>
        <!-- itemName -->
        <div class="input-group" style="margin-bottom:6px">
          <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
          <input type="text"  name="addItemName" class="form-control"  placeholder="Item Name" required><br>
        </div>
        <!-- category -->
        <div class="input-group" style="margin-bottom:6px">
          <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
          <select id="category" class="form-control"  name="addCategory" required>
			  <option value="" disabled >Category</option>
			  <option value="Kid">Kid</option>
			  <option value="Woman">Woman</option>
			  <option value="Man">Man</option>
		  </select><br>
        </div>
        <!-- size -->
        <div class="input-group" style="margin-bottom:6px; width:33%; float:left">
          <span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
          <input type="number"  name="addItemSize" class="form-control" placeholder="Size" required>
        </div>
        <!-- price -->
        <div class="input-group" style="margin-bottom:6px; width:33%; float:right">
          <span class="input-group-addon"><i class="glyphicon glyphicon-text-background"></i></span>
          <input type="number"  name="addPrice" class="form-control"  placeholder="Price" required><br>
        </div>
        <!-- quantity -->
        <div class="input-group" style="margin-bottom:6px; width:33%;">
          <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
          <input type="number"  name="addwQty" class="form-control" placeholder="Quantity" required><br>
        </div>
        <!-- description -->
        <div class="input-group" style="margin-bottom:6px;  float:left">
          <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
          <input type="text"  name="addDescription" class="form-control"  placeholder="Description" required><br>
  
        </div><br><br>
        
        <div class="panel-body" style="text-align:center;" >
        	<img id = "imageFile" src="images/No_Image/no-image.png" class="img-responsive" style="height:180pt;margin:auto" alt="Image" name ="addImage" ><br>
        	<input  id ="myFile" style=" margin:auto" type="file" accept="image/png, image/jpeg" name ="imagePath" value = "" onchange="myFunction()" >
        </div>
        
        <br><br>
         <div style="text-align:center;"> 
         	<input class="btn btn-md btn-primary" type="submit" name="action" value="ADD"  style="width:140px" >
         	<button class="btn btn-md btn-primary" type="submit" name="action" value="addProduct"  style="width:140px">ADD</button>
         	<button class="btn btn-md btn-primary" type="button" onclick="window.location='CSR_Product.jsp'" style="width:140px">CANCEL</button>
        </div>
      
    </div>
  </div>

  </form>
<script>
function myFunction() {
        var x = document.getElementById("myFile").value;
        x = x.replace(/.*[\/\\]/, '');
        var category = document.getElementById("category").value;
    	if(category === "Kid"){
        	category = "images/Kid_Shoes";
        } else if (category === "Woman"){
        	category = "images/Women_Shoes";
        }else if (category === "Man"){
        	category = "images/Men_Shoes";
        }

        document.getElementById("imageFile").src =  category+"/"+x;
        document.getElementById("myFile").setAttribute("value", (category+"/"+x));
}
</script>

<footer class="container-fluid text-center">
  <p>Park, Min Jung  (991495289) & Doan, Ngoc Phuong Thao (991466176)</p>
  <p>Assignment 3 of PROG32758 Enterprise Java Development @ Sheridan College</p>

</footer>

</body>
</html>
