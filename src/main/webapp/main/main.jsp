<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.MovieDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.MovieDAO"%>
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
    <title>그린시네마</title>
    
    <!-- css연결 -->
    <link rel="stylesheet" href="../resource/css/minji_main.css?ver=6">
    <link rel="stylesheet" href="../resource/css/movie_info_modal.css?ver=3">

    <!-- font-family -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500&display=swap" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/cesiumjs/1.78/Build/Cesium/Cesium.js"></script>
   	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>

<%@include file="header.jsp" %>

<div id="wrap">
    <div id = "container">
        <div id = "two_section">

<!--             
<section id = "main_slide">
<div id="galleryZone">
<p><img src="../resource/img/main/pos_1.jpg" alt="" id="photo"></p>
</div>

<button onclick="gallery(0)" class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="visually-hidden">Previous</span>
</button>

<button onclick="gallery(1)" class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="visually-hidden">Next</span>
</button> 
-->
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="../resource/img/main/pos_1.jpg" class="d-block w-100" alt="버즈 라이트 이어 포스터">
                      </div>
                      <div class="carousel-item">
                        <img src="../resource/img/main/pos_2.jpg" class="d-block w-100" alt="톰크루즈">
                      </div>
                      <div class="carousel-item">
                        <img src="../resource/img/main/pos_3.jpg" class="d-block w-100" alt="마녀2">
                      </div>
                      <div class="carousel-item">
                        <img src="../resource/img/main/pos_4.jpg" class="d-block w-100" alt="마녀2">
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
            </section> <!--.booking(빠른예매부분)--> 
            </section> <!--.main_slide(포스터부분)--> 
            
        </div>

        <section class = "movie_info">

            <div class="movie_info_title">
                <a href=""><p class="box_office">박스오피스</p></a>
                <button id="movie_more" type="button" onclick="">
                    <p>영화 더보기</p>
                    <p>></p>
                </button>
            </div>
      
<%
	MovieDAO dao = new MovieDAO(application);
	Map<String, Object> map = new HashMap<String, Object>();
	
	String searchField = request.getParameter("searchField");
	String searchWord = request.getParameter("searchWord");
	
	if(searchWord != null){
		map.put("searchField", searchField);
		map.put("searchWord", searchWord);
	}
	int totalCount = dao.movieCount(map);
	List<MovieDTO> boardLists = dao.selectMainPage(map);
	dao.close();
%>            
            <div id="sub_imgs">
            	<%if(!boardLists.isEmpty()){
					for(MovieDTO dto : boardLists){
				%>	
				 <div class="sub_img">
                   <a href="javascript:void(0);" onclick="modalFunc();">
                        <img src="<%=dto.getImage() %>" alt="예매바로가기1">
                        <p class="over"></p>
                   </a>
                </div>
                <%
					}
				} %>
            </div>
             
            <div id="sub_img_explanation">
            	<%if(!boardLists.isEmpty()){
					for(MovieDTO dto : boardLists){ %>	
                <div>
                    <p><%=dto.getTitle() %><br>예매율 55.3% | <img class="star" src="../resource/img/main/star.png"> 9.8</p>
                </div>
				<%
					}
				} %>
			</div>
        </section><!--.movie_info(영화정보소개부분)--> 
        
<%
if(!boardLists.isEmpty()){
	for(MovieDTO dto : boardLists){ 
		
%>


     

<div id="modalBck"></div> <!-- #modalBck -->
<div id="modal">
  <img src="<%=dto.getImage() %>" alt="">

 <div id="contents" class="contentsMovieDetail">
           <div class="movieSummary">
               <h3><%=dto.getTitle() %></h3>
               <p class="subTitle"><%=dto.getEngtitle() %>,
               <fmt:formatDate pattern="yyyy" value="<%=dto.getOpendate()%>"/>
               </p>
               <ul class="rating">
                   <li>관람객 평점 <span class="boxOffice">8.99</span></li>
                   <li>예매율 <span class="boxOffice">20.2%</span></li>
                   <li>누적관객수 <span class="boxOffice">900,0000</span></li>
               </ul>
           </div> <!-- .movieSummary -->

           <table class="movieInfo">
               <tr>
                   <th>감독</th>
                   <td><a href=""><%=dto.getDirector() %></a></td>
               </tr>
               <tr>
                   <th>출연</th>
                   <td>
                       <a href=""><%=dto.getActors() %></a>
                   </td>
               </tr>
               <tr>
                   <th>장르</th>
                   <td><a href=""><%=dto.getGenre() %></a>
               </tr>
               <tr>
                   <th>국가</th>
                   <td><%=dto.getCountry() %></td>
               </tr>
               <tr>
                   <th>등급</th>
                   <td><%=dto.getRatingcode() %></td>
               </tr>
               <tr>
                   <th>개봉</th>
                   <td class="movieDate"><%=dto.getOpendate() %></td>
               </tr>
           </table> <!-- .movieInfo -->

           <div class="movieInfoDetail">
           		<%=dto.getSummary() %>
            </div> <!-- .movieInfoDetail -->
       </div> <!-- #contents .contentsMovieDetail-->
     <div id="modalBtns">
       	<button type="button" class="closeBtn" onclick="modalClose();">x</button>
     	<button type="button" class="bookingBtn">예매하기</button>
     	<a href="../model/movieDetail.do?moviecode="<%=dto.getMoviecode() %> class="detailBtn">관람평/스틸컷까지 함께 보기</a>
     </div>     
</div> <!-- #modal -->

<%
	}
} %>       
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
                    <a href=""><img src="../resource/img/main/event_1.jpg" alt=""></a>
                    <a href=""><p> [토르: 러브 앤 썬더] 마이티토르 묠니르컵 론칭!</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="../resource/img/main/event_2.jpg" alt=""></a>
                    <a href=""><p> [엘비스] SX 리미티드 포스터</p></a>
                </div>

                <div class="eventin">
                    <a href=""><img src="../resource/img/main/event_3.jpg" alt=""></a>
                    <a href=""><p> [이달의 아이스콘] 7월 라인업 미리 만나보기</p></a>
                </div>

            </div><!--.event(이벤트)--> 
            <div class = "advertisement">
                <img src="../resource/img/main/ad.jpg" alt="">
            </div><!--.advertisement(광고)--> 

        </section>

    </div> <!--container끝-->
 </div>
    <script>
        let num = 1;

        function gallery(direct){
            if(direct){
                if (num == 4) { 
                   num=1;
                } else {
                    num++;
                }
            } 
            
            else {
                if (num == 1) { 
                    num=4;
                } else {
                    num--;
                } 
            }

            let imgTag = document.querySelector("#photo");
            imgTag.setAttribute("src", "../resource/img/main/pos_" + num + ".jpg")
       
        }
    </script>
 
 <script type="text/javascript">
 
 const modal = document.getElementById("modal");
 const modalBack =document.getElementById('modalBck');
 	function modalFunc(){

 		modal.style.display="flex";
 		modalBack.style.display="block";
 	}
 	
 	function modalClose(){
 		modal.style.display="none";
 		modalBack.style.display="none";
 	}
</script>

 
   
<%@include file="footer.jsp" %>

</body>
</html>
