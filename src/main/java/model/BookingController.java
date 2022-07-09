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
		dto.setBookingcode(req.getParameter("bookingcode"));
		dto.setMoviecode(req.getParameter("moviecode"));
		dto.setTimecode(req.getParameter("timecode"));
		dto.setPrice(req.getParameter("price"));
		dto.setSeatcode(req.getParameter("seatcode"));
		
		BookingDAO dao = new BookingDAO();
		int result = dao.insertBooking(dto);
		dao.close();
		System.out.println("하이");
		
//		if(result == 1) {
//			req.setAttribute("dto", dto);
//			req.getRequestDispatcher("../booking/BookingList.jsp").forward(req, resp);
		
		if(result == 1) {
//			resp.sendRedirect("../model/bookingList.do"); //목록으로
			req.setAttribute("dto", dto);
			req.getRequestDispatcher("../model/bookingList.do").forward(req, resp);
		}
	}
}
