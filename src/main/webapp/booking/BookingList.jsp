<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Booking.jsp"/>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table border="1" width="90%">
			<c:choose>
				<c:when test="${ empty lists }">
					<tr>
						<td colspan="6" align="center">
							예매된 영화가 없습니다.
						</td>
					</tr>
				</c:when>
				<%-- 게시물이 있을 때 --%>
				<c:otherwise>
					<%-- items : 컬렉션 객체, var : 변수명, varStatus : 반복상태를 확인할 수 있는 변수 --%>
					<c:forEach items="${lists}" var="row" varStatus="loop">
						<tr align="center">
							<td name="moviecode">영화제목 ${row.moviecode }</td>
							<td>좌석 ${row.seatcode }</td>
							<td>시작시간 ${row.timecode }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
</body>
</html>