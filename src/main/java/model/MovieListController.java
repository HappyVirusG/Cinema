package model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.BoardPage;


public class MovieListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//DAO 생성
		MovieDAO dao = new MovieDAO();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String searchField = req.getParameter("searchField");
		String searchWord = req.getParameter("searchWord");
		
		if(searchWord != null) {
			map.put("searchField", searchField);
			map.put("searchWord", searchWord);
		}
		//DAO의 selectCount()메서드를 통해 게시물 개수 확인
		int totalCount = dao.movieCount(map);
		
		//페이지 처리
		//ServletContext : Servlet 간에 서로 값을 공유할 수 있도록 값(상태)를 저장하는 일종의 저장소
		ServletContext application = getServletContext();
		
		int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
		int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
		
		//현재 페이지 확인
		int pageNum = 1; //페이지의 기본값
		String pageTemp = req.getParameter("pageNum");
		if(pageTemp != null && !pageTemp.equals("")) {
			pageNum = Integer.parseInt(pageTemp); //요청받은 페이지로 변경
		}	
		//목록에 출력할 게시물 범위 계산
		int start = (pageNum-1)*pageSize+1; //첫 게시물 번호 
		int end = pageNum * pageSize; //마지막 게시물 번호
		map.put("start", start);
		map.put("end", end);
		//*** 페이지 처리 끝 ***
		
		//게시물 목록 받아오기
		List<MovieDTO> boardLists = dao.selectListPage(map);
		dao.close(); //db연결 종료
		
		String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../model2/list.do");
		
		map.put("pagingImg", pagingImg);
		map.put("totalCount", totalCount);
		map.put("pageSize", pageSize);
		map.put("pageNum", pageNum);
		
		//전달할 데이터를 list.jsp로 포워드
		req.setAttribute("boardLists", boardLists);
		req.setAttribute("map", map);
		req.getRequestDispatcher("/movie/movieList.jsp").forward(req, resp);
		
					
	}
}
