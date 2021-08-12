package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;
import VO.MemberVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.login(id, pw);
		
		if(vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo_session", vo);
			
			System.out.println(vo.getMemCode());
			System.out.println(vo.getId());
			System.out.println(vo.getPw());
			System.out.println(vo.getGender());
			System.out.println(vo.getBirth());
			
			response.sendRedirect("index.jsp");

		} else {
			
			response.sendRedirect("index.jsp");
		}
		
		
	}

}
