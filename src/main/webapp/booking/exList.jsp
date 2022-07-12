<%@page import="model.BookingDTO"%>
<%@page import="java.util.List"%>
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
		List<BookingDTO> lists = (List<BookingDTO>)request.getAttribute("lists");
	%>
	<%@include file="../main/header.jsp" %>
	
	<div class="list-container">
		<div class="list-title">예매한 영화 목록</div>
		<div class="list-wrap">
			<div class="movie-reserve">
				<% 
					for(int i=0; i<lists.size(); i++){
						BookingDTO dto = lists.get(i);
					}
				%>
				<div class="ratingcode">${dto.getRatingcode}</div>
				<div class="moviecode">${dto.getMoviecode}</div>
				
				<div class="theater-seat">
					<div class="theater">${dto.getTheatercode }</div>
					<div class="seat">${dto.getSeatcode}</div>
				</div>
				
				<div class="date-time">
					<div class="date"></div>
				</div>															
			</div>
		</div>
	</div>
	
	<%@include file="../main/footer.jsp" %>
</body>
</html>