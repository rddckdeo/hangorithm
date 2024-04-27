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
				<div class="width100 height100 displayAllCenter direction2">
					<div class="direction1 width100 justifyAround">
						<p class="width20">작성자 : ${list.name}</p>
						<p class="width20">작성날짜 : ${list.ondate}</p>
						<p class="width20">수정 날짜 : ${list.indate}</p>
					</div>
					<p class="titlePTag2">제목</p>
					<textarea class="enrollInput1" id="titleInput" disabled>${list.title}</textarea>
					<p class="titlePTag2">내용</p>
					<textarea class="enrollInput2" id="contentInput" disabled>${list.content}</textarea>
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>