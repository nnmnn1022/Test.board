<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<script>
	$(function() {
		//id가 btnLogin인 버튼은 누르면
		$("#btnLogin").click(function() {
			id = $("#id").val();
			pw = $("#pw").val();
			param = {
				"id" : id,
				"pw" : pw
			};
			//비동기식 호출

			$.ajax({
				type : "post",
				url : "login_result.do",
				data : param,
				success : function(result) {
					$("#result").html(result);
				}

			});

		});

	});
</script>
</head>
<body>
	<a href="/"> Home</a>&nbsp
	<a href="/signup"> 회원가입</a>&nbsp
	<a href="/board"> 게시판</a>&nbsp

	<div style="float: right">
		ID : <input type="text" id="id"> PW : <input type="password"
			id="pwd">
		<button id="btnLogin">로그인</button>
	</div>




	<hr>

</body>
</html>