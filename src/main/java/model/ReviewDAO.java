package model;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;
import member.MemberDTO;

public class ReviewDAO extends JDBConnect{
	public ReviewDAO() {
		super();
	}
	public ReviewDAO(ServletContext application) {
		super(application);
	}
	public ReviewDAO(String driver, String url, String id, String pw) {
		super(driver, url, id, pw);
	}
	
//	리뷰 개수 세기
	public int reviewCount(Map<String, Object> map, String moviecode) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM movie M, review R"
				+ " WHERE M.moviecode = R.moviecode "
				+ " AND M.moviecode = ?"
				+ " ORDER BY idx DESC";

		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, moviecode);
			rs=psmt.executeQuery();
			
			rs.next();
			totalCount=rs.getInt(1);
		}catch(Exception e) {
			System.out.println("리뷰 개수를 계산하던 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return totalCount;
	}
	
//	리뷰 목록 반환
	public List<ReviewDTO> selectList(Map<String, Object> map, String moviecode){
		List<ReviewDTO> reviewPost = new Vector<ReviewDTO>();
		String query = "SELECT R.* FROM movie M, review R"
				+ " WHERE M.moviecode = R.moviecode "
				+ " AND M.moviecode = ?"
				+ " ORDER BY idx DESC";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, moviecode);
			rs=psmt.executeQuery();
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();

				dto.setMoviecode(rs.getString("moviecode"));
				dto.setIdx(rs.getString("idx"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setContent(rs.getString("content"));
				dto.setMembercode(rs.getString("membercode"));
				dto.setScore(rs.getString("score"));
				
				reviewPost.add(dto); //결과를 목록에 저장
			}
		}catch(Exception e) {
			System.out.println("리뷰 목록을 읽어오던 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return reviewPost;	
	}
	
//	리뷰 데이터를 받아 DB에 추가
	public int insertReview(MemberDTO mdto, ReviewDTO rdto) {
		int result=0;
		try {
			String findQuery = "SELECT M.membercode "
					+ " FROM member M INNER JOIN review R "
					+ " ON M.mebercode = R.moviecode "
					+ " WHERE id = ? ";
			psmt = con.prepareStatement(findQuery);
			psmt.setString(1, mdto.getId());
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				rdto.setMembercode(rs.getString("membercode"));
				rdto.setId(rs.getString("id"));
			}
			
			String query = "INSERT INTO review(hit, idx, moviecode, content, membercode, score) "
					+" VALUES(0, review_idx_seq.nextval, ?, ?, ?, ?)";
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, rdto.getMoviecode());
			psmt.setString(2, rdto.getContent());
			psmt.setString(3, rdto.getMembercode());
			psmt.setString(4, rdto.getScore());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 업로드 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return result;
	}
	
	//리뷰 수정하기
	public int updateEdit(ReviewDTO dto) {
		int result=0;
		try {
			String query = "UPDATE review "
					+ "SET content=? "
					+ "WHERE idx=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getContent());
			psmt.setString(2, dto.getIdx());
			
			result=psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 수정 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return result;
	}
	
	//지정한 리뷰 삭제하기
	public int deleteReview(ReviewDTO dto) {
		int result=0;
		try {
			String query = "DELETE review WHERE idx=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getIdx());
			
			result=psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 삭제 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
