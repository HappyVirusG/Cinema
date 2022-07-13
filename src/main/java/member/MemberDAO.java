package member;

import java.sql.PreparedStatement;
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
		
		//작성한 아이디/패스워드와 일치하는 회원 정보를 반환
		public MemberDTO getMemberDTO(String uid, String upass) {

			MemberDTO dto = new MemberDTO();
			
			String query = "SELECT * FROM member1 WHERE id=? AND pw=?";
			
			try {
				
				psmt = con.prepareStatement(query);
				psmt.setString(1, uid); 
				psmt.setString(2, upass); 
				rs=psmt.executeQuery(); 

				if (rs.next()) {
					dto.setId(rs.getString("id")); 
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return dto;
		}
}

