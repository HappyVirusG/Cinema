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

@WebServlet("/model/bookingList.do")
public class BookingListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookingDAO dao = new BookingDAO();
		BookingDTO dto = new BookingDTO();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String bookingcode = req.getParameter("bookingcode");
		
		System.out.println(bookingcode);
		
		if(bookingcode != null) {
			map.put("bookingcode", bookingcode);
		}
//		
		List<BookingDTO> lists = dao.selectBookingList(map);
		dao.close();
		
////		resp.sendRedirect("../model/bookingList.do");
		req.setAttribute("dto", dto);
		req.setAttribute("lists", lists);
		req.setAttribute("map", map);
		req.getRequestDispatcher("../booking/BookingList.jsp").forward(req, resp);
	}
}
