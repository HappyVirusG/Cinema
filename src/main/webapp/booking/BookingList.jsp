<%@page import="model.BookingDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../member/IsLoggedIn.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resource/css/bookingList.css">
<link rel="stylesheet" href="../resource/css/header_footer.css">
</head>
<body>
	<%@include file="../main/header.jsp" %>
	
	<div class="list-container">
		<div class="main-title">예매한 영화 목록</div>
		<div class="wrap">
		<c:choose>
				<c:when test="${ empty lists }">
							<div class="notMovie">예매된 영화가 없습니다.</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${lists}" var="row" varStatus="loop">
						<div class="movie-reserve">
							<div><button type="button" class="delete" onclick="location.href = '../model/bookingEdit.do?mode=delete&bookingcode=${row.bookingcode}'">예매취소</button></div>
							<div class="ratingcode">${row.ratingcode}</div>
							<div class="title">${row.title}</div>
							
							<div class="theater-seat">
								<div class="theater">${row.theatercode }</div>
								<div class="seat">${row.seatcode}</div>
							</div>
							
							<div class="date-time">
								<div class="date">${row.datecode }&nbsp;</div>
								<div class="time">${row.timecode }</div>
							</div>
							
							<div class="pay">
								<div class="pay-title">결제금액</div>
								<div class="paymoney">${row.price }</div>
							</div>
																						
							<div class="barcode">
								<div class="barcode-title">CGV</div>
								<div class="img"><img src="../resource/img/icons/barcode.png" width="200px" height="60px"></div>
							</div>		
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</div>
	</div>
	
	<%@include file="../main/footer.jsp" %>
</body>
</html>