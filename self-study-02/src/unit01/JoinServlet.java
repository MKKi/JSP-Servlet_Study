package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html ; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		
		String name = request.getParameter("name");
		int code = Integer.parseInt(request.getParameter("code"));
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email")+"@"+request.getParameter("email3");
		String addr = request.getParameter("addr");
		String addr2 = request.getParameter("addr2");
		String phone = request.getParameter("phone");
		String job = request.getParameter("job");
		String favors[] = request.getParameterValues("favor");
		
		out.println("이름 : <b>");
		out.println(name);
		out.println("</b><br> 주민번호 : <b>");
		out.println(code);
		out.println("</b><br> 아이디 : <b>");
		out.println(id);
		out.println("</b><br> 비밀번호 : <b>");
		out.println(pwd);
		out.println("</b><br> 이메일 : <b>");
		out.println(email);
		out.println("</b><br> 주소  : <b>");
		out.println(addr+" "+addr2);
		out.println("</b><br> 핸드폰 번호 : <b>");
		out.println(phone);
		out.println("</b><br> 직업 : <b>");
		out.println(job);
		out.println("</b><br> 관심분야 : <b>");
		for(String favor : favors) {
			out.println(favor+" ");
		}
		
		out.println("</b><br><br><a href='javascript:history.go(-1)'> 다시 </a>");
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
