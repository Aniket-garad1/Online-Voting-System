<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title>
<link rel="stylesheet" type="text/css"href="admin.css">
</head>

  <nav >
  
   <a href="index.jsp">Home </a>
   <a href="aboutme.jsp">About me</a>
      <a href="contactme.jsp">Contact me</a>
       

</nav>
<body>

    <div class="form-container">
    <form action="adminLogin" method="post">
   <h2> Admin Login</h2><br>

    Name:-<br>
    <input type="text"name="adminName"placeholder="User name"><br><br>
    
    Password:-<br>
    <input type="password"name="password"placeholder="user password"><br><br>
    
     <button id="loginbutton" >Login</button><br><br>
     
      
    
    </div>
   
    </form>

</body>
</html>