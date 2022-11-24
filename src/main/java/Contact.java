

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
		
		
		String name= request.getParameter("name");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String message= request.getParameter("message");
		
		try {
			PreparedStatement preparedStatement = con.prepareStatement("insert into contact(name,phone,email,message)values('"+name+"','"+phone+"','"+email+"','"+message+"')");                                     
			preparedStatement.executeUpdate();
			response.sendRedirect("index.jsp");
		}catch(Exception e){
			e.printStackTrace();
			
			
		}
		
	}

}
