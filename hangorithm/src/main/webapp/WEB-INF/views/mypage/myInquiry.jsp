<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/member.css" rel="stylesheet"/>
<link href="/resources/css/member/mypage.css" rel="stylesheet"/>
<link href="/resources/css/default.css" rel="stylesheet"/>
<script src="/resources/javascript/member.js"></script>
</head>
<body>
<div class="positionCard">
		<div class="myPageCard alignCenter direction2">
			<!-- mypage header -->
			<div class="width100">
				<!-- logo -->
				<div class="headerLogo displayAllCenter"><a class="aTag" href="/">Hangorithm</a></div>
				<!-- login 정보 -->
				<div></div>
			</div>
			<!-- sidebar, main -->
			<div class="direction1 width100 justifyEve">
				<%@ include file="/WEB-INF/views/mypage/common/sidebar.jsp"%>
				<!-- main Card -->
				<div class="width80 borderDefault">
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>