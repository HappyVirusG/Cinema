<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화 - 그린 시네마</title>
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=8">
    <link rel="stylesheet" href="../resource/css/movie_list.css?ver=3">

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
            <li>
                <a href="../model/movieDetail.do">
                    <img src="../resource/img/poster/탑건매버릭.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating12">12</span>
                        <span class="movieTitle">탑건: 매버릭</span>
                    </p>
                    
                    <p>예매율 <span class="boxOffice">46.2%</span> </p>
                    <p class="movieDate">2022.06.22</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/마녀2.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating15">15</span>
                        <span class="movieTitle">마녀2</span>
                    </p>
                    <p>예매율 <span class="boxOffice">4.6%</span> </p>
                    <p class="movieDate">2022.06.15</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/버즈라이트이어.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="ratingAll">All</span>
                        <span class="movieTitle">버즈 라이트 이어</span>
                    </p>
                    
                    <p>예매율 <span class="boxOffice">0.2%</span> </p>
                    <p class="movieDate">2022.06.15</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/다크나이트.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating15">15</span>
                        <span class="movieTitle">다크나이트</span>
                    </p>
                    <p>예매율 <span class="boxOffice">20.2%</span> </p>
                    <p class="movieDate">2008.08.06</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
        </ul>

    </div>
</div> <!-- wrap -->

<%@include file="../main/footer.jsp" %>
    
</body>
</html>