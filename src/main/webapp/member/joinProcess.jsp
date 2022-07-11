<%@page import="java.sql.PreparedStatement"%>
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
      JDBConnect jdbc = new JDBConnect();
   
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String tel = request.getParameter("tel");
      
      String sql = " INSERT INTO member1(id,pw,name,email,tel) VALUES(?,?,?,?,?) ";
/*     		  + " collation-server = utf8_unicode_ci "
    		  + " init-connect='SET NAMES utf8' "
    		  + " character-set-server = utf8; "; */

      PreparedStatement psmt = jdbc.con.prepareStatement(sql);

      psmt.setString(1, id);
      psmt.setString(2, pw);
      psmt.setString(3, name);
      psmt.setString(4, email);
      psmt.setString(5, tel);
      
      int inResult = psmt.executeUpdate();
      response.sendRedirect("joinSuccess.jsp");
      

      jdbc.close();
      
   %>
   
</body>
</html>