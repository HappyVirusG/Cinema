package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/model/booking.do")
public class BookingController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookingDTO dto = new BookingDTO();
		dto.setMoviecode(req.getParameter("moviecode"));
		dto.setTimecode(req.getParameter("timecode"));
		dto.setPrice(req.getParameter("price"));
		dto.setSeatcode(req.getParameter("seatcode"));
		
		BookingDAO dao = new BookingDAO();
		int result = dao.insertBooking(dto);
		dao.close();
		
		if(result == 1) {
//			req.setAttribute("dto", dto);
//			req.getRequestDispatcher("../main/main.jsp").forward(req, resp);
			resp.sendRedirect("../main/main.jsp");
		}
	}
}
