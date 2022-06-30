<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resource/css/seat.css">
</head>
<body>
	 <div class="select-seat-wrapper">
        <input type="reset" value="다시하기" class="reset">

        <div class="seat-title">
            <div class="people-seat">
                인원/좌석
            </div>
        </div> <!-- .seat-title -->
        <div class="people-movie">
            <div class="select-people">
                <div class="normal-people age">
                    <span class="title">일반</span>
                    <ul>
                        <li date-count="0" type="adult" class="adult" id="clicked"><a href="#" id="text-clicked">0</a></li>
                        <li date-count="1" type="adult" class="adult"><a href="#">1</a></li>
                        <li date-count="2" type="adult" class="adult"><a href="#">2</a></li>
                        <li date-count="3" type="adult" class="adult"><a href="#">3</a></li>
                        <li date-count="4" type="adult" class="adult"><a href="#">4</a></li>
                        <li date-count="5" type="adult" class="adult"><a href="#">5</a></li>
                        <li date-count="6" type="adult" class="adult"><a href="#">6</a></li>
                        <li date-count="7" type="adult" class="adult"><a href="#">7</a></li>
                        <li date-count="8" type="adult" class="adult"><a href="#">8</a></li>
                    </ul>
                </div>
                <div class="young-people age">
                    <span class="title">청소년</span>
                    <ul>
                        <li date-count="0" type="youth" class="youth" id="clicked"><a href="#" id="text-clicked">0</a></li>
                        <li date-count="1" type="youth" class="youth"><a href="#">1</a></li>
                        <li date-count="2" type="youth" class="youth"><a href="#">2</a></li>
                        <li date-count="3" type="youth" class="youth"><a href="#">3</a></li>
                        <li date-count="4" type="youth" class="youth"><a href="#">4</a></li>
                        <li date-count="5" type="youth" class="youth"><a href="#">5</a></li>
                        <li date-count="6" type="youth" class="youth"><a href="#">6</a></li>
                        <li date-count="7" type="youth" class="youth"><a href="#">7</a></li>
                        <li date-count="8" type="youth" class="youth"><a href="#">8</a></li>
                    </ul>
                </div>
                <div class="old-people age">
                    <span class="title">경로</span>
                    <ul>
                        <li date-count="0" type="senior" class="senior" id="clicked"><a href="#" id="text-clicked">0</a></li>
                        <li date-count="1" type="senior" class="senior"><a href="#">1</a></li>
                        <li date-count="2" type="senior" class="senior"><a href="#">2</a></li>
                        <li date-count="3" type="senior" class="senior"><a href="#">3</a></li>
                        <li date-count="4" type="senior" class="senior"><a href="#">4</a></li>
                        <li date-count="5" type="senior" class="senior"><a href="#">5</a></li>
                        <li date-count="6" type="senior" class="senior"><a href="#">6</a></li>
                        <li date-count="7" type="senior" class="senior"><a href="#">7</a></li>
                        <li date-count="8" type="senior" class="senior"><a href="#">8</a></li>
                    </ul>
                </div>
                <div class="great-peopleage age">
                    <span class="title">우대</span>
                    <ul>
                        <li date-count="0" type="special" class="special" id="clicked"><a href="#" id="text-clicked">0</a></li>
                        <li date-count="1" type="special" class="special"><a href="#">1</a></li>
                        <li date-count="2" type="special" class="special"><a href="#">2</a></li>
                        <li date-count="3" type="special" class="special"><a href="#">3</a></li>
                        <li date-count="4" type="special" class="special"><a href="#">4</a></li>
                        <li date-count="5" type="special" class="special"><a href="#">5</a></li>
                        <li date-count="6" type="special" class="special"><a href="#">6</a></li>
                        <li date-count="7" type="special" class="special"><a href="#">7</a></li>
                        <li date-count="8" type="special" class="special"><a href="#">8</a></li>
                    </ul>
                </div>
            </div> <!-- .select-people -->
            <div class="movie-info">
            </div> <!-- .movie-info -->
        </div> <!-- .people-movie -->

        <div class="select-seat">
            <div class="screen">
                <span class="text"></span>
            </div>
            <div class="seat-wrapper"></div>
        </div> <!-- .select-seat -->
    </div> <!-- .select-seat-wrapper -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        $('.adult').click(function() {
            $(this).attr('id', 'clicked');
            $('.adult').not($(this)).removeAttr('id', 'clicked');

            $(this).find('a').attr('id', 'text-clicked');
            // $('.adult').find('a').not($(this)).removeAttr('id', 'text-clicked');
        })
        $('.youth').click(function() {
            $(this).attr('id', 'clicked');
            $('.youth').not($(this)).removeAttr('id', 'clicked');

            $(this).find('a').attr('id', 'text-clicked');
            // $('.adult').find('a').not($(this)).removeAttr('id', 'text-clicked');
        })
        $('.senior').click(function() {
            $(this).attr('id', 'clicked');
            $('.senior').not($(this)).removeAttr('id', 'clicked');

            $(this).find('a').attr('id', 'text-clicked');
            // $('.adult').find('a').not($(this)).removeAttr('id', 'text-clicked');
        })
        $('.special').click(function() {
            $(this).attr('id', 'clicked');
            $('.special').not($(this)).removeAttr('id', 'clicked');

            $(this).find('a').attr('id', 'text-clicked');
            // $('.adult').find('a').not($(this)).removeAttr('id', 'text-clicked');
        })

        $('.seat').

        $('.reset').click(function() {
            location.reload();
        })
    </script>
    <script src="../resource/JS/seat.js"></script>
</body>
</html>