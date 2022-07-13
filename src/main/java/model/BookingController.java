package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/model/booking.do")
public class BookingController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("UserId");
		String membercode = (String)session.getAttribute("membercode");
		System.out.println(membercode);
		BookingDTO dto = new BookingDTO();
		
		dto.setTitle(req.getParameter("title"));
		dto.setMembercode((String)session.getAttribute("membercode"));
		dto.setTheatercode(req.getParameter("theatercode"));
		dto.setTimecode(req.getParameter("timecode"));
		dto.setPrice(req.getParameter("price"));
		dto.setSeatcode(req.getParameter("seatcode"));
		dto.setRatingcode(req.getParameter("ratingcode"));
		dto.setDatecode(req.getParameter("datecode"));
		
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
