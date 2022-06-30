<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        /* body {
            position: relative;
        } */
        .seat {
            width: 30px;
            height: 30px;
        }
        
        .clicked {
            background-color: red;
            color: white;
        }

        /* .seat-wrapper {
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -150px;
        } */
    </style>
    <link rel="stylesheet" href="../resource/css/seat.css">
</head>
<body>
	<div class="select-seat-wrapper">
        <div class="seat-title">
            인원/좌석
            <form action="">
                <input type="reset" value="다시하기">
            </form>
        </div> <!-- .seat-title -->
        <div class="people-movie">
            <div class="select-people">
                <div class="normal-people">
                    <span>일반</span>
                    <form action="">
                        <input type="button" class="btn-normal" value="0">
                        <input type="button" class="btn-normal" value="1">
                        <input type="button" class="btn-normal" value="2">
                        <input type="button" class="btn-normal" value="3">
                        <input type="button" class="btn-normal" value="4">
                        <input type="button" class="btn-normal" value="5">
                        <input type="button" class="btn-normal" value="6">
                        <input type="button" class="btn-normal" value="7">
                        <input type="button" class="btn-normal" value="8">
                    </form>
                </div>
                <div class="young-people">
                    <span>청소년</span>
                    <form action="">
                        <input type="button" class="btn-normal" value="0">
                        <input type="button" class="btn-normal" value="1">
                        <input type="button" class="btn-normal" value="2">
                        <input type="button" class="btn-normal" value="3">
                        <input type="button" class="btn-normal" value="4">
                        <input type="button" class="btn-normal" value="5">
                        <input type="button" class="btn-normal" value="6">
                        <input type="button" class="btn-normal" value="7">
                        <input type="button" class="btn-normal" value="8">
                    </form>
                </div>
                <div class="old-people">
                    <span>경로</span>
                    <form action="">
                        <input type="button" class="btn-normal" value="0">
                        <input type="button" class="btn-normal" value="1">
                        <input type="button" class="btn-normal" value="2">
                        <input type="button" class="btn-normal" value="3">
                        <input type="button" class="btn-normal" value="4">
                        <input type="button" class="btn-normal" value="5">
                        <input type="button" class="btn-normal" value="6">
                        <input type="button" class="btn-normal" value="7">
                        <input type="button" class="btn-normal" value="8">
                    </form>
                </div>
                <div class="great-people">
                    <span>우대</span>
                    <form action="">
                        <input type="button" class="btn-normal" value="0">
                        <input type="button" class="btn-normal" value="1">
                        <input type="button" class="btn-normal" value="2">
                        <input type="button" class="btn-normal" value="3">
                        <input type="button" class="btn-normal" value="4">
                        <input type="button" class="btn-normal" value="5">
                        <input type="button" class="btn-normal" value="6">
                        <input type="button" class="btn-normal" value="7">
                        <input type="button" class="btn-normal" value="8">
                    </form>
                </div>
            </div> <!-- .select-people -->
            <div class="movie-info">

            </div>
        </div> <!-- .people-movie -->
        <div class="select-seat">
            <div class="seat-wrapper"></div>
        </div>
    </div> <!-- .select-seat-wrapper -->
    <script src="../resource/JS/seat.js"></script>
</body>
</html>