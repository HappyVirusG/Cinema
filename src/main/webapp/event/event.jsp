<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- css연결 -->
	<link rel="stylesheet" href="../resource/css/event.css" >
	
	<!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    <%@include file="../main/header.jsp" %>
</head>
<body>

	<div id="EVENT">
		<h2>EVENT</h2>
		
		<!-- ******첫번째줄 -->
		<div class= "event_cinema">
		
			<a href="./list1.jsp">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_1.jpg" alt="">
	        		<div class="mini">
	        			<p> [토르: 러브 앤 썬더] 마이티토르 묠니르컵 론칭! </p>
	        			<p class="event_date"> 2022.07.15~2022.08.31 </p>
	        		</div>
		        </div>
		    </a>
		    
			<a href="./list2.jsp">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_2.jpg" alt="">
	        		<div class="mini">
	        			<p> [엘비스] SX 리미티드 포스터 </p><br>
	        			<p class="event_date"> 2022.07.15~2022.08.31 </p>
	        		</div>
		        </div>
		    </a>
		    
			<a href="./list3.jsp">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_3.jpg" alt="">
	        		<div class="mini">
	        			<p> [이달의 아이스콘] 7월 라인업 미리 만나보기 </p>
	        			<p class="event_date"> 2022.07.15~2022.08.31 </p>
	        		</div>
		        </div>
		    </a>
		    
		</div>
		
		<!-- ******두번째줄 -->

		<div class= "event_cinema">
		
			<a href="#">
		    	<div class="event_list">
		        	<img id="end_event" src="../resource/img/event/event_4.jpg" alt="">
	        		<div class="mini">
	        			<p> GreenCinema 아트하우스 2022 CAV 기획전 </p>
	        			<p class="event_date"> 2022.06.10~2022.07.10 </p>
	        		</div>
				    <p class="over">
		            	<span>종료된 이벤트입니다</span>
		            </p>
		        </div>
		    </a>
		    
			<a href="#">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_5.jpg" alt="">
	        		<div class="mini">
	        			<p> IMAX Amazing Race </p><br>
	        			<p class="event_date"> 2022.06.15~2022.07.01 </p>
	        		</div>
				    <p class="over">
		            	<span>종료된 이벤트입니다</span>
		            </p>
		        </div>
		    </a>
		    
			<a href="#">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_6.jpg" alt="">
	        		<div class="mini">
	        			<p> [미니언즈2] 미니언즈 MD 3종 세트 론칭! </p>
	        			<p class="event_date"> 2022.06.01~2022.07.01 </p>
	        		</div>
				    <p class="over">
		            	<span>종료된 이벤트입니다</span>
		            </p>
		        </div>
		    </a>
		    
		</div>
		
		<!-- ******세번째줄 -->
		
		<div class= "event_cinema">
		    	<div class="event_list">
		        	<img src="../resource/img/event/event_7.jpg" alt="">
	        		<div class="mini">
	        			<p> 에너지를 언박싱하다, 에너지 얼박싱 세트 론칭! </p>
	        			<p class="event_date"> 2022.05.01~2022.06.20 </p>
	        		</div>
				    <p class="over">
		            	<span>종료된 이벤트입니다</span>
		            </p>
		        </div>

		    
		 </div>
		
	</div>
<%@include file="../main/footer.jsp" %>
</body>
</html>