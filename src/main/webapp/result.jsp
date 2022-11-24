<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import= "java.sql.DriverManager"%>
<%@page import= "java.sql.ResultSet"%>
<%@page import= "java.sql.Statement"%> 
<%@page import=  "java.sql.Connection"%>
<%@page import= "java.sql.PreparedStatement"%>

<%

String a[]=new String[100];
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingDB","root","root");
PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie)as c from vote group by partie");
ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select partie,count(partie)as c from vote group by partie");



int i=0;
while(rs.next()){
	a[i]=rs.getString("c");
	i++;
}

%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="result.css">
</head>

<nav>

 <a href="index.jsp">Logout</a>
 
</nav>
<body>

<div class="tableStyle">
<table>
  
  <thead>
   <tr>
      <td><h2>Symbol</h2></td>
       <td><h2>Name</h2></td>
        <td><h2>Votes</h2></td>
   </tr>
  </thead>
   
    <tr>
    
    <td ><img alt="" src="images/Aap.jpg"></td>
    <td>Aam Aadmi Party</td>
    <td><%=a[0]%></td>
    
    </tr>

       
      <tr>
    
    <td ><img alt="" src="images/bjp.jpg"></td>
    <td>BJP</td>
    <td><%=a[1]%></td>
    
    </tr> 
    
    
     <tr>
    
    <td ><img alt="" src="images/bsp.jpg"></td>
    <td>BSP</td>
    <td><%=a[2]%></td>
    
    </tr>
    
     
      <tr>
    
    <td ><img alt="" src="images/congress.png"></td>
    <td>Congress</td>
    <td><%=a[3]%></td>
    
    </tr>
    
    
    
     <tr>
    
    <td id=img><img alt="" src="images/CPI-banner.jpeg"></td>
    <td>CPI</td>
    <td><%=a[4]%></td>
    
    </tr>
    
    

</table>
</div>


</body>
</html>