package model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/model/bookingList.do")
public class BookingListController extends HttpServlet{
	 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookingDAO dao = new BookingDAO();
		BookingDTO dto = new BookingDTO();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("UserId");
		
		if(id != null) {
			map.put("id", id);
		}
		
//		String bookingcode = req.getParameter("bookingcode");
//
//		if(bookingcode != null) {
//			map.put("bookingcode", bookingcode);
//		}
		
		List<BookingDTO> lists = dao.selectBookingList(map);
		dao.close();
		
		req.setAttribute("dto", dto);
		req.setAttribute("lists", lists);
		req.setAttribute("map", map);
		req.getRequestDispatcher("../booking/BookingList.jsp").forward(req, resp);
		req.getRequestDispatcher("../booking/exList.jsp").forward(req, resp);
	
	}
}
