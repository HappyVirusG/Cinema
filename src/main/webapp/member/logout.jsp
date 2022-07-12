<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//1. 회원 인증 정보 삭제
	session.removeAttribute("id");
	session.removeAttribute("pw");
	
	//2. 모든 속성 한꺼번에 삭제
	session.invalidate();
	
	//속성을 삭제하고 페이지 이동
	response.sendRedirect("../member/login.jsp");
%> 