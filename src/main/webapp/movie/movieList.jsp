<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화 - 그린 시네마</title>
    <link rel="stylesheet" href="../resource/css/header_footer.css?ver=5">
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
                <a href="movieDetail.jsp">
                    <img src="../resource/img/poster/엑시트.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating12">12</span>
                        <span class="movieTitle">엑시트</span>
                    </p>
                    
                    <p>예매율 <span class="boxOffice">20.2%</span> </p>
                    <p class="movieDate">2019.07.31</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/기생충.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating15">15</span>
                        <span class="movieTitle">기생충</span>
                    </p>
                    <p>예매율 <span class="boxOffice">20.2%</span> </p>
                    <p class="movieDate">2019.05.30</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/겨울왕국.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="ratingAll">All</span>
                        <span class="movieTitle">겨울왕국</span>
                    </p>
                    
                    <p>예매율 <span class="boxOffice">20.2%</span> </p>
                    <p class="movieDate">2014.01.16</p>
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

        <ul>
            <li>
                <a href="">
                    <img src="../resource/img/poster/엑시트.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating12">12</span>
                        <span class="movieTitle">엑시트</span>
                    </p>
                    
                    <p>예매율 <span>20.2%</span> </p>
                    <p class="movieDate">2019.07.31</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/기생충.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="rating15">15</span>
                        <span class="movieTitle">기생충</span>
                    </p>
                    <p>예매율 <span>20.2%</span> </p>
                    <p class="movieDate">2019.05.30</p>
                </a>
                <button class="bookingBtn">예매하기</button>
            </li>
            <li>
                <a href="">
                    <img src="../resource/img/poster/겨울왕국.jpg" alt=""><br/>
                    <p class="movieChartTitle">
                        <span class="rating" id="ratingAll">All</span>
                        <span class="movieTitle">겨울왕국</span>
                    </p>
                    
                    <p>예매율 <span>20.2%</span> </p>
                    <p class="movieDate">2014.01.16</p>
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
                    <p>예매율 <span>20.2%</span> </p>
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