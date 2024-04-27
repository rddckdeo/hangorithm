<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/member.css" rel="stylesheet"/>
<link href="/resources/css/member/mypage.css" rel="stylesheet"/>
<link href="/resources/css/default.css" rel="stylesheet"/>
<script src="/resources/javascript/mypage.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
				<div class="width80 borderDefault direction2">
					<!-- status별 Content -->
					<c:choose>
						<c:when test="${status eq 'info'}">
							<p>내 정보</p>
							<div class="direction1 width100 alignCenter justifyAround">
								
									<div><img src="${login.MPath}${login.MImg}" width="200"></img></div>
									<div class="direction2">
										
										<div>가입 날짜 : <input value="${login.MOndate}" id="ondate" disabled></div>
										<div>아이디 : <input value="${login.MId}" id="id" disabled></div>
										<div>이름 : <input value="${login.MName}" disabled id="name"></div>
										<div>직책 : <input value="${login.MPosition}" disabled id="position"></div>
										<div>이메일 : <input value="${login.MEmail}" disabled id="email"></div>
										<div>생일 : <input value="${login.MBirth}" disabled id="birth"></div>
									</div>
								</div>
								<div class="width100 justifyEnd">
									<div class="" onclick="undisabled()" id="updateBtn">수정하기</div>
									<button type="button" onclick="saveInfo()" class="saveBtn" id="saveBtn">저장하기</button>
								</div>
						</c:when>
						<c:when test="${status eq 'company'}">
							<p>회사 정보</p>
							<div>회사 이름 : ${company.CName}</div>
							<div>회사 등록일 : ${company.COndate}</div>
							<div>회사 번호 : ${company.CNum}</div>
							<div>회사 주소 : ${company.CLocation}</div>
							<div>회사 사업자 번호 : ${company.CBusiness}</div>
						</c:when>
						<c:when test="${status eq 'board'}">
							<div class="width100 direction2 displayAllCenter">
								<!-- th -->
								<div class="direction1 textAlign thMain2">
									<div class="td1">No</div>
									<div class="td4">제목</div>
									<div class="td3">작성날</div>
									<div class="td3">작성자</div>
									<div class="td3">조회수</div>
								</div>
								<c:forEach items="${list}" var="list">
									<div class="direction1 textAlign">
										<div class="td1">${list.no}</div>
										<div class="td4">${list.title}</div>
										<div class="td3">${list.ondate}</div>
										<div class="td3">${list.name}</div>
										<div class="td3">${list.view}</div>
									</div>
								</c:forEach>
								<!-- paging -->
								<div class="direction1">
									<c:choose>
										<c:when test="${pi.cpage eq 1}">
											<a href="#" class="pagingBtn pagingBtnSize2">&lt;</a>
										</c:when>
										<c:otherwise>
											<a href="/mypage/myPageForm.do?status=${status}&cpage=${pi.cpage - 1}" class="pagingBtn pagingBtnSize2">&lt;</a>
										</c:otherwise>
									</c:choose>
									<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}"><a href="/mypage/myPageForm.do?status=${status}&cpage=${page}" class="pagingBtn pagingBtnSize2">${page}</a></c:forEach>
									<c:choose>
										<c:when test="${pi.cpage eq pi.maxPage}">
											<a href="#" class="pagingBtn pagingBtnSize2">&gt;</a>
										</c:when>
										<c:otherwise>
											<a href="/mypage/myPageForm.do?status=${status}&cpage=${pi.cpage + 1}" class="pagingBtn pagingBtnSize2">&gt;</a>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</c:when>
						<c:when test="${status eq 'tech'}">
							<div class="width100 direction2 displayAllCenter">
								<!-- th -->
								<div class="direction1 textAlign thMain2">
									<div class="td1">No</div>
									<div class="td4">제목</div>
									<div class="td3">작성날</div>
									<div class="td3">작성자</div>
									<div class="td3">조회수</div>
								</div>
								<c:forEach items="${list}" var="list">
									<div class="direction1 textAlign">
										<div class="td1">${list.no}</div>
										<div class="td4">${list.title}</div>
										<div class="td3">${list.ondate}</div>
										<div class="td3">${list.name}</div>
										<div class="td3">${list.view}</div>
									</div>
								</c:forEach>
								<!-- paging -->
								<div class="direction1">
									<c:choose>
										<c:when test="${pi.cpage eq 1}">
											<a href="#" class="pagingBtn pagingBtnSize2">&lt;</a>
										</c:when>
										<c:otherwise>
											<a href="/mypage/myPageForm.do?status=${status}&cpage=${pi.cpage - 1}" class="pagingBtn pagingBtnSize2">&lt;</a>
										</c:otherwise>
									</c:choose>
									<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}"><a href="/mypage/myPageForm.do?status=${status}&cpage=${page}" class="pagingBtn pagingBtnSize2">${page}</a></c:forEach>
									<c:choose>
										<c:when test="${pi.cpage eq pi.maxPage}">
											<a href="#" class="pagingBtn pagingBtnSize2">&gt;</a>
										</c:when>
										<c:otherwise>
											<a href="/mypage/myPageForm.do?status=${status}&cpage=${pi.cpage + 1}" class="pagingBtn pagingBtnSize2">&gt;</a>
										</c:otherwise>
									</c:choose>
								</div>
								
							</div>
						</c:when>
					</c:choose>

					
				</div>
			</div>
		</div>
	</div>
</body>
</html>