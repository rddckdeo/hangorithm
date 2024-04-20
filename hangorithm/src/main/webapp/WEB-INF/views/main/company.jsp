<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<link href="/resources/css/header/sidebar.css" rel="stylesheet"/>
</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="width100 displayAllCenter borderBottom paddingBottom30 borderTop paddingTop30">
		<!-- categoty별 sidebar -->
		<div class="direction1 width100 justifyEve">
			<div class="sidebarCard">
				 <div class="sidebarFont2">sidebar</div>
				 <div class="sidebarFont">
				 	<div class="sidebarDiv direction1 alignCenter">
				 		<div class="tap"></div>회사 소개
			 		</div>
				 	<div class="sidebarDiv direction1 alignCenter">
				 		<div class="tap"></div>회사 오는길
			 		</div>
				 	<div class="sidebarDiv direction1 alignCenter">
				 		<div class="tap"></div>회사 조직도
			 		</div>
				 </div>
			</div>
			<!-- main Card -->
			<div class="width80 borderDefault">
				
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>