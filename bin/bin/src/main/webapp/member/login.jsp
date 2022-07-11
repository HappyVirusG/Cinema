<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 	<link rel="stylesheet" href="../resource/css/header_footer.css?ver=2">
    <link rel="stylesheet" href="../resource/css/login.css">
    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="../main/header.jsp" %>
	<div id=login_wrap>
        <section id="login">
            <form id="form" action="" method="post">
                <div class="userInfo">
                    <label>
                        <input type="text" id="user_id" name="user_id" placeholder="아이디">
                    </label>
                    <br>
                    <label>
                        <input type="text" id="user_id" name="user_id" placeholder="비밀번호">
                    </label>
                    <br>
                </div>

                <label for="chk">
                    <input type="checkbox" id="chk">
                    <i class="circle"></i>
                    <span class="text">로그인 상태 유지</span>
                </label>

                <br>
                <button type="submit" >로그인</button>
            </form>
        </section>
	</div>
	<%@include file="../main/footer.jsp" %>
</body>
</html>