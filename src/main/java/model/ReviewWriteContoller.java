package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/model/reviewWrite.do")
public class ReviewWriteContoller extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReviewDAO rdao = new ReviewDAO();
		ReviewDTO rdto = new ReviewDTO();

		String content = req.getParameter("content");
		
		req.setCharacterEncoding("UTF-8");
		
		rdto.setContent(req.getParameter("content"));
		rdto.setScore(req.getParameter("score"));
		
		int result = rdao.insertReview(rdto, req.getParameter("moviecode"));
		
		String moviecode = req.getParameter("moviecode");
		
		if(result==1) {
			System.out.println("리뷰 작성 성공");
			resp.sendRedirect("movieDetail.do?moviecode="+moviecode);
		}else {
			System.out.println("리뷰 작성 실패");
			resp.sendRedirect("movieDetail.do?moviecode="+moviecode);
		}
		
		rdao.close();
		
	}
	
}
