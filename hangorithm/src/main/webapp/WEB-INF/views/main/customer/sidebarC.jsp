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
	<div class="sidebarCard">
		 <div class="sidebarFont2">sidebar</div>
		 <div class="sidebarFont">
		 	<div class="sidebarDiv direction1 alignCenter">
		 		<div class="tap"></div><a class="aTag" href="customerForm.do?status=info">공지사항</a>
	 		</div>
		 	<div class="sidebarDiv direction1 alignCenter">
		 		<div class="tap"></div><a class="aTag" href="customerForm.do?status=board">문의사항</a>
	 		</div>
		 	<div class="sidebarDiv direction1 alignCenter">
		 		<div class="tap"></div> <a class="aTag" href="customerForm.do?status=tech">기술지원</a>
	 		</div>
		 </div>
	</div>

</body>
</html>