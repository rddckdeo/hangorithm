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
<body class="loginBody">
	<div class="positionCard">
		<div class="card alignCenter direction2">
			<p class="logo displayAllCenter" onclick="mainForm()">Hangorithm</p>
			<form action="login.do" method="post" class="width100">
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">ID : </span>
					<div class="width100 justifyCenter">
						<input type="text" class="loginInput" name="id" placeholder="아이디를 입력해주세요">
					</div>
				</div>
				<div class="direction2 marginBottom20">
					<span class="loginFont marginBottom10">PWD : </span>
					<div class="width100 justifyCenter">
						<input type="password" class="loginInput" name="pwd" placeholder="비밀번호를 입력해주세요">
					</div>
				</div>
				<a class="findA" href="/member/registerForm.do">회원이 아니신가요?</a>
				<div class="justifyBet marginBottom20">
					<a class="findA" href="/member/findId.do">아이디 찾기</a>
				</div>
				<div class="justifyCenter"><button class="loginBtn" type="submit">로그인</button></div>
			</form>
			<div class="width80">
				<div class="justifyCenter SNSBox alignCenter">SNS Login</div>
				<div class="direction1 justifyCenter">
					<img class="SNSImg" src="/resources/upload/main/kakaotalk.png">
					<img class="SNSImg" src="/resources/upload/main/google.png">
					<img class="SNSImg" src="/resources/upload/main/naver.png">
				</div>
				<div class="font10 displayAllCenter marginTop10">위 내용은 사진만 올려두었기에 실제 기능하지 않습니다.</div>
			</div>
			<!-- login status -->
			<c:if test="${!empty status}">
				<input type="hidden" value="${status}" id="loginStatus">
			</c:if>
			
			
		</div>
	</div>
</body>
</html>