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

}
