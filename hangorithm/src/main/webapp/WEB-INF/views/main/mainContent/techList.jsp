<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/main/content.css" rel="styleSheet"/>
<script src="/resources/javascript/main.js"></script>
</head>
<body>
	<div class="width100 height100 direction2">
		<span class="title">기술지원</span>
		<div class="direction1 alignCenter justifyAround">
			<div class="width100 height100 alignCenter justifyAround">
			<!-- 공지사항 -->
				<div class="direction1 width100 height100 justifyCenter">
					<div class="width70  techBoard">
						<p class="width100 font1">기술문의</p>
						<!-- Card -->
						<div class="width100 height100 direction2 alignCenter">
							<div class="infoCard1">
								<!-- th -->
								<div class="direction1 textAlign thMain">
									<div class="td1">No</div>
									<div class="td2">제목</div>
									<div class="td3">작성날</div>
									<div class="td3">진행도</div>
								</div>
								<!-- td -->	
								<c:forEach var="list" items="${list}">
									<div class="direction1 textAlign thContent" onclick="searchDetail(${list.no}, 'tech')">
										<div class="td1">${list.no}</div>
										<div class="td2">${list.title}</div>
										<div class="td3">${list.ondate}</div>
										<div class="td3">${list.name}</div>
									</div>
								</c:forEach>
								
							</div>
							<!-- pagination -->
							<div class="direction1">
								<c:choose>
									<c:when test="${pi.cpage eq 1}">
										<a class="pagingBtn pagingBtnSize" href="#">&lt;</a>
									</c:when>
									<c:otherwise>
										<a class="pagingBtn pagingBtnSize" href="/main/headerChange.do?data=techList&cpage=${pi.cpage - 1}">&lt;</a>
									</c:otherwise>
								</c:choose>
								<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
									<a class="pagingBtn pagingBtnSize" href="/main/headerChange.do?data=techList&cpage=${page}">${page}</a>
								</c:forEach>
								<c:choose>
									<c:when test="${pi.cpage eq pi.maxPage}">
										<a class="pagingBtn pagingBtnSize" href="#">&gt;</a>
									</c:when>
									<c:otherwise>
										<a class="pagingBtn pagingBtnSize" href="/main/headerChange.do?data=techList&cpage=${pi.cpage + 1}">&gt;</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>