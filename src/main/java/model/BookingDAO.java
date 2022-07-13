package model;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.DBConnPool;
import common.JDBConnect;

public class BookingDAO extends JDBConnect{
	
	public BookingDAO() {
		super();
	}
	
	public List<BookingDTO> selectBookingList(Map<String, Object> map) {
		
		List<BookingDTO> list = new Vector<BookingDTO>();
		
		String query = "SELECT * FROM BOOKING ";
				
		if(map.get("id") != null) {
			query += " WHERE id "
					+ "LIKE '%" + map.get("id") + "%'";
		}

		query +=  "ORDER BY bookingcode DESC";
		
		try {
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BookingDTO dto =new BookingDTO();
				
				dto.setBookingcode(rs.getString(1));
				dto.setTitle(rs.getString(2));
//				dto.setMembercode(rs.getString(3));
				dto.setTheatercode(rs.getString(5));
				dto.setTimecode(rs.getString(6));
				dto.setPrice(rs.getString(7));
				dto.setSeatcode(rs.getString(8));
				dto.setRatingcode(rs.getString(9));
				
				
				
				list.add(dto);
			}
		} catch(Exception e) {
			System.out.println("예매 목록 불러오는 중 예외 발생");
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int insertBooking(BookingDTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO booking ( "
					+ " bookingcode, title, id, membercode, theatercode, timecode, price, seatcode, ratingcode) "
							+ " VALUES(concat('book', seq_booking_num.nextval), ?, ?, movie_nm_seq.nextval, ?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			
//			psmt.setString(1, dto.getMoviecode());
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getTheatercode());
			psmt.setString(4, dto.getTimecode());
			psmt.setString(5, dto.getPrice());
			psmt.setString(6, dto.getSeatcode());
			psmt.setString(7, dto.getRatingcode());
			
			result = psmt.executeUpdate();
			
		} catch(Exception e) {
			System.out.println("DB에 데이터 추가 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	public int deleteBooking(String bookingcode) {
		int result = 0;
		
		try {
			String query = "DELETE FROM booking WHERE bookingcode = ?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, bookingcode);
			result = psmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("예매 목록 삭제 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
//	public int updateBooking(BookingDTO dto) {
//		int result = 0;
//		
//		try {
//			String query = "UPDATE booking SET bookingcode=?, moviecode=?, membercode=?, timecode=?, price=?, seatcode=?";
//			
//			psmt = con.prepareStatement(query);
//			psmt.setString(1, dto.getBookingcode());
//			psmt.setString(1, dto.getMoviecode());
//			psmt.setString(3, dto.getMembercode());
//			psmt.setString(2, dto.getTimecode());
//			psmt.setString(3, dto.getPrice());
//			psmt.setString(4, dto.getSeatcode());
//			
//			result = psmt.executeUpdate();
//		} catch(Exception e) {
//			System.out.println("예매 사항 수정 중 예외 발생");
//			e.printStackTrace();
//		}
//		
//		return result;
//	}
	
	public boolean confirmBooking(String bookingcode) {
		boolean exist = true;
		
		try {
			String query = "SELECT COUNT(*) FROM booking WHERE bookingcode = ?";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, bookingcode);
			rs = psmt.executeQuery();
			
			rs.next();
			
			if(rs.getInt(1) == 0) {
				exist = false;
			}
		} catch(Exception e) {
			exist = false;
			e.printStackTrace();
		}
		
		return exist;
	}
}

















