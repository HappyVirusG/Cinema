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
			
			//삭제-25. 게시물을 삭제
			int result = dao.deleteReview(dto);
			dao.close();
			
			if(result==1) {
				//삭제-34. 삭제 완료 알림창 표시. 끝!
				JSFunction.alertLocation(resp, "삭제되었습니다.", "movieDetail.do?moviecode="+moviecode);
			}else {
				JSFunction.alertBack(resp, "삭제에 실패하였습니다.");
			}
		}
	}
	

