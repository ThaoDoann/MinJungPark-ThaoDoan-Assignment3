<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="CSS/style.css">
       
  
    </head>
    <body>
      <nav >
            <input class="SearchBox" type="text" placeholder="Search..">
      </nav>
      <h1 class="status">
      	 <%
			  String welcomeNewCst = (String)session.getAttribute("welcomeNewCst"); 
			  if (welcomeNewCst != null ){
			    out.println("<h2 style='color: Green'>"+ welcomeNewCst +"</h2>");
			  }
		 %>
	  </h1>
          
         <form class="SignInPage" action="Controller" METHOD = "POST">
              	<table>
              		<tr>
               			<td>Username </td>
               			<td><input type="text" placeholder="Enter Username" name="userName" required><br> </td>
              		 </tr>
					<tr>
						<td>Password </td>
               			<td>  <input type="password" placeholder="Enter Password" name="password" required> </td>
					 </tr>               
               	</table>             	
                Login as a...<br>
                 	
                <input type="radio" name="userType" value="Customers"> Customer<br>
				<input type="radio" name="userType" value="CSR"> CSR <br>
                 
                 
                <button class = "signIn" type="submit" name="action" value = "SignIn">Sign In</button>  
                <br>
                Haven't gotten an account yet? <a href= "RegistrationForm.jsp" >Register</a>
                 	
         </form>                                                                                                                                                                                                                                                 
          <footer >
            <a class = "socialMedia" href="#"><img src = "images/icons/facebook.jpg" alt= "facebook"></a>
            <a class = "socialMedia" href="#"><img src = "images/icons/instagram.jpg" alt= "Instagram"></a>
            <a class = "socialMedia" href="#"><img src = "images/icons/linkedin.jpg" alt= "LinkedIn"></a>
            <a class = "socialMedia" href="#"><img src = "images/icons/twitter.jpg" alt= "Twitter"></a>
            <a class = "socialMedia" href="#"><img src = "images/icons/youtube.jpg" alt= "youtube"></a>
          </footer>
     
    </body>
    
</html>