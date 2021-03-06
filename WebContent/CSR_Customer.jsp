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
          <li><a href="CSR_Product.jsp">Product</a></li>
          <li><a href="CSR_Order.jsp">Order</a></li>
          <li class="active"><a href="CSR_Customer.jsp">Customer</a></li>
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

      <h2><span class="glyphicon glyphicon-user"></span>ㅤCustomer Information</h2>
      <div style="margin-bottom:13px; margin-top:13px">
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
      <div class="well" style="background-color:white">
        <table class="table table-hover" style="text-align:center">
          <thead>
            <tr>
              <th></th>
              <th style="text-align:center">Customer ID</th>
              <th style="text-align:center">First Name</th>
              <th style="text-align:center">Last Name</th>
              <th style="text-align:center">Address</th>
              <th style="text-align:center">City</th>
              <th style="text-align:center">Postal Code</th>
              <th style="text-align:center">User Name</th>
              <th style="text-align:center">Password</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>12323</td>
              <td>Thao</td>
              <td>Evan</td>
              <td>99 Finch St. East</td>
              <td>North York</td>
              <td>M2R 1O3</td>
              <td>user123</td>
              <td>pw123</td>
            </tr>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>12323</td>
              <td>Thao</td>
              <td>Evan</td>
              <td>99 Finch St. East</td>
              <td>North York</td>
              <td>M2R 1O3</td>
              <td>user123</td>
              <td>pw123</td>
            </tr>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>12323</td>
              <td>Thao</td>
              <td>Evan</td>
              <td>99 Finch St. East</td>
              <td>North York</td>
              <td>M2R 1O3</td>
              <td>user123</td>
              <td>pw123</td>
            </tr>
            <tr>
              <td>
                <form>
                  <input type="checkbox">
                </form>
              </td>
              <td>12323</td>
              <td>Thao</td>
              <td>Evan</td>
              <td>99 Finch St. East</td>
              <td>North York</td>
              <td>M2R 1O3</td>
              <td>user123</td>
              <td>pw123</td>
            </tr>
          </tbody>
        </table>
        <hr style="border:solid 1px lightGray">
        <p style="text-align:right; margin-right:20px;font-size:16px;font-weight:bold">Total Number of Customers: 99</p>
      </div>

      <div style="text-align:center;">
        <button style="width:80px" class="btn btn-md btn-primary" type="submit" >EDIT</button>ㅤ
        <button style="width:80Px" class="btn btn-md btn-primary" type="submit">DELETE</button>
      </div>
    </div>
    <br><br>
  </div>




<footer class="container-fluid text-center">
  <p>Park, Min Jung  (991495289) & Doan, Ngoc Phuong Thao (991466176)</p>
  <p>Assignment 3 of PROG32758 Enterprise Java Development @ Sheridan College</p>

</footer>

</body>
</html>
