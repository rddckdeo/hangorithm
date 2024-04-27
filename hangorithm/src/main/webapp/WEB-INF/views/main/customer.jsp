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
				<!-- status 별 P태그 -->
				<div class="width100 direction1 justifyBet">
					<c:choose>
						<c:when test="${status == 'info'}">
							<p class="width100 font1">공지사항</p>
						</c:when>
						<c:when test="${status == 'board'}">
							<p class="width100 font1">문의사항</p>
						</c:when>
						<c:when test="${status == 'tech'}">
							<p class="width100 font1">기술지원</p>
						</c:when>
					</c:choose>
					<div class="EnrollBtn">
						<c:choose>
							<c:when test="${status == 'info'}"><a class="EnrollATag" href="boardEnrollForm.do?status=info">작성하기</a></c:when>
							<c:when test="${status == 'board'}"><a class="EnrollATag" href="boardEnrollForm.do?status=board">작성하기</a></c:when>
							<c:when test="${status == 'tech'}"><a class="EnrollATag" href="boardEnrollForm.do?status=tech">작성하기</a></c:when>
						</c:choose>
					</div>
				</div>
				<!-- 게시글 본문 -->
				<div class="width90 infoBoard">
					<!-- Card -->
					<div class="width100 height100 direction2 displayAllCenter">
						<div class="boardCardStyle">
							<!-- th -->
							<div class="direction1 textAlign thMain2">
								<div class="td1">No</div>
								<div class="td4">제목</div>
								<div class="td3">작성날</div>
								<div class="td3">작성자</div>
								<div class="td3">조회수</div>
							</div>
						<!-- td -->
						<c:forEach items="${list}" var="list">
							<div class="direction1 textAlign thContent2 contentFont12" onclick="detailForm(${list.no},'${status}')">
								<div class="td1">${list.no}</div>
								<div class="td4">${list.title}</div>
								<div class="td3">${list.ondate}</div>
								<div class="td3">${list.name}</div>
								<div class="td3">${list.view}</div>
							</div>
						</c:forEach>
					</div>	
					<!-- pagination -->
					<div class="direction1">
						<c:choose>
							<c:when test="${pi.cpage eq 1}">
								<a href="#" class="pagingBtn pagingBtnSize2">&lt;</a>
							</c:when>
							<c:otherwise>
								<a href="/main/customerForm.do?status=${status}&cpage=${pi.cpage - 1}" class="pagingBtn pagingBtnSize2">&lt;</a>
							</c:otherwise>
						</c:choose>
						<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}"><a href="/main/customerForm.do?status=${status}&cpage=${page}" class="pagingBtn pagingBtnSize2">${page}</a></c:forEach>
						<c:choose>
							<c:when test="${pi.cpage eq pi.maxPage}">
								<a href="#" class="pagingBtn pagingBtnSize2">&gt;</a>
							</c:when>
							<c:otherwise>
								<a href="/main/customerForm.do?status=${status}&cpage=${pi.cpage + 1}" class="pagingBtn pagingBtnSize2">&gt;</a>
							</c:otherwise>
						</c:choose>
						

						
						
						
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>