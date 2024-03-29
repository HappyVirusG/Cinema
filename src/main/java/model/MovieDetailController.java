package model;

import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberDTO;

@WebServlet("/model/movieDetail.do")
public class MovieDetailController extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MovieDAO dao = new MovieDAO();
		ReviewDAO rdao = new ReviewDAO();
		MemberDAO mdao = new MemberDAO();
		Map<String, Object> map = new HashMap<String, Object>();

		String moviecode = req.getParameter("moviecode");
		MovieDTO dto = dao.selectView(moviecode);
		List<ReviewDTO> reviewLists = rdao.selectList(map, moviecode);
		int totalCount = rdao.reviewCount(map, moviecode);
		
		String [] membercodes;
		membercodes = new String[reviewLists.size()];
		String [] memIds;
		memIds = new String[reviewLists.size()];
		List<MemberDTO> memberLists = new LinkedList<MemberDTO>();
		for(int i=0; i<reviewLists.size(); i++) {
			membercodes[i] = reviewLists.get(i).getMembercode();
			memberLists.add(mdao.getMemberDTO(membercodes[i]));
		}
		
		req.setAttribute("dto", dto);
		req.setAttribute("reviewLists", reviewLists);
		req.setAttribute("memberLists", memberLists);
		req.setAttribute("totalCount", totalCount);
		req.setAttribute("map", map);
		
		req.getRequestDispatcher("/movie/movieDetail.jsp").forward(req, resp);
			
		dao.close();
		rdao.close();
		
	}
	
}
