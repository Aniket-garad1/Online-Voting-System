<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome please vote</title>

<link rel="stylesheet" type="text/css"href="votingmenu.css">
</head>
  <nav >
  
   <a href="index.jsp">Home </a>
   <a href="aboutme.jsp">About me</a>
      <a href="contactme.jsp">Contact me</a>
       

</nav>
<body>
   
    <form action="vote" method="post">
    
               <label>Card Number</label><br>
               <input  type="text" name="cardNumber"></input><br><br>
     
          <label><b>Choose Your Party</b></label><br><br>
          <select name="partie" id="parties">
          <option value="aap">AAP </option>
          <option value="bjp">BJP </option>
           <option value="congress">Congress </option>
           <option value="cpi">CPI </option>
                     <option value="bsp">BSP </option>
                               <option value="bjp">BJP </option>
          </select>
          <br><br>
          
          <button type="submit">Submit</button>
    
    </form>

</body>
</html>