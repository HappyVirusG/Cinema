<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../member/IsLoggedIn.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="movieTitle">${dto.title}</title>
    
	<link rel="stylesheet" href="../resource/css/header_footer.css?ver=5">
    <link rel="stylesheet" href="../resource/css/movie_detail.css?ver=3">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<%@include file="../main/header.jsp" %>
<iframe width="100%" height="600px" src="${dto.youtube}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<!-- 예고편 -->
	<div id="wrap">
	
       <div id="contents" class="contentsMovieDetail">
           <div class="movieSummary">
               <h3>${ dto.title }</h3>
               <p class="subTitle">${dto.engtitle}, 
               	<fmt:formatDate pattern="yyyy" value="${dto.opendate}"/>
               </p>
               <img src="${dto.image}" alt="">

               <div class="nowScreen">현재상영중</div>

               <ul class="rating">
                   <li>관람객 평점 <span class="boxOffice">8.99</span></li>
                   <li>예매율 <span class="boxOffice">20.2%</span></li>
                   <li>누적관객수 <span class="boxOffice">1,953,287</span>명</li>
               </ul>
               <div class="ratingLine"></div>
           </div> <!-- .movieSummary -->


           <table class="movieInfo">
               <tr>
                   <th>감독</th>
                   <td><a href="">${dto.director}</a></td>
               </tr>
               <tr>
                   <th>출연</th>
                   <td>
                       <a href=""> ${dto.actors}</a>
                   </td>
               </tr>
               <tr>
                   <th>장르</th>
                   <td>${dto.genre}
               </tr>
               <tr>
                   <th>국가</th>
                   <td>${dto.country}</td>
               </tr>
               <tr>
                   <th>등급</th>
                   <td>
                   	<span id="ratingAge"></span> 관람가
                   </td>
               </tr>
               <tr>
                   <th>개봉</th>
                   <td class="movieDate">${dto.opendate}</td>
               </tr>
               <tr>
               		<th>상영시간</th>
               		<td>${dto.runningtime }분</td>
               </tr>
           </table> <!-- .movieInfo -->
<script>
	var ratingCode;
	switch("${dto.ratingcode}"){
	case "15":
		ratingCode="15세";
		break;
	case "12":
		ratingCode="12세";
		break;
	case "All":
		ratingCode="전체";
		break;
	case "19":
		ratingCode="19세";
		break;
	}
	console.log(ratingCode);
	let ratingCodeTxt = document.createTextNode(ratingCode);
	var ratingAge = document.querySelector('#ratingAge');
	ratingAge.appendChild(ratingCodeTxt);
</script>



           <div class="movieBtns">
               <button class="bookingBtn">예매하기</button>

               <div class="movieInfoBtns">
                   <ul>
                       <li><button>주요정보</button></li>
                       <li><button type="button" onclick="location.href='#gallery'">포스터/스틸컷</button></li>
                       <li><button type="button" onclick="location.href='#review'">평점/관람평</button></li>
                       <li><button>상영시간표</button></li>
                   </ul>
               </div> <!-- .movieInfoBtns -->
           </div> <!-- .movieBtns -->

           <div class="movieInfoDetail">
           	${dto.summary}
            </div> <!-- .movieInfoDetail -->
       </div> <!-- #contents .contentsMovieDetail-->
<section >
<div class="reviewLine"></div>

<%@include file="movieStillcut.jsp" %>

<%@include file="review.jsp" %>

</section>       
<%@include file="../main/footer.jsp" %>
</div>

</body>
</html>