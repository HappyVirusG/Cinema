<%@page import="member.MemberDTO"%>
<%@page import="utils.JSFunction"%>
<%@page import="model.ReviewDAO"%>
<%@page import="model.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인 확인 페이지 만들어서 들고오기 -->

<%
/* 폼값 받아오기 */
String content=request.getParameter("content");
String score=request.getParameter("score");

/* 폼값을 DTO 객체에 저장 */
ReviewDTO rdto = new ReviewDTO();

MemberDTO mdto = new MemberDTO();         //더 알아보기!

rdto.setContent(content);
rdto.setScore(score);
rdto.setId(session.getAttribute("UserId").toString());

/* DAO 객체를 통해 DB에 DTO 저장 */
ReviewDAO dao = new ReviewDAO(application);
int iResult = dao.insertReview(mdto, rdto);
dao.close();

if(iResult == 1){
	response.sendRedirect("../movie/movieDetail.jsp");
}else{
	JSFunction.alertBack("리뷰 작성에 실패하였습니다.", out);
}
%>