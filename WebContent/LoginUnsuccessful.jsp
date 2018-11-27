<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login Unsuccessful</title>
	<link rel="stylesheet" href="CSS/style.css">
	       
</head>
<body>
  	<nav >
   	  <input class="SearchBox" type="text" placeholder="Search..">          
  	</nav>     
    <h1 class="logo">
        <span >THE TUKKI</span>
    </h1>
    <form class= "UnsuccessBox" action = "HomePage.jsp" method = "POST">
    	<h1>Wrong username or password </h1>
    	
    	<h3>Please try again</h3>
    	<button type="submit">Login again</button>
    </form>
</body>
</html>