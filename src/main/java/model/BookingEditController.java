package model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.JSFunction;

@WebServlet("/model/bookingEdit.do")
public class BookingEditController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String mode = req.getParameter("mode");
		String bookingcode = (req.getParameter("bookingcode"));
		
		BookingDAO dao = new BookingDAO();
		boolean confirmed = dao.confirmBooking(bookingcode);
		
		if(confirmed) {
			if(mode.equals("delete")) {
				int result = dao.deleteBooking(bookingcode);
				dao.close();
				if(result == 1)
					JSFunction.alertLocation(resp, "삭제되었습니다.", "../model/bookingList.do");
			}
		} else {		
			JSFunction.alertBack(resp, "해당 예매번호에 해당하는 예매정보가 없습니.");
		}
		
	}
}
