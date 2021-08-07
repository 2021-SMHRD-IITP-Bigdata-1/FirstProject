package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwcheck = request.getParameter("pwcheck");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(id, pw, pwcheck, gender, birth);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공!");
			response.sendRedirect("index.jsp");
		} else {
			System.out.println("회원가입 실패ㅠㅠㅠ");
			response.sendRedirect("LoginJoin.jsp");
		}
		
	}

}
