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
	<div class="width100 displayAllCenter paddingBottom30 direction2">
		<div class="width100">
			<div class="width100 justifyBet">
				<p class="searchP1">${item}의 검색결과</p>
				<button class="searchBtn" type="button" onclick="pageAddBtn(${boardLimit},'${item}')">더보기</button>
			</div>
		</div>
		<div class="borderBottom width100"></div>
		<!-- 문의사항 -->
		<div class="borderBottom width100">
			<p class="searchP2">문의사항</p>
			<!-- th -->
			<div class="direction1 searchTd">
				<div class="width10">no</div>
				<div class="width30">제목</div>
				<div class="width10">작성자</div>
				<div class="width20">작성일</div>
			</div>
			<c:forEach var="list" items="${boardList}">
				<div class="direction1 searchTb" onclick="searchDetail(${list.no},'board')">
					<div class="width10">${list.no}</div>
					<div class="width30">${list.title}</div>
					<div class="width10">${list.name}</div>
					<div class="width20">${list.ondate}</div>
				</div>
			</c:forEach>
		</div>
		<!-- 공지사항 -->
		<div class="borderBottom width100">
			<p class="searchP2">기술문의</p>
			<!-- th -->
			<div class="direction1 searchTd">
				<div class="width10">no</div>
				<div class="width30">제목</div>
				<div class="width10">작성자</div>
				<div class="width20">작성일</div>
			</div>
			<c:forEach var="list" items="${infoList}">
				<div class="direction1 searchTb" onclick="searchDetail(${list.no},'info')">
					<div class="width10">${list.no}</div>
					<div class="width30">${list.title}</div>
					<div class="width10">${list.name}</div>
					<div class="width20">${list.ondate}</div>
				</div>
			</c:forEach>
		</div>
		<!-- 기술문의 -->
		<div class="borderBottom width100">
			<p class="searchP2">공지사항</p>
			<!-- th -->
			<div class="direction1 searchTd">
				<div class="width10">no</div>
				<div class="width30">제목</div>
				<div class="width10">작성자</div>
				<div class="width20">작성일</div>
			</div>
			<c:forEach var="list" items="${techList}">
				<div class="direction1 searchTb" onclick="searchDetail(${list.no},'tech')">
					<div class="width10">${list.no}</div>
					<div class="width30">${list.title}</div>
					<div class="width10">${list.name}</div>
					<div class="width20">${list.ondate}</div>
				</div>
			</c:forEach>
		</div>
		
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>