<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화 - 그린 시네마</title>
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=8">
    <link rel="stylesheet" href="../resource/css/movie_list.css?ver=6">

    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="../main/header.jsp" %> 

<div id="wrap">
    <div class="movieList">
    <h3>현재상영작</h3>
    <div class="movieChartLine"></div>
    <ul>
    <c:choose>
    	<c:when test="${empty boardLists}">
    		<li>등록된 영화가 없습니다.</li>
    	</c:when>
    	<c:otherwise>

        <c:forEach items="${ boardLists }" var="row" varStatus="loop">
         <li id="movieNowList">
                <a href="../model/movieDetail.do?moviecode=${row.moviecode}">
                    <img src="${row.image}" alt=""><br/>
                    <p class="movieChartTitle">
                    	<span class="rating" id="temporary">${row.ratingcode}</span>
                    	<span class="movieTitle">${row.title}</span>
                    </p>
<script>
    var ratingAge;
    switch("${row.ratingcode}"){
    case "15":
    	ratingAge="rating15";
    	break;
    case "12":
    	ratingAge="rating12";
    	break;
    case "All":
    	ratingAge="ratingAll";
    	break;
    case "19":
    	ratingAge="rating19";
    	break;
    }
    var rating = document.querySelector('#temporary');
    rating.setAttribute('id', ratingAge);
</script>
                    <p>예매율 <span class="boxOffice">46.2%</span> </p>
                    <p class="movieDate">${row.opendate}</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>

			</c:forEach>
         </c:otherwise>
      </c:choose> 
    </ul> <!-- 영화 목록 -->
    ${map.pagingImg}
    <script>
    	console.log("${map.pagingImg}")
    </script>

    </div>
</div> <!-- wrap -->

<%@include file="../main/footer.jsp" %>
    
</body>
</html>