package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;
import VO.ProductVO;

@WebServlet("/ComparisonCon")
public class ComparisonCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr"); 

		String nutName = URLDecoder.decode(request.getParameter("nut"),"euc-kr");

		

		
		
		//String nutName = request.getParameter("nut");
		System.out.println("가나다"+nutName);
		
		MemberDAO dao = new MemberDAO();
		
		ArrayList<ProductVO> array = dao.selectAll();
		
//		String nutCode = dao.selectNutCode(nutName);
//
//		// 클릭한 영양소의 제품 ArrayList 획득
//		ArrayList<ProductVO> array = dao.selectProduct(nutCode);
//
//		request.setAttribute("array", array);
		
		
		PrintWriter out = response.getWriter();
		
		if(array != null) {
			out.print(true);
			
			for(int i = 0; i < array.size(); i++) {
				System.out.println(array.get(i).getPdtName());
				System.out.println(array.get(i).getPdtCode());
			}
			
		} 
		
		
		
	}

}
