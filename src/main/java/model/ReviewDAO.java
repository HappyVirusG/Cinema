package model;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class ReviewDAO extends JDBConnect{
	public ReviewDAO(ServletContext application) {
		super(application);
	}
	public ReviewDAO(String driver, String url, String id, String pw) {
		super(driver, url, id, pw);
	}
	
//	리뷰 개수 세기
	public int reviewCount(Map<String, Object> map) {
		int totalCount = 0;
		String query = "SELECT COUNT(*) FROM review";
		
//		검색 단어가 있을 때
//		select count(*) from board where 제목 like '%가%';
		if(map.get("searchWord")!=null) {
			query += " WHERE "+map.get("searchField")
				  +" LIKE '%"+map.get("searchWord")+"%'";
		}
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			rs.next();
			totalCount=rs.getInt(1);
		}catch(Exception e) {
			System.out.println("리뷰 개수를 계산하던 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return totalCount;
	}
	
//	리뷰 목록 반환
	public List<ReviewDTO> selectList(Map<String, Object> map){
		List<ReviewDTO> reviewPost = new Vector<ReviewDTO>();
		String query = "SELECT * FROM review";
		
//		검색 단어가 있을 때
		if(map.get("searchWord")!=null) {
			query += " WHERE "+map.get("searchField")+" "
					+" LIKE '%"+map.get("searchWord")+"%'";
		}
		query += " ORDER BY idx DESC";
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setIdx(rs.getString("idx"));
				dto.setReviewtitle(rs.getString("reviewtitle"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setHit(rs.getString("hit"));
				dto.setContent(rs.getString("content"));
				dto.setMembercode(rs.getString("membercode"));
				dto.setScore(rs.getString("score"));
				
				reviewPost.add(dto); //결과를 목록에 저장

			}
		}catch(Exception e) {
			System.out.println("리뷰 목록을 반환하던 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return reviewPost;	
	}
	
//	리뷰 데이터를 받아 DB에 추가
	public int insertReview(ReviewDTO dto) {
		int result=0;
		try {
			String query = "INSERT INTO review(hit, idx, moviecode, reviewtitle,, content, membercode, score) "
					+" VALUES(0, 시퀀스만들어놓기,?, ?, ?, ?, ?)";
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getMoviecode());
			psmt.setString(2, dto.getReviewtitle());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getMembercode());
			psmt.setString(5, dto.getScore());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("리뷰 업로드 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return result;
	}

//	리뷰 확인하기
	public ReviewDTO selectView(String idx) {
		ReviewDTO dto = new ReviewDTO();
		String query = "SELECT M.title, R.* "
				+ " FROM movie M INNER JOIN review R  "
				+ " ON M.moviecode = R.moviecode "
				+ " WHERE idx = ? ";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, idx);
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setIdx(rs.getString("idx"));
				dto.setReviewtitle(rs.getString("reviewtitle"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setHit(rs.getString("hit"));
				dto.setContent(rs.getString("content"));
				dto.setMembercode(rs.getString("membercode"));
				dto.setScore(rs.getString("score"));
				dto.setMovietitle(rs.getString("movietitle"));
			}
		}catch(Exception e) {
			System.out.println("리뷰 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}
	
	//조회수를 1씩 증가시키는 메서드
	public void updateHit(String num) {
		String query = "UPDATE review "
				+ "SET hit = hit+1 "
				+ "WHERE num=? ";
		try {
			psmt=con.prepareStatement(query);
			psmt.setString(1, num);
			psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("조회수 업데이트 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
	}
	
	//리뷰 수정하기
	public int updateEdit(ReviewDTO dto) {
		int result=0;
		try {
			String query = "UPDATE review "
					+ "SET title=?, content=? "
					+ "WHERE idx=?";
			psmt=con.prepareStatement(query);
			psmt.setString(1, dto.getReviewtitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getIdx());
			
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
