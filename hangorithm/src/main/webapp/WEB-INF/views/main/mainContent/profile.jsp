<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<link href="/resources/css/main/content.css" rel="styleSheet"/>
</head>
<body>
	<div class="width100 height100 direction2">
		<span class="title">나의 정보</span>
		<div class="direction1 width100 height100 alignCenter justifyAround">
			<div><img class="contentImg" src="${sessionScope.login.MPath}${sessionScope.login.MImg}"></div>
			<div>
				<div class="direction2 contentDiv2">
					<p class="contentName">${sessionScope.login.MName}님 환영합니다!</p>
					<div class="fontWeight">
						<p class="contentInfo1 marginBottom5">나의 정보</p>
						<div class="direction1">
							<div class="marginRight5">직급 : </div>
							<p>${sessionScope.login.MPosition}</p>
						</div>
						<div class="direction1">
							<div class="marginRight5">생일 : </div>
							<p>${sessionScope.login.MBirth}</p>
						</div>
						<div class="direction1">
							<div class="marginRight5">전화번호 : </div>
							<p>${sessionScope.login.MNum}</p>
						</div>
						<div class="direction1">
							<div class="marginRight5">E-mail : </div>
							<p>${sessionScope.login.MEmail}</p>
						</div>
						<div class="direction1">
							<div class="marginRight5">가입날짜 : </div>
							<p>${sessionScope.login.MOndate}</p>
						</div>
					</div>
				</div>
			</div>
			<!-- button 모음 -->
			<div class="direction2 contentDiv3">
				<p class="font2 textAlign">바로가기</p>
				<button class="contentBtn" type="button">내 정보 수정하기</button>
				<button class="contentBtn" type="button">나의 회사</button>
				<button class="contentBtn" type="button">QnA 작성하기</button>
			</div>
		</div>
	</div>
</body>
</html>