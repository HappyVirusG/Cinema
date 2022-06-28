<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="reviewLine"></div>
<div id="review">
    <div class="reviewCurrent">
        <p>
            <span>탑건 : 매버릭</span>에 대한 <span>10,316</span>개의 관람평이 있어요!
        </p>
        <button>본 영화 등록</button>
        
    </div>
    <div class="reviewTable">
        <div>
            <div class="reviewPost">
                평점 · 관람평 작성<br/>
                <!-- 별점 기능 test -->
                <form name="starForm" id="starForm" method="post" action="./save">
                    <div>
                        <input type="radio" name="score" value="5" id="score1"><label for="score1">⭐</label>
                        <input type="radio" name="score" value="4" id="score2"><label for="score2">⭐</label> 
                        <input type="radio" name="score" value="3" id="score3"><label for="score3">⭐</label>
                        <input type="radio" name="score" value="2" id="score4"><label for="score4">⭐</label> 
                        <input type="radio" name="score" value="1" id="score5"><label for="score5">⭐</label>
                    </div>
                </form>
                <span>영화 관람 후 관람평 작성 시 50P 추가 적립</span>
            </div>
            
        <div class="contentPost">
            <div class="user">
                <img src="../resource/img/review/admin.jpg" alt="">
                <br/>
                <span>개발자</span>
            </div>
            <div class="typeContent">
                <textarea name="content" class="reviewContent" placeholder="평점 및 영화 관람평을 작성해주세요. &#13;&#10;주제와 무관한 리뷰 또는 스포일러는 표시제한 또는 삭제될 수 있습니다."></textarea>
                <button>관람평 작성</button>
            </div>
        </div>
    </div>

        <div class="userReview">
            <div class="user">
                <img src="../resource/img/review/hansohee.jpg" alt=""><br/>
                <span>영화덕후</span>
            </div>
            <div class="userRate">
                <span class="userScore">⭐⭐⭐⭐⭐</span><br/>
                최고예요!
            </div>
            <div class="userLine"></div>
            <div class="userContent">
                1편을 안 보고 봤는데도 시간가는줄 모르고 재밌게 봤음
            </div>
        </div>
</div>
	
