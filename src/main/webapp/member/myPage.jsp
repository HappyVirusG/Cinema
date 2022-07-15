<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="../resource/css/my_page.css" >
</head>
<body>
<%@include file="../main/header.jsp" %>
<div id="wrap">
	<div class="myPageTitle">
		<h3>개인정보 수정</h3>
		<p>※회원님의 정보를 정확히 입력해주세요.</p>
		<button id="memberDrop" type="button">회원탈퇴</button>
	</div>
	<form action="">
		<table style="margin:auto; text-align: left; border-collapse: collapse;">
			<tr>
				<th>프로필사진</th>
				<td class="profileImg">
					<img alt="" src="../resource/img/icons/user.png">
					<button type="button">이미지 등록</button>
					<p>※개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</p>
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${dto.id}</td>
			</tr>
			<tr>
				<td colspan="2">
					<h4>기본정보</h4>
				</td>
			</tr>
			<tr>
				<th>이름<span class="necessary">*</span></th>
				<td class="namePlc">
					<span style="padding-left:0;">${dto.name}</span>
					<button>이름변경</button>
					<p>※개명으로 이름이 변경된 경우, 회원정보의 이름을 변경하실 수 있습니다.</p>
				</td>
			</tr>
			<tr>
				<th>생년월일<span class="necessary">*</span></th>
				<td>${dto.birth}</td>
			</tr>
			<tr>
				<th>연락처<span class="necessary">*</span></th>
				<td>
					${dto.tel}
					<button type="button">휴대폰번호 변경</button>
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" value="${dto.email }"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<button type="button" id="passChBtn" style="margin-left:0;">비밀번호 변경</button>
					<input type="password" id="passChInput">
				</td>
				
			</tr>
			<tr style="border-bottom:none;">
				<td colspan="2" class="myPageBtns">
					<button type="submit" class="submitBtn">등록</button>
					<button type="button" onclick="window.location.reload();" class="resetBtn">취소</button>
				</td>
			</tr>
		</table>
	</form>
</div>
<%@include file="../main/footer.jsp" %>

<script>
document.querySelector("#passChBtn").onclick=function(){
	if(document.querySelector("#passChInput").style.display="none"){
		document.querySelector("#passChInput").style.display="inline-block";
	}else if(document.querySelector("#passChInput").style.display="inline-block"){
		document.querySelector("#passChInput").style.display="none";
	}
}

	

</script>
</body>
</html>