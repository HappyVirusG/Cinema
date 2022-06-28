<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking</title>
<link rel="stylesheet" href="../resource/css/booking.css">
<link rel="stylesheet" href="../resource/css/header_footer.css">
</head>
<body>
<%@include file="../main/header.jsp" %>


	<div class="reserve-container">
		<div class="movie-reserve">
		    <div class="reserve-title">영화</div>
		    <div class="sort-wrapper">
		        <div class="sort-rate sort-selected">예매율순</div>
		        <div class="sort-korean">가나다순</div>
		    </div>
		    <div class="movie-list">
	        	<ul>
                       <li class="selectMovie frozen">
                           <a href="#">
                               <span class="movieAge all"></span>
                               <span class="movieName frozen">겨울왕국</span>
                           </a>
                       </li>
                       <li class="selectMovie parasite">
                           <a href="#">
                               <span class="movieAge fifteen"></span>
                               <span class="movieName parasite">기생충</span>
                           </a>
                       </li>
                       <li class="selectMovie theDarkKnight">
                           <a href="#">
                               <span class="movieAge fifteen"></span>
                               <span class="movieName theDarkKnight">다크나이트</span>
                           </a>
                       </li>
                       <li class="selectMovie exit">
                           <a href="#">
                               <span class="movieAge twelve"></span>
                               <span class="movieName exit">엑시트</span>
                           </a>
                       </li>
                   </ul>
		    </div>
		</div> <!-- .movie-reserve -->
		<div class="theater-reserve">
		    <div class="reserve-title">극장</div>
		    <div class="theater-list">
		        <div class="hall-theater">
		            <form action="" class="theater-form">
		                <ul class="localName">
		                    <li><button type="button" class="localButton first_button localSeoul theaterOn">서울(32)</button></li>
		                    <li><button type="button" class="localGyeonggi localButton">경기(54)</button></li>
		                    <li><button type="button" class="localButton localIncheon localIncheon">인천(12)</button></li>
		                    <li><button type="button" class="localButton localGangwon">강원(5)</button></li>
		                    <li><button type="button" class="localButton localDaejeon">대전/충청(23)</button></li>
		                    <li><button type="button" class="localButton localDaegu">대구(7)</button></li>
		                    <li><button type="button" class="localButton localUlsan">부산/울산(17)</button></li>
		                    <li><button type="button" class="localButton localGyeongsang">경상(17)</button></li>
		                    <li><button type="button" class="localButton last_button localJeju">광주/전라/제주(24)</button></li>
		               </ul>
		            </form> 
		            <form action="#">
		                <ul class="localTheater">
		                    <div class="theater_button">
		                        <ul class="theater_seoul theaterCommon">
		                            <li><button type="button" class="seoulButton buttonCommon theaterButtonOn">강남</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">강변</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">건대입구</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">구로</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">대학로</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">동대문</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">등촌</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">명동</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">명동역 씨네라이브러리</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">목동</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">미아</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">방학</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">불광</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">상봉</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">성신여대입구</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">송파</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">수유</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">신촌아트레온</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">씨네드쉐프 압구정</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">씨네드쉐프 용산아이파크몰</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">압구정</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">여의도</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">연남</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">영등포</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">왕십리</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">용산아이파크몰</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">중계</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">천호</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">청담씨네시티</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">피카디리1958</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">하계</button></li>
		                            <li><button type="button" class="seoulButton buttonCommon">홍대</button></li>
		                        </ul> <!-- 서울 -->
		                        <ul class="theater_gyeonggi theaterCommon">
		                            <li><button type="button" class="gyeonggiButton buttonCommon">경기광주</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">고양행신</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">광교</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">광교상현</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">광명역</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">구리</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">기흥</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">김포</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">김포운양</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">김포한강</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">동백</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">동수원</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">동탄</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">동탄역</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">동탄호수공원</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">배곧</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">범계</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">부천</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">부천역</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">부천옥길</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">북수원</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">산본</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">서현</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">성남모란</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">소풍</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">수원</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">스타필드시티위례</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">시흥</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">안산</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">안성</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">야탑</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">양주옥정</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">역곡</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">오리</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">오산</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">오산중앙</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">용인</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">의정부</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">의정부태흥</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">이천</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">일산</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">정왕</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">파주문산</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">파주야당</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">판교</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">평촌</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">평택</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">평택고덕</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">평택소사</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">포천</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">하남미사</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">화성봉닭</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">화정</button></li>
		                            <li><button type="button" class="gyeonggiButton buttonCommon">Drive In 곤지암</button></li>
		                        </ul> <!-- 경기 -->
		                        <ul class="theater_incheon theaterCommon">
		                            <li><button type="button" class="incheonButton buttonCommon">계양</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">부평</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">송도타임스페이스</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">연수역</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">인천</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">인천논현</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">인천도화</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">인천연수</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">인천학익</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">주안역</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">청라</button></li>
		                            <li><button type="button" class="incheonButton buttonCommon">Drive In 스퀘어원</button></li>
		                        </ul> <!-- 인천 -->
		                        <ul class="theater_gangwon theaterCommon">
		                            <li><button type="button" class="gangwonButton buttonCommon">강릉</button></li>
		                            <li><button type="button" class="gangwonButton buttonCommon">원주</button></li>
		                            <li><button type="button" class="gangwonButton buttonCommon">원통</button></li>
		                            <li><button type="button" class="gangwonButton buttonCommon">인제</button></li>
		                            <li><button type="button" class="gangwonButton buttonCommon">춘천</button></li>
		                        </ul> <!-- 강원 -->
		                        <ul class="theater_daejeon theaterCommon">
		                            <li><button type="button" class="daejeonButton buttonCommon">논산</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">당진</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">대전</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">대전가수원</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">대전가오</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">대전탄방</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">대전터미널</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">서산</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">세종</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">유성노은</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">제천</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">천안</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">천안시청</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">천안터미널</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">천안펜타포트</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">청주성안길</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">청주율량</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">청주지웰시티</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">청주터미널</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">청주(서문)</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">충북혁신</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">충주교현</button></li>
		                            <li><button type="button" class="daejeonButton buttonCommon">홍성</button></li>
		                        </ul> <!-- 대전/충청 -->
		                        <ul class="theater_daegu theaterCommon">
		                            <li><button type="button" class="daeguButton buttonCommon">대구수성</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구스타디움</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구아카데미</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구연경</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구월성</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구한일</button></li>
		                            <li><button type="button" class="daeguButton buttonCommon">대구현대</button></li>
		                        </ul> <!-- 대구 -->
		                        <ul class="theater_ulsan theaterCommon">
		                            <li><button type="button" class="ulsanButton buttonCommon">대연</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">동래</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">부산명지</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">서면</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">서면삼정타워</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">서면상상마당</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">센텀시티</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">씨네드쉐프 센텀시티</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">아시아드</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">울산동구</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">울산삼산</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">울산신천</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">울산진장</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">정관</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">하단아트몰링</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">해운대</button></li>
		                            <li><button type="button" class="ulsanButton buttonCommon">화명</button></li>
		                        </ul> <!-- 부산/울산 -->
		                        <ul class="theater_gyeongsang theaterCommon">
		                            <li><button type="button" class="gyeongsangButton buttonCommon">거제</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">경산</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">고성</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">구미</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">김천율곡</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">김해</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">김해율하</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">김해장유</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">마산</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">북포항</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">안동</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">양산삼호</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">진주혁신</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">창원</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">창원더시티</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">창원상남</button></li>
		                            <li><button type="button" class="gyeongsangButton buttonCommon">포항</button></li>
		                        </ul> <!-- 경상 -->
		                        <ul class="theater_jeju theaterCommon">
		                            <li><button type="button" class="jejuButton buttonCommon">광양</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광양 엘에프스퀘어</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주금남로</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주상무</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주용봉</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주첨단</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주충장로</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주터미널</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">광주하남</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">군산</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">나주</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">목포</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">목포평화광장</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">서전주</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">순천</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">순천신대</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">여수웅천</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">익산</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">전주고사</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">전주에코시티</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">전주효자</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">정읍</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">제주</button></li>
		                            <li><button type="button" class="jejuButton buttonCommon">제주노형</button></li>
		                        </ul> <!-- 광주/전라/제주 -->
		                    </div> <!-- .teater_button -->
		                </ul> <!-- .localTheater -->
		            </form>   
		        </div> <!-- .hall-theater -->                   
		    </div> <!-- .theater-list -->
		</div> <!-- .theater-reserve -->
		<div class="date-reserve">
		    <div class="reserve-title">날짜</div>
		    <div class="date-list">
		        <div class="hallDate">
		            <div class="monthCommon">
		                <span class="year">2022</span>
		
		                <span class="six month">6</span>
		                <a href="#" class="selectDay six sun"><span class="dayweek">일</span><span class="day">19</span> </a>
		                <a href="#" class="selectDay six"><span class="dayweek">월</span><span class="day">20</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">화</span><span class="day">21</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">수</span><span class="day">22</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">목</span><span class="day">23</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">금</span><span class="day">24</span></a>
		                <a href="#" class="selectDay six sat"><span class="dayweek">토</span><span class="day">25</span></a>
		                <a href="#" class="selectDay six sun"><span class="dayweek">일</span><span class="day">26</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">월</span><span class="day">27</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">화</span><span class="day">28</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">수</span><span class="day">29</span></a>
		                <a href="#" class="selectDay six"><span class="dayweek">목</span><span class="day">30</span></a>
		
		                <span class="year">2022</span>
		
		                <span class="seven month">7</span>
		                <a href="#" class="selectDay seven"><span class="dayweek">금</span><span class="day">1</span> </a>
		                <a href="#" class="selectDay seven sat"><span class="dayweek">토</span><span class="day">2</span> </a>
		                <a href="#" class="selectDay seven sun"><span class="dayweek">일</span><span class="day">3</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">월</span><span class="day">4</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">화</span><span class="day">5</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">수</span><span class="day">6</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">목</span><span class="day">7</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">금</span><span class="day">8</span> </a>
		                <a href="#" class="selectDay seven sat"><span class="dayweek">토</span><span class="day">9</span> </a>
		                <a href="#" class="selectDay seven sun"><span class="dayweek">일</span><span class="day">10</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">월</span><span class="day">11</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">화</span><span class="day">12</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">수</span><span class="day">13</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">목</span><span class="day">14</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">금</span><span class="day">15</span> </a>
		                <a href="#" class="selectDay seven sat"><span class="dayweek">토</span><span class="day">16</span> </a>
		                <a href="#" class="selectDay seven sun"><span class="dayweek">일</span><span class="day">17</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">월</span><span class="day">18</span> </a>
		                <a href="#" class="selectDay seven"><span class="dayweek">화</span><span class="day">19</span> </a>
		            </div>
		        </div> <!-- .hallDate -->
		    </div> <!-- .date-list -->
		</div> <!-- .date-reserve -->
		<div class="time-reserve">
		    <div class="reserve-title">시간</div>
		    <div class="time-list">
		        <div class="timeButtonList">
		            <span class="plzTheater">영화, 극장, 날짜를 선택해주세요.</span>
		            <div class="theaterTime">
		                <div class="theater">
		                    <div class="theaterInfo">
		                        <span class="name">4DX 2D</span>
		                        <span class="floor">4DX관</span>
		                    </div>
		                    <ul>
		                        <li>
		                            <a href="#">
		                                <span class="time">09:30</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">12:30</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">14:50</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">17:00</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">19:45</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">22:00</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                    </ul>
		                </div>
		                <div class="theater">
		                    <div class="theaterInfo">
		                        <span class="name">2D</span>
		                        <span class="floor">2관</span>
		                    </div>
		                    <ul>
		                        <li>
		                            <a href="#">
		                                <span class="time">08:00</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">10:40</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">13:30</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">16:20</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">18:35</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                        <li>
		                            <a href="#">
		                                <span class="time">20:55</span>
		                                <span class="seat">100석</span>
		                            </a>
		                        </li>
		                    </ul>
		                </div>            
		            </div>
		            
		        </div>
		    </div>
		</div> <!-- .time-reserve -->
		</div> <!-- .reserve-container -->
		
		<div class="select-container">
		
		    <div class="select_wrap">
		        <p class="select_movie">영화선택</p>
		        <p class="select_theater">극장선택</p>  
		        <p class="select_seat">좌석선택</p>
		        <p class="select_pay">결제</p>
		    </div>
		    <div class="selected_wrap">
		        <span class="selected_movie"></span>
		        <span class="selected_local">극장 > <span class="local_text"></span></span>
		        <span class="selected_seat">일시 > <span class="date_text"></span></span>
		        <span class="selected_theater">상영관 > <span class="theater_text"></span></span>
		        <span class="selected_pay">인원 > <span class="person_text"></span></span>
		    </div>
		</div>



	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>    
      	//좌석선택 버튼 활성화
        $('.selectMovie').click(function() {
            $('.buttonCommon').click(function() {
                $('.selectDay').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('sd');
                })
                $('.btn_selectSeat').addClass('bc');
            })
            $('.selectDay').click(function() {
                $('.buttonCommon').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('bc');
                })
                $('.btn_selectSeat').addClass('sd');
            })
            $('.btn_selectSeat').addClass('sm');
        })

        $('.buttonCommon').click(function() {
            $('.selectMovie').click(function() {
                $('.selectDay').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('sd');
                })
                $('.btn_selectSeat').addClass('sm');
            })
            $('.selectDay').click(function() {
                $('.selectMovie').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('sm');
                })
                $('.btn_selectSeat').addClass('sd');
            })
            $('.btn_selectSeat').addClass('bc');
        })

        $('.selectDay').click(function() {
            $('.selectMovie').click(function() {
                $('.buttonCommon').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('bc');
                })
                $('.btn_selectSeat').addClass('sm');
            })
            $('.buttonCommon').click(function() {
                $('.selectMovie').click(function() {
                    $('.time').click(function() {
                        $('.btn_selectSeat').addClass('tm');
                        $('.btn_selectSeat').css('backgroundPositionX', '-150px');
                        $('.btn_selectSeat').click(function() {
                            location.href = 'seat.html';
                        })
                    })
                    $('.btn_selectSeat').addClass('sm');
                })
                $('.btn_selectSeat').addClass('bc');
            })
            $('.btn_selectSeat').addClass('sd');
        })

        //좌석선택 버튼 페이지 이동 조건
        $('.btn_selectSeat').click(function() {
            if($(this).hasClass('sm') === false)
                alert("영화를 선택해 주세요");
            else if($(this).hasClass('bc') === false)
                alert("극장을 선택해 주세요");
            else if($(this).hasClass('sd') === false)
                alert("날짜를 선택해 주세요");
            else if($(this).hasClass('tm') === false)
                alert("시간을 선택해 주세요");
        }) 

        //영화선택
		$('.selectMovie').click(function() {
			$(this).attr('id', 'movieOn');
			$('.selectMovie').not($(this)).removeAttr('id', 'movieOn');
			
			$(this).find($('.movieName')).css('color', '#e7e7e7');
			$('.movieName').not($(this).find($('.movieName'))).css('color', 'black');
			
			$('.local_text').text()
			
			$('.buttonCommon').click(function() {
			    $('.selectDay').click(function() {
			        $('.plzTheater').css('display', 'none');
			        $('.theaterTime').css('display', 'block');
			    })
			})
			
			$('.selectDay').click(function() {
			    $('.buttonCommon').click(function() {
			        $('.plzTheater').css('display', 'none');
			        $('.theaterTime').css('display', 'block');
			    })
			})
			$('.movie_text').text($(this).find('.movieName').text())
			$('.select_movie').css('display', 'none');
			
			if($(this).hasClass('frozen') === true){
			    $('.movie_img img').attr("src", "./img/frozen.jpg");
			    $('.movie_img').css('display', 'inline-block');
			}
			if($(this).hasClass('parasite') === true){
			    $('.movie_img img').attr("src", "./img/parasite.jpg");
			    $('.movie_img').css('display', 'inline-block');
			}
			    
			if($(this).hasClass('theDarkKnight') === true) {
			    $('.movie_img img').attr("src", "./img/theDarkKnight.jpg");
			    $('.movie_img').css('display', 'inline-block');
			}
			    
			if($(this).hasClass('exit') === true) {
			    $('.movie_img img').attr("src", "./img/exit.jpg");
			    $('.movie_img').css('display', 'inline-block');
			}
		})	
        
        //날짜 선택
        $(".hallDate .selectDay").click(function() {
            $(this).attr('id', 'dateButtonOn');
            $('.selectDay').not($(this)).removeAttr('id', 'dateButtonOn');

            $(".selected_wrap").css('display', 'block');
            $('.select_theater').css('display', 'none');
            
            if($(this).hasClass('six') === true)
                $(".date_text").text("2022.6." + $(this).children('.day').text() + "(" + $(this).children('.dayweek').text() + ")");
             else if($(this).hasClass('seven') === true)
                $(".date_text").text("2022.7." + $(this).children('.day').text() + "(" + $(this).children('.dayweek').text() + ")");

            $('.buttonCommon').click(function() {
                $('.selectMovie').click(function() {
                    $('.plzTheater').css('display', 'none');
                    $('.theaterTime').css('display', 'block');
                })
            })
            $('.selectMovie').click(function() {
                $('.buttonCommon').click(function() {
                    $('.plzTheater').css('display', 'none');
                    $('.theaterTime').css('display', 'block');
                })
            })
        })
        
        //시간 선택
        $('.theater .time').click(function() {
            $(this).attr('id', 'timeOn');
            $('.time').not($(this)).removeAttr('id', 'timeOn');

            $('.theater_text').text($(this).closest('div').children('.floor').text());
        })
	</script>
    <script src="./booking.js"></script>
	<%@include file="../main/footer.jsp" %>
</body>
</html>