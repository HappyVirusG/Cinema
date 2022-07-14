<%@page import="model.MovieDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
#slideShow li {
  list-style-type: none;
  width: 800px;
  display: flex;
}
#gallery{
	width: 980px;
	background-color: black;
	margin: auto;
	position: relative;
	display: block;
}
#slideShow {
  	width: 800px;
  	height: 510px;
  	position: relative;
  	margin: 40px auto;
    overflow:hidden;
}
#slideShow .slides img{
	height: 510px;
	max-width: 800px;
}
#slideShow .slides {
	width: 10400px;
  	position: absolute;
  	left: 0;
  	top: 0;
  	transition: 0.5s ease-out; /*ease-out: 처음에는 느렸다가 점점 빨라짐*/
}
.slides li{
	justify-content: center;
}
.slides li:not(:last-child) {
  float: left;
}
.controller button {
	width: 40px;
  	position: absolute;
  	top: 44%;
	cursor: pointer;
	background-color: transparent;
} 
#controllBtn img{
	width: 40px;
	filter: invert(32%) sepia(7%) saturate(7%) hue-rotate(324deg) brightness(98%) contrast(83%);
}
#controllBtn img:hover{
	filter: invert(79%) sepia(4%) saturate(21%) hue-rotate(26deg) brightness(83%) contrast(87%);
}
.prev {
  left: 20px;
} 
.next {
  right: 20px;
} 
</style>

<div id="gallery">
  <div id="slideShow">
    <ul class="slides">
    	<script>
	    	const moviecode = "${dto.moviecode}";
	    	const regex = /[^0-9]/g;
	    	const result = moviecode.replace(regex, "");
	    	const movieNum = parseInt(result);
	    	console.log(result);
	    	console.log(movieNum);
    		for(let i=1; i<=11; i++){
    			document.write("<li><img alt='' src='../resource/img/detail/"+movieNum+"_"+i+".jpg' id='photo'></li>")
    		}
    	</script>
    </ul>
    
  </div>
  <div class="controller" id="controllBtn">
     <button class="prev"><img alt="이전" src="../resource/img/detail/prev.png"></button> 
     <button class="next"><img alt="다음" src="../resource/img/detail/next.png"></button>
   </div>
</div>	


<script>
let slides = document.querySelector('.slides');
let slideImg = document.querySelectorAll('.slides li');
currentIdx = 0;
slideCount = slideImg.length;
prev = document.querySelector('.prev'); //이전 버튼
next = document.querySelector('.next'); //다음 버튼
slideWidth = 800; //슬라이드이미지 넓이
makeClone(); // 처음이미지와 마지막 이미지 복사 함수
initfunction(); //슬라이드 넓이와 위치값 초기화 함수
function makeClone() {
  let cloneSlide_first = slideImg[0].cloneNode(true);
  let cloneSlide_last = slides.lastElementChild.cloneNode(true);
  slides.append(cloneSlide_first);
  slides.insertBefore(cloneSlide_last, slides.firstElementChild);
}
function initfunction() {
	slides.style.left = -(slideWidth) + 'px';
}
next.addEventListener('click', function () {
  //다음 버튼 눌렀을때
  if (currentIdx <= slideCount - 1) {
    //슬라이드이동
    slides.style.left = -(currentIdx + 2) * slideWidth + 'px';
    slides.style.transition = `${0.5}s ease-out`; //이동 속도
  }
  if (currentIdx === slideCount - 1) {
    //마지막 슬라이드 일때
    setTimeout(function () {
      //0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
      slides.style.left = -(slideWidth) + 'px';
      slides.style.transition = `${0}s ease-out`;
    }, 800);
    currentIdx = -1;
  }
  currentIdx += 1;
});
prev.addEventListener('click', function () {
  //이전 버튼 눌렀을때
  console.log(currentIdx);
  if (currentIdx >= 0) {
    slides.style.left = -currentIdx * slideWidth + 'px';
    slides.style.transition = `${0.5}s ease-out`;
  }
  if (currentIdx === 0) {
    setTimeout(function () {
      slides.style.left = -slideCount * slideWidth + 'px';
      slides.style.transition = `${0}s ease-out`;
    }, 800);
    currentIdx = slideCount;
  }
  currentIdx -= 1;
});
</script>