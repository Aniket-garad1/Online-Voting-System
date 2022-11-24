

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/adminLogin")
public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminLogin() {
        super();
       
    }



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String adminName = request.getParameter("adminName");
        String password = request.getParameter("password");
        
        DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
        
		try{
			
			PreparedStatement preparedStatement = con.prepareStatement("select * from Admin where adminName = '"+adminName+"' and adminPass = '"+password+"'");
			ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select * from Admin where adminName = '"+adminName+"' and adminPass = '"+password+"'");
			   
			if(rs.next())
			   {
				   HttpSession session=request.getSession();
				   session.setAttribute("adminname", adminName);
				   response.sendRedirect("welcome.jsp");
			     }
			   else  
			   {
//				   response.sendRedirect("wrong.jsp");
				   out.println("WRONG CREDENTIALS");
			   }
		   }
		   catch (Exception e) {
	             out.println(e.getMessage());
		   }

	
	}

}
