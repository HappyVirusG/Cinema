<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title class="movieTitle">탑건-매버릭</title>
    
	<link rel="stylesheet" href="../resource/css/header_footer.css?ver=5">
    <link rel="stylesheet" href="../resource/css/movie_detail.css?ver=3">
    <link rel="stylesheet" href="../resource/css/review.css?ver=4">

    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<%@include file="../main/header.jsp" %>
<iframe width="100%" height="600" src="https://www.youtube.com/embed/Mrj9XACVJ8U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<!-- 예고편 -->

   <div id="wrap">
	
       <div id="contents" class="contentsMovieDetail">
           <div class="movieSummary">
               <h3>탑건-매버릭</h3>
               <p class="subTitle">Top Gun: Maverick, 2022</p>
               <img src="../resource/img/poster/탑건매버릭.jpg" alt="">

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
                   <td><a href="">조셉 코신스키</a></td>
               </tr>
               <tr>
                   <th>출연</th>
                   <td>
                       <a href=""> 톰 크루즈</a>
                       <a href=""> 마일즈 텔러</a>
                        제니퍼 코넬리
                   </td>
               </tr>
               <tr>
                   <th>장르</th>
                   <td><a href="">액션</a>
               </tr>
               <tr>
                   <th>국가</th>
                   <td>미국</td>
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
                       <li><button>포스터/스틸컷</button></li>
                       <li><button type="button" onclick="location.href='#review'">평점/관람평</button></li>
                       <li><button>상영시간표</button></li>
                   </ul>
               </div> <!-- .movieInfoBtns -->
           </div> <!-- .movieBtns -->

           <div class="movieInfoDetail">
한순간의 실수도 용납되지 않는 하늘 위, <br/>
가장 압도적인 비행이 시작된다! <br/>
 <br/>
최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다. <br/> 
그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다. <br/> 
 <br/>
매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자 <br/>
매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데… 
            </div> <!-- .movieInfoDetail -->
       </div> <!-- #contents .contentsMovieDetail-->
<section >
<%@include file="review.jsp" %>
</section>       
<%@include file="../main/footer.jsp" %>
</div>


</body>
</html>