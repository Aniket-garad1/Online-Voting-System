<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>



 <nav >
  
   <a href="index.jsp">Home </a>
   <a href="aboutme.jsp">About me</a>
      <a href="contactme.jsp">Contact me</a>
       

</nav>
<body>

   <link rel="stylesheet" type="text/css"href="regestration.css">
   
   <div class="form-container">
       <form action="Register" method="post">
         
           Name:-<br>
           <input type="text"   name="name" placeholder="Enter your name"><br><br>
           
           Last Name :-<br>
           <input type="text"   name="last"placeholder="last name"><br><br>
           
           Voter card Number :-<br>
           <input type="text"   name="cardNumber"placeholder="3316513"><br><br>
           
      
           
            Address :-<br>
           <input type="text"   name="address"placeholder="native address"><br><br>
 
            Date of Birth :-<br>
           <input type="text"   name="dob"><br><br>
           
           Contact:-<br>
          <input type="text"  name="contact" placeholder="5451365131"><br><br>
          
           Email :-<br>
           <input type="text"   name="email"placeholder="contact@.com"><br><br>
            
            
             <button class="btn">Register</button><br><br>
             
              
            
        </form>
 
  </div>
</body>
</html>