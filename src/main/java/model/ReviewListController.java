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

@WebServlet("/model/review.do")
public class ReviewListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReviewDAO rdao = new ReviewDAO();
		Map<String, Object> map = new HashMap<String, Object>();
		
		int totalCount = rdao.reviewCount(map);
		
		String moviecode = req.getParameter("moviecode");
		System.out.println("moviecode>>>>>>>"+moviecode);
		List<ReviewDTO> reviewLists = rdao.selectList(map, moviecode);
		rdao.close();

		req.setAttribute("reviewLists", reviewLists);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("map", map);
		req.getRequestDispatcher("/movie/review.jsp").forward(req, resp);
	}
}
