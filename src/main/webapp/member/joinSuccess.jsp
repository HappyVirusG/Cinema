<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>그린시네마</title>
    
    <link rel="stylesheet" href="../resource/css/joinSuccess.css">
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=11">
    <link rel="stylesheet" href="../resource/css/minji_main.css?ver=2">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- font-family -->

</head>
<body>

<%@include file="../main/header.jsp" %>
<div class="nemo">
   <img id="wing" src="../resource/img/main/pngwing.png" alt="">
   
      <% 
      request.setCharacterEncoding("utf-8");
   
      String name = request.getParameter("name");

      %>
      
      
    <h2> <span>그린시네마</span> 회원가입 완료! <br><br> 회원이 되신것을 환영합니다.</h2>
    <button class="go_to_home" onclick="location.href='../main/main.jsp';">메인으로 가기</button>
    <button class="go_to_login" onclick="location.href='../member/login.jsp';">로그인</button>
</div>
<%@include file="../main/footer.jsp" %>
</body>
</html>