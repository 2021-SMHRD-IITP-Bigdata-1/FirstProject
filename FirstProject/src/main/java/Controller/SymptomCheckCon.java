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
import VO.PickVO;

@WebServlet("/SymptomCheckCon")
public class SymptomCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String[] symptoms = request.getParameterValues("symptom");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("vo_session");
		
		// �ܼ�â�� �����Ѱ͵� ���
		for(int i = 0; i < symptoms.length; i++) {
			System.out.println(symptoms[i]);
		}
		
		System.out.println(vo.getMemCode());
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.selectSymptom(symptoms, vo.getMemCode());
		
		if(cnt > 0) {
			// ������ symptoms���� MEMBER_PICK�� INSERT ���� ��,
			System.out.println("������ symptoms insert ����!");
			
			response.sendRedirect("info_result.jsp");
		} else {
			System.out.println("insert ���� �Ф�");
		}
		
		
		
		
	}

}