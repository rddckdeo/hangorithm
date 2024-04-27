<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<script src="/resources/javascript/main.js"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="width100 displayAllCenter borderBottom paddingBottom30">
		<div class="main direction1 displayAllCenter">
			<div class="mainBox1 direction1">
				<!-- 버튼 모음 -->
				<div class="direction2 mainBox2 justifyEve alignCenter">
					<div class="mainBox2Click" onclick="mainBoxStatus(1)">내 프로필</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(2)">공지사항</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(3)">문의사항</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(4)">기술지원</div>
				</div>
				<!-- content 구역 -->
				<div class="mainBox3">
					<c:choose>
						<c:when test="${empty sessionScope.login}">
							<div class="direction2 displayAllCenter width100 height100">
								<p class="contentNull">로그인이 필요합니다.</p>
								<a class="contentNullButton" href="/member/loginForm.do">로그인하러가기</a>
							</div>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'infoList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/infoList.jsp"%>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'boardList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/board.jsp"%>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'techList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/techList.jsp"%>
						</c:when>
						<c:otherwise>
							<%@ include file="/WEB-INF/views/main/mainContent/profile.jsp"%>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<div class="width100 ">
		<div class="mainDiv2 direction1">
			<span class="introFont1">IN</span>
			<span class="introFont2">TRO</span>
		</div>
		<div class="mainDiv2 paddingBottom10">
			<span class="introFont3">항상 최고의 서비스를 제공해드리겠습니다.</span>
		</div>
	</div>
	<!-- 회사 소개 영역 -->
	<div class="width100 displayAllCenter">
		<div class="direction1 mainDiv">
			<div class="introDiv1 introDivBack1">
				<div class="introDivFont introDivFontColor2">회사 소개</div>
			</div>
			<div class="direction2 width50">
				<div class="introDiv2 introDivBack2 introDivFont introDivFontColor1">문의 센터</div>
				<div class="introDiv2 introDivBack3 introDivFont introDivFontColor1">제품 센터</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>