package hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost:8080/hello
@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>		                   	   ");
		out.println("	<head>                         ");
		out.println("      <title>hello servlet</title>");
		out.println("	</head>                        ");
		out.println("	<body>                         ");
		out.println("		<h1>Hello Servlet<h1>      ");
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		out.print("<ul>                                ");
		out.print("<li> 아이디 : "+id                     );
		out.print("<li> 이메일 : "+email                  );
		out.print("<li> 비번 : "+pwd                     );
		out.print("</ul>"                               );
		out.println("	</body>                        ");
		out.println("</html>                           ");
	}
}
