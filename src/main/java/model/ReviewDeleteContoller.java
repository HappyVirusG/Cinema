package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.JSFunction;

@WebServlet("/model/reviewDelete.do")
public class ReviewDeleteContoller extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String moviecode = req.getParameter("moviecode");
		String idx = req.getParameter("idx");
			ReviewDAO dao = new ReviewDAO();
			ReviewDTO dto = dao.selectReview(idx);
		HttpSession session = req.getSession();
		System.out.println(session.getAttribute("membercode").toString());
		System.out.println(dto.getMembercode());
		if(session.getAttribute("membercode").toString().equals(dto.getMembercode())) {
			int result = dao.deleteReview(dto);
			dao.close();
			
			if(result==1) {
				//삭제-34. 삭제 완료 알림창 표시. 끝!
				JSFunction.alertLocation(resp, "삭제되었습니다.", "movieDetail.do?moviecode="+moviecode);
			}else {
				JSFunction.alertBack(resp, "삭제에 실패하였습니다.");
			}
		}else {
			JSFunction.alertBack(resp, "본인이 작성한 리뷰만 삭제 가능합니다!");

			}
		}
		
	}
	

