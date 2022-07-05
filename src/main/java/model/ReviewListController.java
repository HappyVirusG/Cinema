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

public class ReviewListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReviewDAO dao = new ReviewDAO();
		Map<String, Object> map = new HashMap<String, Object>();
		
		String searchWord = req.getParameter("searchWord");
	
		if(searchWord != null) {
			map.put("searchWord", searchWord);
		}
		int totalCount = dao.reviewCount(map);
		
		List<ReviewDTO> reviewLists = dao.selectList(map);
		dao.close();
		
		req.setAttribute("reviewLists", reviewLists);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("map", map);
		req.getRequestDispatcher("/movie/movieDetail.jsp").forward(req, resp);
	}
}
