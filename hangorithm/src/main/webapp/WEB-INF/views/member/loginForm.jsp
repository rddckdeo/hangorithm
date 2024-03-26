<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="/resources/css/member/member.css" rel="stylesheet"/>
<link href="/resources/css/default.css" rel="stylesheet"/>
<script src="/resources/javascript/member.js"></script>

</head>
<body>
	<div class="positionCard">
		<div class="card alignCenter direction2">
			<p class="logo displayAllCenter" onclick="mainForm()">Hangorithm</p>
			<form action="" class="width100">
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">ID : </span>
					<div class="width100 justifyCenter">
						<input type="text" class="loginInput">
					</div>
				</div>
				<div class="direction2 marginBottom20">
					<span class="loginFont marginBottom10">PWD : </span>
					<div class="width100 justifyCenter">
						<input type="password" class="loginInput">
					</div>
				</div>
				<a class="findA" href="/member/registerForm.do">회원이 아니신가요?</a>
				<div class="justifyBet marginBottom20">
					<a class="findA" href="/member/findId.do">아이디 찾기</a>
					<a class="findA" href="/member/findPwd.do">비밀번호 찾기</a>
				</div>
				<div class="justifyCenter"><button class="loginBtn">로그인</button></div>
			</form>
			<div class="width80">
				<div class="justifyCenter SNSBox">SNS Login</div>
				<div class="direction1 justifyCenter">
					<img class="SNSImg" src="/resources/upload/main/kakaotalk.png">
					<img class="SNSImg" src="/resources/upload/main/google.png">
					<img class="SNSImg" src="/resources/upload/main/naver.png">
				</div>
			</div>
		</div>
	</div>
</body>
</html>