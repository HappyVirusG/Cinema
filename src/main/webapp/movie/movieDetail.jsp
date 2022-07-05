<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="movieTitle">탑건-매버릭</title>
    
	<link rel="stylesheet" href="../resource/css/header_footer.css?ver=5">
    <link rel="stylesheet" href="../resource/css/movie_detail.css?ver=3">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<%@include file="../main/header.jsp" %>
<iframe width="100%" height="600" src="${dto.youtube}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<!-- 예고편 -->

   <div id="wrap">
	
       <div id="contents" class="contentsMovieDetail">
           <div class="movieSummary">
               <h3>
               ${ dto.title }
               </h3>
               <p class="subTitle">${dto.engtitle}, 
               	<fmt:formatDate pattern="yyyy" value="${dto.opendate}"/>
               </p>
               <img src="${dto.image}" alt="">

               <div class="nowScreen">현재상영중</div>

               <ul class="rating">
                   <li>관람객 평점 <span class="boxOffice">8.99</span></li>
                   <li>예매율 <span class="boxOffice">20.2%</span></li>
                   <li>누적관객수 <span class="boxOffice">900,0000</span></li>
               </ul>
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
                   <td><a href="">${dto.genre}</a>
               </tr>
               <tr>
                   <th>국가</th>
                   <td>${dto.country}</td>
               </tr>
               <tr>
                   <th>등급</th>
                   <td>${dto.ratingcode} 관람가</td>
               </tr>
               <tr>
                   <th>개봉</th>
                   <td class="movieDate">${dto.opendate}</td>
               </tr>
           </table> <!-- .movieInfo -->

           <div class="movieBtns">
               <button class="bookingBtn">예매하기</button>

               <div class="movieInfoBtns">
                   <ul>
                       <li><button>주요정보</button></li>
                       <li><button>포스터/스틸컷</button></li>
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
<!--    <script>
   	$(document).ready(function(){
   		getAjaxJsonData("../model/review.do", "", "../model/movieDetail.do")
   	});
   </script> -->

<%@include file="review.jsp" %>

</section>       
<%@include file="../main/footer.jsp" %>
</div>


</body>
</html>