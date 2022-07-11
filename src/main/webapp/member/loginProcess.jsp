<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="member.MemberDTO" scope="page"/>
<jsp:setProperty name="member" property="id" />
<jsp:setProperty name="member" property="pw" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		MemberDAO memberDAO = new MemberDAO();
		
		int result = memberDAO.login(id, pw);
		System.out.println(result);
		if(result == 1){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='../main/main.jsp'");
			script.println("</script>");
		}
		if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
		
		//로그인폼에서 가져온 아이디와 패스워드
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("name");
		
		//web.xml에서 가져온 데이터베이스 연결
		String oracleDriver = application.getInitParameter("OracleDriver");
		String oracleUrl = application.getInitParameter("OracleURL");
		String oracleId = application.getInitParameter("OracleId");
		String oraclePw = application.getInitParameter("OraclePw");
		
		//MemberDAO를 통해 DB에 접근하여 CURD수행
		MemberDAO dao = new MemberDAO(oracleDriver, oracleUrl, oracleId, oraclePw);
		
		//getMemberDTO()메서드를 호출
		MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
		
		//데이터베이스 연결 해제
		dao.close();
		
		//로그인 성공 여부에 따른 처리
		if (memberDTO.getId() != null){ //dto객체에 아이디가 있으면 로그인 성공
			
		//로그인에 성공하면 session영역에 아이디와 이름을 저장(로그인 유지를 위해)
		session.setAttribute("UserId", memberDTO.getId());
		session.setAttribute("UserName", memberDTO.getName());
			
		//로그인 페이지로 이동
		response.sendRedirect("./main/main.jsp");
		} else {
			
			//20.로그인에 실패했다면..
			request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
			
			//21.로그인페이지로 포워드함
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	%>
</body>
</html>