package model;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MovieDAO extends JDBConnect{
	public MovieDAO() {
		super();
	}
	public MovieDAO(ServletContext application) {
		super(application);
	}
	
	//영화 개수 세기
	public int movieCount(Map<String, Object> map) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM movie ";
		
		//검색 단어가 있을 때
		if(map.get("searchWord")!=null) {
			query += " LIKE '%"+map.get("searchWord")+"%' ";
			
		}
		try {
			stmt = con.createStatement();
			rs=stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		}catch(Exception e) {
			System.out.println("영화 개수를 계산하던 중 오류가 발생하였습니다.");
			e.printStackTrace();
		}
		return totalCount;
	}
	
	//영화 목록 반환
	public List<MovieDTO> selectListPage(Map<String, Object> map){
		List<MovieDTO> board = new Vector<MovieDTO>();
		String query = "SELECT * FROM (SELECT tb.*, ROWNUM rNum FROM (SELECT * FROM movie ";
		
		if(map.get("searchWord")!=null) {
			query += " LIKE '%"+map.get("searchWord")+"%' ";
		}
		query += " ORDER BY moviecode DESC ) tb) WHERE rNum BETWEEN ? AND ?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();
			while(rs.next()) {
				MovieDTO dto = new MovieDTO();
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setTitle(rs.getString("title"));
				dto.setDirector(rs.getString("director"));
				dto.setActors(rs.getString("actors"));
				dto.setCountry(rs.getString("country"));
				dto.setSummary(rs.getString("summary"));
				dto.setRunningtime(rs.getString("runningtime"));
				dto.setRatingcode(rs.getString("ratingcode"));
				dto.setOpendate(rs.getDate("opendate"));
				dto.setImage(rs.getString("image"));
				dto.setPrice(rs.getString("price"));
				dto.setGenre(rs.getString("genre"));
				dto.setEngtitle(rs.getString("engtitle"));
				dto.setYoutube(rs.getString("youtube"));
				
				board.add(dto);
			}
			}catch(Exception e) {
				System.out.println("영화 목록 조회 중 오류가 발생하였습니다.");
				e.printStackTrace();
			
		}return board;
	}
	
	//메인에서 영화목록 반환
	public List<MovieDTO> selectMainPage(Map<String, Object> map){
		List<MovieDTO> board = new Vector<MovieDTO>();
		String query = "SELECT * FROM (SELECT tb.*, ROWNUM rNum FROM (SELECT * FROM movie ";
		
		if(map.get("searchWord")!=null) {
			query += " LIKE '%"+map.get("searchWord")+"%' ";
		}
		query += " ORDER BY moviecode DESC) tb)";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				MovieDTO dto = new MovieDTO();
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setTitle(rs.getString("title"));
				dto.setDirector(rs.getString("director"));
				dto.setActors(rs.getString("actors"));
				dto.setCountry(rs.getString("country"));
				dto.setSummary(rs.getString("summary"));
				dto.setRunningtime(rs.getString("runningtime"));
				dto.setRatingcode(rs.getString("ratingcode"));
				dto.setOpendate(rs.getDate("opendate"));
				dto.setImage(rs.getString("image"));
				dto.setPrice(rs.getString("price"));
				dto.setGenre(rs.getString("genre"));
				dto.setEngtitle(rs.getString("engtitle"));
				dto.setYoutube(rs.getString("youtube"));
				
				board.add(dto);
			}
			}catch(Exception e) {
				System.out.println("영화 목록 조회 중 오류가 발생하였습니다.");
				e.printStackTrace();
			
		}return board;
	}
	
	//상세보기
	public MovieDTO selectView(String moviecode) {
		MovieDTO dto = new MovieDTO();
		//쿼리문 양식 준비
		String query = "SELECT * FROM movie WHERE moviecode=?";
		try {
			psmt=con.prepareStatement(query); //쿼리문 실행 준비
			psmt.setString(1, moviecode); //인파라미터 설정
			rs=psmt.executeQuery(); //쿼리문 실행
			
			if(rs.next()) {
				dto.setMoviecode(rs.getString("moviecode"));
				dto.setTitle(rs.getString("title"));
				dto.setDirector(rs.getString("director"));
				dto.setActors(rs.getString("actors"));
				dto.setCountry(rs.getString("country"));
				dto.setSummary(rs.getString("summary"));
				dto.setRunningtime(rs.getString("runningtime"));
				dto.setRatingcode(rs.getString("ratingcode"));
				dto.setOpendate(rs.getDate("opendate"));
				dto.setImage(rs.getString("image"));
				dto.setPrice(rs.getString("price"));
				dto.setGenre(rs.getString("genre"));
				dto.setEngtitle(rs.getString("engtitle"));
				dto.setYoutube(rs.getString("youtube"));
			}
		}catch(Exception e) {
			System.out.println("영화 상세보기 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}
}
