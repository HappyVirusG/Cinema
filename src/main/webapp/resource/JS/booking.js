let localSeoul = document.querySelector(".localSeoul");
let localGyeonggi = document.querySelector(".localGyeonggi");
let localIncheon = document.querySelector(".localIncheon");
let localGangwon = document.querySelector(".localGangwon");
let localDaejeon = document.querySelector(".localDaejeon");
let localDaegu = document.querySelector(".localDaegu");
let localUlsan = document.querySelector(".localUlsan");
let localGyeongsang = document.querySelector(".localGyeongsang");
let localJeju = document.querySelector(".localJeju");

let theaterSeoul = document.querySelector(".theater_seoul");
let theaterGyeonggi = document.querySelector(".theater_gyeonggi");
let theaterIncheon = document.querySelector(".theater_incheon");
let theaterGangwon = document.querySelector(".theater_gangwon");
let theaterDaejeon = document.querySelector(".theater_daejeon");
let theaterDaegu = document.querySelector(".theater_daegu");
let theaterUlsan = document.querySelector(".theater_ulsan");
let theaterGyeongsang = document.querySelector(".theater_gyeongsang");
let theaterJeju = document.querySelector(".theater_jeju");

let localButton = document.querySelector(".localButton");
let theaterButton = document.querySelector(".theater_button");
let theaterCommon = document.querySelector(".theaterCommon");

localSeoul.addEventListener("click", function() {
    theaterSeoul.style.display = "block";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localGyeonggi.addEventListener("click", function() {
    theaterGyeonggi.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localIncheon.addEventListener("click", function() {
    theaterIncheon.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localGangwon.addEventListener("click", function() {
    theaterGangwon.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none"; 
})
localDaejeon.addEventListener("click", function() {
    theaterDaejeon.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localDaegu.addEventListener("click", function() {
    theaterDaegu.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localUlsan.addEventListener("click", function() {
    theaterUlsan.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterJeju.style.display = "none";
})
localGyeongsang.addEventListener("click", function() {
    theaterGyeongsang.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterDaejeon.style.display = "none";
    theaterJeju.style.display = "none";
})
localJeju.addEventListener("click", function() {
    theaterJeju.style.display = "block";
    theaterSeoul.style.display = "none";
    theaterGyeonggi.style.display = "none";
    theaterIncheon.style.display = "none";
    theaterGangwon.style.display = "none";
    theaterDaegu.style.display = "none";
    theaterUlsan.style.display = "none";
    theaterGyeongsang.style.display = "none";
    theaterDaejeon.style.display = "none";
})
















// function selectedTheater() {
//     let selectedWrap = document.querySelector('.selected_wrap');

//     selectedWrap.classList.add("selected_wrapOn");
// }




// view.addEventListener("click", function(){
//     if(isOpen == false) {
//         document.querySelector("#detail").style.display = "block";
//         isOpen = true;
//         view.innerHTML="상세 설명 닫기";
//     } else {
//         document.querySelector("#detail").style.display = "none";
//         isOpen = false;
//         view.innerHTML="상세 설명 보기";
//     }
// })
    // 1. open_menu를 클릭할 때 /사이드 열기
    // $('.open_menu').click(function() {
    //     $('#side').animate({
    //         right : 0
    //     });

    //     $('#wrap').css({
    //         position : 'fixed'
    //     })
    //     return false;
    // })

    // // s_close 클릭할 때 /사이드 닫기
    // $('.s_close').click(function() {
    //     // 아코디언 메뉴가 열려있는 상태에서 사이드가 닫히면 아코디언 메뉴도 닫힌다
    //     $('.s_gnb .d1 .sub').slideUp();
    //     $('#side').animate({
    //         right : '-100%'
    //     });

    //     $('#wrap').css({
    //         position : 'relative'
    //     })
    //     return false;
    // })

    // // 사이드 아코디언 메뉴 열기

    // $('.s_gnb .d1 .m1').click(function() {

    //     let d = $(this).siblings('.sub').css('display');

    //     if(d == 'block') {
    //         $('.s_gnb .d1 .sub').slideUp();
    //         $('.s_gnb .d1 .m1').removeClass('on');
    //     } else {
    //         $('.s_gnb .d1 .sub').slideUp();
    //         $('.s_gnb .d1 .m1').removeClass('on');
    //         // 선택한 대상과 형제관계인 .sub만 열기
    //         $(this).siblings('.sub').slideDown();
    //         $(this).addClass('on');
    //     }

    //     return false;
    // })
