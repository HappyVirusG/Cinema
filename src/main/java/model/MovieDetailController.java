package model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/model/movieDetail.do")
public class MovieDetailController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MovieDAO dao = new MovieDAO();
		ReviewDAO rdao = new ReviewDAO();
		Map<String, Object> map = new HashMap<String, Object>();

		String moviecode = req.getParameter("moviecode");
		MovieDTO dto = dao.selectView(moviecode);
		List<ReviewDTO> reviewLists = rdao.selectList(map, moviecode);
		int totalCount = rdao.reviewCount(map, moviecode);
		
		rdao.close();
		dao.close();
		
		req.setAttribute("dto", dto);
		
		req.setAttribute("reviewLists", reviewLists);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("map", map);
		
		req.getRequestDispatcher("/movie/movieDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/movie/movieDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReviewDTO dto = new ReviewDTO();
		System.out.println("왔냐?");
		dto.setContent(req.getParameter("content"));
		dto.setScore(req.getParameter("score"));
		System.out.println("어디보자");
		ReviewDAO dao = new ReviewDAO();
		int result = dao.insertReview(dto, req.getParameter("moviecode"));
		dao.close();
		
		if(result==1) {
			System.out.println("리뷰 작성 성공");
		}else {
			System.out.println("리뷰 작성 실패");
		}
	}

}
