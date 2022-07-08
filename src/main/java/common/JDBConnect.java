package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect {
	public Connection con; //�뜲�씠�꽣踰좎씠�뒪�� �뿰寃곗쓣 �떞�떦
	public Statement stmt; //�씤�뙆�씪誘명꽣媛� �뾾�뒗 �젙�쟻 荑쇰━臾몄쓣 �떞�떦
	public PreparedStatement psmt; //�씤�뙆�씪誘명꽣媛� �엳�뒗 �룞�쟻 荑쇰━臾몄쓣 �떞�떦
	public ResultSet rs; //SELECT 荑쇰━臾몄쓽 寃곌낵瑜� ���옣(吏묓빀 �삎�깭)
	
	
	//	1. 湲곕낯�깮�꽦�옄
	public JDBConnect() {
		try {
			/* forName() : new �궎�썙�뱶 ���떊 �겢�옒�뒪紐낆쓣 �넻�빐 吏곸젒 媛앹껜瑜� �깮�꽦�븯�뿬 
			 			   硫붾え由ъ뿉 濡쒕뱶�븯�뒗 硫붿꽌�뱶. 
			 			   �씤�닔濡쒕뒗 �삤�씪�겢 �뱶�씪�씠踰꾩쓽 �씠由꾩쓣 �꽔�쑝硫� �맖. */
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String id="cinema";
			String pw="1234";
			con=DriverManager.getConnection(url, id, pw);
			
			System.out.println("DB 연결 성공(기본생성자1)");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//�뿰寃� �빐�젣
	public void close() {
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
//	2. �깮�꽦�옄(�삤踰꾨줈�뵫)
	public JDBConnect(String driver, String url, String id, String pw) {
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, id, pw);
			System.out.println("DB 연결 성공(생성자2)");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
//	3. �깮�꽦�옄
	//ServletContext : servlet 援ъ꽦�뿉 �븘�슂�븳 Bean �꽕�젙�쓣 媛��졇�� ���옣
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleUrl");
			String id = application.getInitParameter("OracleId");
			String pw = application.getInitParameter("OraclePw");
			
			con = DriverManager.getConnection(url, id, pw);
			System.out.println("DB 연결 성공(생성자3)");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
