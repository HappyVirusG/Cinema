package model;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.DBConnPool;

public class BookingDAO extends DBConnPool{
	
	public BookingDAO() {
		super();
	}
	
	public List<BookingDTO> selectList(Map<String, Object> map, String bookingcode) {
		
		List<BookingDTO> list = new Vector<BookingDTO>();
		
		String query = "SELECT * FROM BOOKING WHERE bookingcode = ? ORDER BY DESC bookingcode";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, bookingcode);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BookingDTO dto =new BookingDTO();
				
				dto.setBookingcode(rs.getString(1));
				dto.setMoviecode(rs.getString(2));
				dto.setMembercode(rs.getString(3));
				dto.setTimecode(rs.getString(4));
				dto.setPrice(rs.getString(5));
				dto.setSeatcode(rs.getString(6));
				
				list.add(dto);
			}
		} catch(Exception e) {
			System.out.println("예매 리스트 불러오는 중 예외 발");
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int insertBooking(BookingDTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO booking"
					+ "VALUES(?, ?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getBookingcode());
			psmt.setString(2, dto.getMoviecode());
			psmt.setString(3, dto.getMembercode());
			psmt.setString(4, dto.getTimecode());
			psmt.setString(5, dto.getPrice());
			psmt.setString(6, dto.getSeatcode());
			
			result = psmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("DB에 데이터 추가 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	 
}

















