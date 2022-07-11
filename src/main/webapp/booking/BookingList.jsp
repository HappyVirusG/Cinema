<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resource/css/header_footer.css">
</head>
<body>
	<%@include file="../main/header.jsp" %>
	<form>
		<table border="1" width="100%">
			<tr align="center">
				<td width="15%">예매번호</td>
				<td width="*">영화제목</td>
				<td width="15%">좌석번호</td>
				<td width="15%">시작시간</td>
				<td width="15%">가격</td>
			</tr>
			<c:choose>
				<c:when test="${ empty lists }">
					<tr>
						<td colspan="6" align="center">
							예매된 영화가 없습니다.
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${lists}" var="row" varStatus="loop">
						<tr align="center">
							<td width="15%">${row.bookingcode }</td>
							<td width="*" name="moviecode">${row.moviecode }</td>
							<td width="15%">${row.seatcode }</td>
							<td width="15%">${row.timecode }</td>
							<td width="15%">${row.price }</td>
							<td><button type="button" onclick="location.href='../model/bookingEdit.do'">X</button></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
	<%@include file="../main/footer.jsp" %>
</body>
</html>