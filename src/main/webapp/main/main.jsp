<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린시네마</title>
    
    <!-- css연결 -->
    <link rel="stylesheet" href="../resource/css/minji_main.css?ver=5">
    <link rel="stylesheet" href="../resource/css/movie_info_modal.css?ver=1">

    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
   
</head>
<body>

<%@include file="header.jsp" %>

<div id="wrap">
    <div id = "container">

        <div id = "two_section">

            <section id = "main_slide">

                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="../resource/img/main/버즈라이트이어_main.jpg" class="d-block w-100" alt="버즈 라이트 이어 포스터">
                      </div>
                      <div class="carousel-item">
                        <img src="../resource/img/main/탑건매버릭_main.jpg" class="d-block w-100" alt="톰크루즈">
                      </div>
                      <div class="carousel-item">
                        <img src="../resource/img/main/마녀2_main.jpg" class="d-block w-100" alt="마녀2">
                      </div>
                    </div>
                </div>
                
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>

                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
			<section class = "booking">
                <form action="#">
                    <input type="text" class="movieName" id="movieName">
                    <button id="sharch" type="button" onclick="newRegister()">검색</button>
                </form>
                <img id="icon1" src="../resource/img/main/icon1.png" alt="">
                <a><p>상영시간표</p></a>
                <img id="icon2" src="../resource/img/main/icon2.png" alt="">
                <a><p>박스오피스</p></a>
                <img id="icon3" src="../resource/img/main/icon34.png" alt="">
                <a><p>빠른예매</p></a>
            </section><!--.booking(빠른예매부분)--> 
            </section><!--.main_slide(포스터부분)--> 
        </div>

        <section class = "movie_info">

            <div class="movie_info_title">
                <a href=""><p class="box_office">박스오피스</p></a>
                <button id="movie_more" type="button" onclick="">
                    <p>영화 더보기</p>
                    <p>></p>
                </button>
            </div>
<div id="modalBck"></div> <!-- #modalBck -->
<div id="modal">
  <img src="../resource/img/poster/탑건매버릭.jpg" alt="">

 <div id="contents" class="contentsMovieDetail">

           <div class="movieSummary">
               <h3>탑건-매버릭</h3>
               <p class="subTitle">Top Gun: Maverick, 2022</p>
              

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
     <div id="modalBtns">
       	<button type="button" class="closeBtn" onclick="modalClose();">x</button>
     	<button type="button" class="bookingBtn">예매하기</button>
     	<a href="../model/movieDetail.do" class="detailBtn">관람평/스틸컷까지 함께 보기</a>
     </div>
</div> <!-- #modal -->

<script>
	const modal = document.getElementById("modal");
	const modalBack = document.getElementById('modalBck');
	function modalFunc(){
		modal.style.display="flex";
		modalBack.style.display="block";
	}
	
	function modalClose(){
		modal.style.display="none";
		modalBack.style.display="none";
	}
</script>

            <div id="sub_imgs">
                <div class="sub_img">
                   <a href="javascript:void(0);" onclick="modalFunc();">
                        <img src="../resource/img/poster/탑건매버릭.jpg" alt="예매바로가기1">
                        <p class="over"></p>
                    </a>
                </div>
           
                <div class="sub_img">
                    <a href="#">
                        <img src="../resource/img/poster/버즈라이트이어.jpg" alt="예매바로가기2">
                        <p class="over">
                            <img id="one" src="../resource/img/main/click_icon.png">
                        </p>
                    </a>
                </div>
        
                <div class="sub_img">
                    <a href="#">
                        <img src="../resource/img/poster/마녀2.jpg" alt="예매바로가기3">
                        <p class="over">
                            <img id="one" src="../resource/img/main/click_icon.png">
                        </p>
                    </a>
                </div>
       
                <div class="sub_img">
                    <a href="#">
                        <img src="../resource/img/poster/마녀2.jpg" alt="예매바로가기4">
                        <p class="over">
                            <img id="one" src="../resource/img/main/click_icon.png">
                        </p>
                    </a>
                </div>
            </div>

            <div id="sub_img_explanation">
                <div>
                    <p>탑건:매버릭<br>예매율 55.3% | <img class="star" src="../resource/img/main/star.png"> 9.8</p>
                </div>

                <div>
                    <p>버즈 라이트 이어<br>예매율 26.8% | <img class="star" src="../resource/img/main/star.png"> 9.1</p>
                </div>

                <div>
                    <p>마녀2<br>예매율 10.1% | <img class="star" src="../resource/img/main/star.png"> 8.4</p>
                </div>

                <div>
                    <p>마녀2<br>예매율 3.2% | <img class="star" src="../resource/img/main/star.png"> 9.3</p>
                </div>
            </div>
       

        </section><!--.movie_info(영화정보소개부분)--> 
       
        <section>

            <div class="event_title">
                <a href=""><p class="EVENT">EVENT</p></a>
                <a href = "./Hello.jsp">
               		<button id="look_at_whole" type="button">
	                	<p>전체보기</p>
	                    <p>></p>
              		</button>
               </a>
            </div>

            <div id = "event">
                <div class="eventin">
                    <a href=""><img src="../resource/img/main/event1.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="../resource/img/main/event2.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="../resource/img/main/event3.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

            </div><!--.event(이벤트)--> 

            <div class = "advertisement">
                <img src="../resource/img/main/ad.jpg" alt="">
            </div><!--.advertisement(광고)--> 

        </section>

    </div> <!--container끝-->
 </div>
   <script src="https://ajax.googleapis.com/ajax/libs/cesiumjs/1.78/Build/Cesium/Cesium.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%@include file="footer.jsp" %>

</body>
</html>
