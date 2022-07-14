package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import member.MemberDAO;
import member.MemberDTO;
import utils.JSFunction;

@WebServlet("/model/reviewWrite.do")
public class ReviewWriteContoller extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
		ReviewDAO rdao = new ReviewDAO();
		ReviewDTO rdto = new ReviewDTO();
		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		
		String moviecode = req.getParameter("moviecode");
		String membercode = session.getAttribute("membercode").toString();
		
		int mresult = rdao.multipleReview(moviecode, membercode);
		if(mresult==1) {
			JSFunction.alertBack(resp, "리뷰를 중복해서 작성할 수 없습니다.");
		}else {
			rdto.setContent(req.getParameter("content"));
			rdto.setMembercode(membercode);
			rdto.setScore(req.getParameter("score"));
			
			int result = rdao.insertReview(rdto, req.getParameter("moviecode"));
			
			if(result==1) {
				System.out.println("리뷰 작성 성공");
				resp.sendRedirect("movieDetail.do?moviecode="+moviecode);
			}else {
				System.out.println("리뷰 작성 실패");
				resp.sendRedirect("movieDetail.do?moviecode="+moviecode);
			}
		}
		
		rdao.close();
		
	}
	
}
