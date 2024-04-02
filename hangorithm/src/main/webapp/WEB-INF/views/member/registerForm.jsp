<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<link href="/resources/css/member/member.css" rel="stylesheet"/>
<link href="/resources/css/default.css" rel="stylesheet"/>
<script src="/resources/javascript/member.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>
<body class="loginBody">
	<div class="positionCardRegister">
		<div class="cardRegister alignCenter direction2">
			<p class="logo displayAllCenter" onclick="mainForm()">Hangorithm</p>
			<form action="register.do" method="post" class="width100">
				<!-- profile -->
				<div class="justifyEve alignCenter">
					<img class="registerImg" src="/resources/upload/main/default.png">
					<button class="registerImgBtn" disabled>변경</button>
				</div>
				
				<!-- id -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">ID</span>
					<div class="direction1">
						<div class="width100">
							<input type="text" class="loginInput" name="id" id="idInput">
						</div>
						<button type="button" class="checkBtn" onclick="idCheck()">중복체크</button>
					</div>
					<div id="idCheckResult">
						
					</div>
				</div>
				<!-- pwd -->
				<div class="direction2 marginBottom20">
					<span class="loginFont marginBottom10">PWD</span>
					<div class="width100">
						<input type="password" class="loginInput" name="pwd">
					</div>
				</div>
				<!-- email -->
				<div class="direction2 marginBottom20">
					<span class="loginFont marginBottom10">E-mail</span>
					<div class="width100">
						<input type="email" class="loginInput" name="email">
					</div>
				</div>
				<!-- name -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">Name</span>
					<div class="width100">
						<input type="text" class="loginInput" name="name" value="">
					</div>
				</div>
				<!-- position -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">Position</span>
					<div class="width100">
						<input type="text" class="loginInput" name="position" id="position" value="">
						<input type="hidden" value="0" id="status">
						<div class="direction1 alignCenter justifyAround">
						<div class="alignCenter"><input type="checkbox" id="positionCheck" class="selectCheckBox">연구원 직책</div>
							<select id="positionSelect" class="selectBox">
								<option>-선택해주세요-</option>
								<option>인턴</option>
								<option>사원</option>
								<option>주임</option>
								<option>대리</option>
								<option>계장</option>
								<option>과장</option>
								<option>차장</option>
								<option>부장</option>
								<option>이사</option>
								<option>상무</option>
								<option>전무</option>
								<option>대표</option>
							</select>
							<select id="positionSelect2" style="display:none" class="selectBox">
								<option>-선택해주세요-</option>
								<option>연구원</option>
								<option>주임연구원</option>
								<option>전임연구원</option>
								<option>선임연구원</option>
								<option>책임연구원</option>
								<option>수석연구원</option>
							</select>
						</div>
					</div>
				</div>
				<!-- number -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">Number</span>
					<div class="width100">
						<input type="text" class="loginInput" name="id">
					</div>
				</div>
				<!-- birth -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">Birth Day</span>
					<div class="width100">
						<input type="date" class="loginInput" name="id">
					</div>
				</div>
				<!-- company -->
				<div class="direction2 marginBottom10">
					<span class="loginFont marginBottom10">Company</span>
					<div class="width100 direction1">
						<div class="width100">
							<input type="text" class="loginInput" name="id" disabled>
						</div>
						<button type="button" class="checkBtn" onclick="findCompany()">회사 찾기</button>
					</div>
					
				</div>
				<div class="width100 justifyCenter marginBottom20 marginTop20">
					<a class="findA" onclick="loginForm()">이미 회원이신가요?</a>
				</div>
				<div class="justifyCenter"><button class="loginBtn" type="submit">회원가입</button></div>
			</form>
		</div>
	</div>
</body>
</html>