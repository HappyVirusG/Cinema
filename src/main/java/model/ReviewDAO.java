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
	public int insertReview(ReviewDTO dto, String moviecode) {
		int result=0;
		try {
			/*
			 * String findQuery =
			 * "SELECT r.* FROM movie m INNER JOIN review r ON m.moviecode=r.moviecode WHERE m.moviecode=?"
			 * ; psmt = con.prepareStatement(findQuery); psmt.setString(1, moviecode); rs =
			 * psmt.executeQuery();
			 */
		
			//아직 memberDB 형성되지 않았기 때문에 mem04로 고정
			String query = "INSERT INTO review(postdate, moviecode, idx, content, membercode, score) "
					+ "VALUES(sysdate, '"+ moviecode +"', review_idx_seq.nextval,?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getContent());
			psmt.setString(2, dto.getMembercode());
			psmt.setString(3, dto.getScore());
			
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
	
	public ReviewDTO selectReview(String idx) {
		ReviewDTO dto = new ReviewDTO();
		String query = "SELECT * FROM review WHERE idx=?";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, idx);
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto.setIdx(rs.getString("idx"));
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setContent(rs.getString("content"));
				dto.setScore(rs.getString("score"));
				dto.setMembercode(rs.getString("membercode"));
			}
		}catch(Exception e) {
			System.out.println("불러오기용 예외 발생");
			e.printStackTrace();
		}
		return dto;
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
	
	public int multipleReview(String moviecode, String membercode) {
		int result=0;
		try {
			String query = "SELECT * FROM review WHERE moviecode=? AND membercode=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, moviecode);
			psmt.setString(2, membercode);
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 중복 확인 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return result;
	}
	
}
