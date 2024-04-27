<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<link href="/resources/css/header/sidebar.css" rel="stylesheet"/>
<link href="/resources/css/main/content.css" rel="styleSheet"/>
<script src="/resources/javascript/mainContent.js"></script>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<div class="width100 displayAllCenter borderBottom paddingBottom30 borderTop paddingTop30">
	<!-- categoty별 sidebar -->
	<div class="direction1 width100 justifyEve">
		<!-- sidebar -->
		<%@ include file="/WEB-INF/views/main/customer/sidebarC.jsp"%>
		<!-- main Card -->
		<div class="width80 direction2 alignCenter">
			<!-- 게시글 본문 -->
			<div class="width90 height100 infoBoard">
				<form action="" method="POST" class="width100 height100 displayAllCenter direction2" id="enrollForm">
					<div class="titlePTag">
						<c:choose>
							<c:when test="${status == 'info'}">
								<p>공지사항 작성</p>
							</c:when>
							<c:when test="${status == 'board'}">
								<p>문의사항 작성</p>
							</c:when>
							<c:when test="${status == 'tech'}">
								<p>기술지원 작성</p>
							</c:when>
						</c:choose>
						<!-- 필요한 정보 -->
						<input type="hidden" value="${status}" name="status" id="statusInput">
						<input type="hidden" value="${sessionScope.login.MNo}" name="mNo" id="sessionNo">
					</div>
					<p class="titlePTag2">제목</p>
					<textarea class="enrollInput1" placeholder="제목을 입력해주세요" name="title" id="titleInput"></textarea>
					<p class="titlePTag2">내용</p>
					<textarea class="enrollInput2" placeholder="내용을 입력해주세요" name="content" id="contentInput"></textarea>
					<div class="justifyEnd width100">
						<button class="enrollBtn" type="button" onclick="boardEnroll()">추가하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>