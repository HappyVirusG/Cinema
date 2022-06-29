<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		function validateForm(form){
			if(form.content.value==""){
				alert("내용을 입력하세요")
				form.content.focus();
				return false;
			}
		}
	</script>

</body>
</html>