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

@WebServlet("/model/BookingList.do")
public class BookingListController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookingDAO dao = new BookingDAO();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String moviecode = req.getParameter("moviecode");
		
		if(moviecode != null) {
			map.put("moviecode", moviecode);
		}
		
		List<BookingDTO> lists = dao.selectBookingList(map);
		dao.close();
		
		req.setAttribute("lists", lists);
		req.setAttribute("map", map);
		req.getRequestDispatcher("/booking/bookingList.jsp").forward(req, resp);
	}
}
