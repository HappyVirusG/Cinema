package member;

import common.JDBConnect;

public class MemberDAO extends JDBConnect{
	public MemberDAO() {
		super();
	}
	
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	//로그인 영역
		public int login(String id, String pw) {
			
			String sql = "SELECT pw FROM member1 WHERE id=?";
				
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, id);
				
				rs = psmt.executeQuery();
				
				
				 if (rs.next()) {
					 if(rs.getString("pw").equals(pw))
					return 1; //로그인 성공
				 } else {
					 return 0; //비번틀림 
				 }
				return -1; //아이디 없음
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //오류
		}
		
		
		
		public MemberDTO getMemberDTO(String uid, String upass) {
			
			//10.dto객체 생성
			MemberDTO dto = new MemberDTO();
			
			//11.아이디와 패스워드가 member테이블에 있는지 확인하기위해 쿼리문작성
			String query = "SELECT * FROM member1 WHERE id=? AND pw=?";
			
			try {
				
				//12.동적쿼리문 작성
				psmt = con.prepareStatement(query);
				psmt.setString(1, uid); //첫번째 인파라미터에 값 설정
				psmt.setString(2, upass); //두번째 인파라미터에 값 설정
				rs=psmt.executeQuery(); //쿼리 실행
				
				//13.결과값 반환
				if (rs.next()) { //rs에 다음값이 있으면
					//rs의 값을 getString메서드로 가져와 dto객체에 저장
					dto.setId(rs.getString("id")); 
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return dto; //14.dto객체 반환
		}
}

