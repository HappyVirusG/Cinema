<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <%@include file="../main/header.jsp" %>
    <style>
    	#event_contant {
			margin: 80px 0px 150px 350px;
			position: relative;
    	}
    	
    	#event_contant img {
    		width: 1000px;
    		height: 3800px;
    	}
    	
    	#event_contant .list_p{
    		width: 1000px;
    		font-size: 17px;
    		font-weight: 500;
    		margin-bottom: 10px;
    		background: rgb(250, 247, 239);
    		padding: 10px 0 10px 10px;
    		border-bottom: 1px solid lightgray;
    		border-top: 1px solid lightgray;
    	}
    	
		#back_list {
		    width: 130px;
		    height: 45px;
		    line-height: 45px;
		    border-radius: 0px;
		    border: 1px solid #ccc;
		    font-size: 20px;
		    background-color: rgb(255, 255, 255);
		    color: rgb(48, 48, 48);
		    position: absolute;
		    bottom: -60px;
		    left: 20px;
		} 
    </style>
</head>
<body>
	<div id = "event_contant">
		<p class="list_p"> [토르: 러브 앤 썬더] 마이티토르 묠니르컵 론칭! </p>
		<img src="../resource/img/event/list_1.jpg" alt="">
		
		<a href = "../event/event.jsp">
        	<button id="back_list" type="button">
            	<p>목록보기</p>
        	</button>
        </a>
	</div>
<%@include file="../main/footer.jsp" %>
</body>
</html>