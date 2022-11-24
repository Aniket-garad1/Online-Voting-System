

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()){
			String name=request.getParameter("name");
			String last=request.getParameter("last");
			String voter_card_number=request.getParameter("cardNumber");
			String address=request.getParameter("address");
			String dob=request.getParameter("dob");
			String contact=request.getParameter("contact");
			String email=request.getParameter("email");
			
			DatabaseManager db = new DatabaseManager();
			java.sql.Connection  con = db.getConnection();
			
	        PreparedStatement preparedStatement = con.prepareStatement("insert into voters (name,last,voter_card_number,address,dob,contact,email)values('"+name+"','"+last+"','"+voter_card_number+"','"+address+"','"+dob+"','"+contact+"','"+email+"')");
	        
	        preparedStatement.executeUpdate();
			  //out.println("registration success");
			  response.sendRedirect("votingmenu.jsp");
			
		}catch(SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

}
