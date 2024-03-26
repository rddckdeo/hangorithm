<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/head.jsp"%>

</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<!-- sidbar -->
	<%@ include file="/WEB-INF/views/common/sidebar.jsp"%>
	<div class="width100 displayAllCenter borderBottom paddingBottom">
		<div class="main direction1 displayAllCenter">
			<div class="mainBox1 direction1">
				<!-- 버튼 모음 -->
				<div class="direction2 mainBox2 justifyEve alignCenter">
					<div class="mainBox2Click">내 프로필</div>
					<div class="mainBox2Click">공지 사항</div>
					<div class="mainBox2Click">교육 일정</div>
					<div class="mainBox2Click">기술 지원</div>
				</div>
				<!-- content 구역 -->
				<div class="mainBox3">
					
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>