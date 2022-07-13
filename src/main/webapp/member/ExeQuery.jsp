<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h2>회원 목록 조회하기</h2>
   <%
      //1.DB 연결
      JDBConnect jdbc = new JDBConnect();
      
      //2.쿼리문 생성
      String sql = "SELECT membercode, id, pw, name, birth, email, tel FROM member";
      
      Statement stmt = jdbc.con.createStatement();
      
      //3.쿼리 실행
      //ResultSet : 조회 결과를 담고 있는 집합
      ResultSet rs = stmt.executeQuery(sql);
      
      while(rs.next()){
         String membercode = rs.getString("membercode"); 
         String id = rs.getString("id"); 
         String pw = rs.getString("pw");
         String name = rs.getString("name");
         String birth = rs.getString("birth");
         String email = rs.getString("email");
         String tel = rs.getString("tel");
         
         out.println(String.format("%s %s %s %s %s %s %s", membercode, id, pw, name, birth, email, tel ) + "<br>");
         
      }
      
      //연결닫기
      jdbc.close();
      
      
   %>
</body>
</html>