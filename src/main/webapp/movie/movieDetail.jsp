<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="movieTitle">엑시트</title>
    
	<link rel="stylesheet" href="../resource/css/header_footer.css?ver=6">
    <link rel="stylesheet" href="../resource/css/movie_detail.css">

    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="../main/header.jsp" %>
<iframe width="100%" height="600" src="https://www.youtube.com/embed/li4jOV5j7SI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<!-- 예고편 -->

   <div id="wrap">
	
       <div id="contents" class="contentsMovieDetail">
           <div class="movieSummary">
               <h3>엑시트</h3>
               <p class="subTitle">Exit, 2019</p>
               <img src="../resource/img/poster/엑시트.jpg" alt="">

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
                   <td><a href="">이상근</a></td>
               </tr>
               <tr>
                   <th>출연</th>
                   <td>
                       <a href=""> 조정석</a>
                       <a href=""> 윤아</a>
                        고두심
                        박인환
                        김지영
                        강기영
                   </td>
               </tr>
               <tr>
                   <th>장르</th>
                   <td><a href="">액션</a>, <a href="">코미디</a></td>
               </tr>
               <tr>
                   <th>국가</th>
                   <td>한국</td>
               </tr>
               <tr>
                   <th>등급</th>
                   <td>12세 관람가</td>
               </tr>
               <tr>
                   <th>개봉</th>
                   <td class="movieDate">2019.07.31</td>
               </tr>
           </table> <!-- .movieInfo -->

           <div class="movieBtns">
               <button class="bookingBtn">예매하기</button>

               <div class="movieInfoBtns">
                   <ul>
                       <li><button>주요정보</button></li>
                       <li><button>트레일러</button></li>
                       <li><button>포스터 · 스틸컷</button></li>
                       <li><button>평점/관람평</button></li>
                       <li><button>상영시간표</button></li>
                   </ul>
               </div> <!-- .movieInfoBtns -->
           </div> <!-- .movieBtns -->

           <div class="movieInfoDetail">
               Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </div> <!-- .movieInfoDetail -->
       </div> <!-- #contents .contentsMovieDetail-->
<%@include file="../main/footer.jsp" %>
</div>


</body>
</html>