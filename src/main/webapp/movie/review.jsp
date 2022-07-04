<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script>
	function validateForm(form){
		if(form.content.value==""){
			alert("내용을 입력하세요")
			form.content.focus();
			return false;
		}
	}
</script>


<div class="reviewLine"></div>
<div id="review">
    <div class="reviewCurrent">

        <p>
            <span>탑건 : 매버릭</span>에 대한 <span>${ map.totalCount }</span>개의 관람평이 있어요!
        </p>
        <button>본 영화 등록</button>
        
    </div>
    
    <div class="reviewTable">
        <form action="reviewWriteProcess.jsp" name="reviewWriteFrm" method="post" onsubmit="return validateForm(this)">
        <div class="reviewPost">
            
            평점 · 관람평 작성<br/>
            <!-- 별점 기능 test -->
            <div id="starForm">
                <div>
                    <input type="radio" name="score" value="5" id="score1"><label for="score1">⭐</label>
                    <input type="radio" name="score" value="4" id="score2"><label for="score2">⭐</label> 
                    <input type="radio" name="score" value="3" id="score3"><label for="score3">⭐</label>
                    <input type="radio" name="score" value="2" id="score4"><label for="score4">⭐</label> 
                    <input type="radio" name="score" value="1" id="score5"><label for="score5">⭐</label>
                </div>
            
            <span>영화 관람 후 관람평 작성 시 50P 추가 적립</span>
        	</div>
        </div>
	    <div class="contentPost">
	          <div class="user">
	              <img src="../resource/img/review/admin.jpg" alt="">
	              <br/>
	              <span>작성자아뒤</span>
	          </div> <!-- .user -->
	          
             <div class="typeContent">
	              <textarea name="content" class="reviewContent" placeholder="평점 및 영화 관람평을 작성해주세요. &#13;&#10;주제와 무관한 리뷰 또는 스포일러는 표시제한 또는 삭제될 수 있습니다."></textarea>
	              <button type="submit">관람평 작성</button>
             </div> <!-- .typeContent -->
	          
	    </div> <!-- .contentPost -->
        </form> <!-- form 입력값 -->
    </div> <!-- .reviewTable 리뷰 작성 -->
    
   <c:choose>
    	<c:when test="${ empty reviewLists }">
    		<div class="noneReview"> 등록된 관람평이 없습니다.</div>
    	</c:when>
    	<c:otherwise>
    		<c:forEach items="${ reviewLists }" var="row" varStatus="loop">
    		<div class="userReview">
    	
            <div class="user">
                <img src="../resource/img/review/hansohee.jpg" alt=""><br/>
                <span>${ row.id }</span>  <!-- 작성자 id -->
            </div>
            
            <div class="userRate">
            <!-- 작성자가 준 평점 -->
                <span class="userScore">${ row.score }</span><br/>
                최고예요! <!-- 평점에 부연설명 추가해놓기 -->
            </div>
            <div class="userLine"></div>
            <div class="userContent"> <!-- 작성자 관람평 -->
            	${ row.content }
            </div>
            </div>
    		</c:forEach>
    	</c:otherwise>
    </c:choose>
    
<div class="reviewLine"></div>
</div>

	
