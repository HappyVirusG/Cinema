package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/mypage.do")
public class MyPageController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		HttpSession session = req.getSession();
		
		String membercode = session.getAttribute("membercode").toString();
		MemberDTO dto = dao.getMemberDTO(membercode);
		
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/member/myPage.jsp").forward(req, resp);
	}
}
