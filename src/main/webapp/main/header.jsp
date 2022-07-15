<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- bootstrap -->
<link rel="stylesheet" href="../resource/css/header_footer.css?ver=3">

<!-- font-family -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">

<!-- main title용 font-family -->
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">

	<header id="header">
    <div class="headerTitle">
		<span class="subtitle"> TALK PLAY LOVE</span>
        <a id="title_name" href="../main/main.jsp"><h1>GREEN CINEMA</h1></a>
    </div>
    <div class="headerSide">
        <div class="SNS">
            <!-- <img src="/img/icons/cinema/logoRed.png" alt="로고 임시"> -->
            <ul id="ul1">
                <li><a id="a1" href=""><img src="../resource/img/icons/facebook.png" alt=""> 페이스북</a></li>
                <li><a id="a1" href=""><img src="../resource/img/icons/twitter.png" alt=""> 트위터</a></li>
                <li><a id="a1" href=""><img src="../resource/img/icons/youtube.png" alt=""> 유튜브</a></li>
                <li><a id="a1" href=""><img src="../resource/img/icons/instagram.png" alt=""> 인스타그램</a></li>
            </ul>
        </div>
        <div class="myPage">
            <ul id="ul1">
						<!-- 로그아웃 시 로그인/회원가입
						로그인 시 로그아웃/마이페이지 -->                
	                <% if (session.getAttribute("UserId") == null) { %>
						<li><a href="../member/login.jsp" id="a1">로그인</a> </li>
						<li><a href="../member/join.jsp" id="a1">회원가입</a></li>		
					<% } else { %>
						<li><a href="../member/logout.jsp" id="a1">로그아웃</a></li>
						<li><a href="../member/myPage.jsp" id="a1">마이페이지</a></li>		
					<% } %>
                
                <li><a href="">고객센터</a></li>
            </ul>
        </div>
    </div>
    <div class="headerLine"></div>
    <div class="menu">
         <ul id="ul1">
            <li><a id="a1" href="../model/movieList.do">영화</a></li>
            <li><a id="a1" href="../booking/Booking.jsp">예매</a></li>
            <li><a id="a1" href="../model/bookingList.do">예매 목록</a></li>
            <li><a id="a1" href="">스토어</a></li>
            <li><a id="a1" href="">멤버십</a></li>
        </ul>
    </div>
    <div class="headerLine2"></div>
</header> <!-- #header -->
