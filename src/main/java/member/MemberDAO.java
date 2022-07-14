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
	
	//濡쒓렇�씤 �쁺�뿭
		public int login(String id, String pw) {
			
			String sql = "SELECT pw FROM member WHERE id=?";
				
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, id);
				
				rs = psmt.executeQuery();
				
				 if (rs.next()) {
					 if(rs.getString("pw").equals(pw))
					return 1; //濡쒓렇�씤 �꽦怨�
				 } else {
					 return 0; //鍮꾨쾲��由� 
				 }
				return -1; //�븘�씠�뵒 �뾾�쓬
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -2; //�삤瑜�
		}
		
		//�옉�꽦�븳 �븘�씠�뵒/�뙣�뒪�썙�뱶�� �씪移섑븯�뒗 �쉶�썝 �젙蹂대�� 諛섑솚
		public MemberDTO getMemberDTO(String uid, String upass) {

			MemberDTO dto = new MemberDTO();
			
			String query = "SELECT * FROM member WHERE id=? AND pw=?";
			
			try {
				psmt = con.prepareStatement(query);
				psmt.setString(1, uid); 
				psmt.setString(2, upass); 
				rs=psmt.executeQuery(); 

				if (rs.next()) {
					dto.setId(rs.getString("id")); 
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
					dto.setMembercode(rs.getString("membercode"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return dto;
		}
		
		//member info를 membercode로만 들고오기(오버로딩)
		public MemberDTO getMemberDTO(String membercode) {

			MemberDTO dto = new MemberDTO();
			
			String query = "SELECT * FROM member WHERE membercode=?";
			
			try {
				psmt = con.prepareStatement(query);
				psmt.setString(1, membercode); 
				rs=psmt.executeQuery(); 

				if (rs.next()) {
					dto.setMembercode(rs.getString("membercode"));
					dto.setName(rs.getString("name"));
					dto.setId(rs.getString("id")); 
					dto.setPw(rs.getString("pw"));
					dto.setTel(rs.getString("tel"));
					dto.setEmail(rs.getString("email"));
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			return dto;
		}
		
}

