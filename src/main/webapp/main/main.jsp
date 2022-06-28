<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린시네마</title>
    
    
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=1">
    <link rel="stylesheet" href="../resource/css/minji_main.css?ver=2">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>

<%@include file="header.jsp" %>
    <div id = "container">

        <div id = "two_section">

            <section id = "main_slide">

                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="./img/mainposter_buz.jpg" class="d-block w-100" alt="버즈 라이트 이어 포스터">
                      </div>
                      <div class="carousel-item">
                        <img src="./img/tom.jpg" class="d-block w-100" alt="톰크루즈">
                      </div>
                      <div class="carousel-item">
                        <img src="./img/ma.jpg" class="d-block w-100" alt="마녀2">
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
                <img id="icon1" src="./img/icon1.png" alt="">
                <a><p>상영시간표</p></a>
                <img id="icon2" src="./img/icon2.png" alt="">
                <a><p>박스오피스</p></a>
                <img id="icon3" src="./img/icon34.png" alt="">
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

            <div id="sub_imgs">

                <div class="sub_img">
                    <a href="#">
                        <img src="./img/frozen.jpg" alt="예매바로가기1">
                        <p class="over">
                            <img id="one" src="./img/click_icon.png">
                        </p>
                    </a>
                </div>
           
                <div class="sub_img">
                    <a href="#">
                        <img src="./img/parasite.jpg" alt="예매바로가기2">
                        <p class="over">
                            <img id="one" src="./img/click_icon.png">
                        </p>
                    </a>
                </div>
        
                <div class="sub_img">
                    <a href="#">
                        <img src="./img/dark.jpg" alt="예매바로가기3">
                        <p class="over">
                            <img id="one" src="./img/click_icon.png">
                        </p>
                    </a>
                </div>
       
                <div class="sub_img">
                    <a href="#">
                        <img src="./img/exit.jpg" alt="예매바로가기4">
                        <p class="over">
                            <img id="one" src="./img/click_icon.png">
                        </p>
                    </a>
                </div>
            </div>

            <div id="sub_img_explanation">
                <div>
                    <p>겨울왕국2<br>예매율 55.3% | <img class="star" src="./img/star.png"> 9.8</p>
                </div>

                <div>
                    <p>기생충<br>예매율 26.8% | <img class="star" src="./img/star.png"> 9.1</p>
                </div>

                <div>
                    <p>다크나이트라이즈<br>예매율 10.1% | <img class="star" src="./img/star.png"> 8.4</p>
                </div>

                <div>
                    <p>엑시트<br>예매율 3.2% | <img class="star" src="./img/star.png"> 9.3</p>
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
                    <a href=""><img src="./img/event1.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="./img/event2.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="./img/event3.jpg" alt=""></a>
                    <a href=""><p> [한국 영화 천만 달성 기념] CGV가 천만P 쏜다!</p></a>
                </div>

            </div><!--.event(이벤트)--> 

            <div class = "advertisement">
                <img src="./img/ad.jpg" alt="">
            </div><!--.advertisement(광고)--> 

        </section>

    </div> <!--container끝-->

    
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<%@include file="footer.jsp" %>

</body>
</html>
