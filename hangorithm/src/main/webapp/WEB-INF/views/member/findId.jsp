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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>
<body>
	<div class="positionCard">
		<div class="card alignCenter direction2">
			<p class="logo displayAllCenter" onclick="mainForm()">Hangorithm</p>
			<p class="findMainFont">아이디 찾기</p>
			<div class="direction2 marginBottom10 width100">
				<span class="loginFont marginBottom10">이름 : </span>
				<div class="width100 justifyCenter">
					<input type="text" class="loginInput" id="nameInput">
				</div>
			</div>
			<div class="direction2 marginBottom20 width100">
				<span class="loginFont marginBottom10">E-mail : </span>
				<div class="width100 justifyCenter">
					<input type="email" class="loginInput" id="emailInput">
				</div>
			</div>
			<div class="direction2 marginBottom10 width100 displayNone" id="findIdDiv">
				<span class="loginFont marginBottom10">회원님의 아이디 : </span>
				<div class="width100 justifyCenter">
					<input type="text" class="loginInput" id="resultInput" disabled>
				</div>
			</div>
			<div class="justifyBet marginBottom20 width100">
				<a class="findA" href="/member/loginForm.do">로그인하러가기</a>
			</div>
			
			<div class="justifyCenter width100"><button class="loginBtn" type="button" onclick="findId()">ID 찾기</button></div>
		</div>
	</div>
</body>
</html>