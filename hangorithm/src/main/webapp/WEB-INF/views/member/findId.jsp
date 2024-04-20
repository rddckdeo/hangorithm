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
			<p class="findMainFont">아이디 찾기</p>
			<form action="" class="width100 findForm">
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">이름 : </span>
					<div class="width100 justifyCenter">
						<input type="text" class="loginInput">
					</div>
				</div>
				<div class="direction2 marginBottom20">
					<span class="loginFont marginBottom10">E-mail : </span>
					<div class="width100 justifyCenter">
						<input type="password" class="loginInput">
					</div>
				</div>
				<div class="justifyBet marginBottom20">
					<a class="findA" href="/member/loginForm.do">로그인하러가기</a>
					<a class="findA" href="/member/findPwd.do">비밀번호 찾기</a>
				</div>
				<div class="justifyCenter"><button class="loginBtn">ID 찾기</button></div>
			</form>
		</div>
	</div>
</body>
</html>