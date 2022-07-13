<%@page import="java.sql.*"%>
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
   
   <% 
   request.setCharacterEncoding("utf-8");
   
   JDBConnect jdbc = new JDBConnect();
   
   String membercode = request.getParameter("membercode");
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");
   String birth = request.getParameter("birth");
   String email = request.getParameter("email");
   String tel = request.getParameter("tel");
      
      String sql = " INSERT INTO member(membercode,id,pw,name,birth,email,tel) "
    		  + " VALUES(concat('mem',member_nm_seq.nextval),?,?,?, TO_DATE(?,'YYYYMMDD'),?,?) ";

      PreparedStatement psmt = jdbc.con.prepareStatement(sql);

      
      psmt.setString(1, id);
      psmt.setString(2, pw);
      psmt.setString(3, name);
      psmt.setString(4, birth);
      psmt.setString(5, email);
      psmt.setString(6, tel);
      
      int inResult = psmt.executeUpdate();
      response.sendRedirect("joinSuccess.jsp");
      

      jdbc.close();
      
   %>
   
</body>
</html>