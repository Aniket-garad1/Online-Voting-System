

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VoterLogin")
public class VoterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
    public VoterLogin() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String CardNum =request.getParameter("CardNum");
		out.println(CardNum);
	}

}
