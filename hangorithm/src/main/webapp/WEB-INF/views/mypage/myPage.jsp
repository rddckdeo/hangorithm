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
				<div class="width80 borderDefault direction2 displayAllCenter">
					<!-- status별 Content -->
					<c:choose>
						<c:when test="${status eq 'info'}">
							<p class="mypageP">내 정보</p>
							<div class="mypageDiv1">
								
									<div><img src="${login.MPath}${login.MImg}" width="200"></img></div>
									<div class="direction2 mypageDiv2">
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">가입 날짜 : </div>
											<input class="mypageTd" value="${login.MOndate}" id="ondate" disabled>
										</div>
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">아이디 : </div>
											<input class="mypageTd" value="${login.MId}" id="id" disabled>
										</div>
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">이름 : </div>
											<input class="mypageTd" value="${login.MName}" disabled id="name">
										</div>
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">직책 : </div>
											<input class="mypageTd" value="${login.MPosition}" disabled id="position">
										</div>
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">이메일 : </div>
											<input class="mypageTd" value="${login.MEmail}" disabled id="email">
										</div>
										<div class="direction1 marginBottom10 alignCenter">
											<div class="mypageTh">생일 : </div>
											<input class="mypageTd" value="${login.MBirth}" disabled id="birth">
										</div>
									</div>
								</div>
								<div class="width100 justifyEnd mypageBtnBox">
									<div class="mypageBtn" onclick="undisabled()" id="updateBtn">수정하기</div>
									<div onclick="saveInfo()" class="saveBtn" id="saveBtn">저장하기</div>
								</div>
						</c:when>
						<c:when test="${status eq 'company'}">
							<p class="mypageP">회사 정보</p>
							<div class="companyDiv1 companyCard displayAllCenter">
								<div class="displayAllCenter direction2 width90 height90 companyCard2">
									<div class="width100">
										<!-- content -->
										<div class="direction1 companyCardDiv">
											<div class="mypageTh2">회사 이름 : </div>
											<div class="mypageTd2">${company.CName}</div>
										</div>
										<div class="direction1 companyCardDiv">
											<div class="mypageTh2">회사 등록일 : </div>
											<div class="mypageTd2">${company.COndate}</div>
										</div>
										<div class="direction1 companyCardDiv">
											<div class="mypageTh2">회사 번호 : </div>
											<div class="mypageTd2">${company.CNum}</div>
										</div>
										<div class="direction1 companyCardDiv">
											<div class="mypageTh2">회사 주소 : </div>
											<div class="mypageTd2">${company.CLocation}</div>
										</div>
										<div class="direction1 companyCardDiv">
											<div class="mypageTh2">회사 사업자 번호 : </div>
											<div class="mypageTd2">${company.CBusiness}</div>
										</div>
									</div>
								</div>
							</div>
						</c:when>
						<c:when test="${status eq 'board'}">
							<p class="mypageP">문의 사항</p>
							<div class="direction2 displayAllCenter boardCard displayAllCenter">
								<!-- th -->
								<div class="boardCard2 alignCenter direction2">
									<div class="direction1 textAlign width100 thborderBottom">
										<div class="bTh1">No</div>
										<div class="bTh4">제목</div>
										<div class="bTh3">작성날</div>
										<div class="bTh3">작성자</div>
										<div class="bTh3">조회수</div>
									</div>
									<c:forEach items="${list}" var="list">
										<div class="direction1 textAlign width100 marginBottom20">
											<div class="bTh1">${list.no}</div>
											<div class="bTh4">${list.title}</div>
											<div class="bTh3">${list.ondate}</div>
											<div class="bTh3">${list.name}</div>
											<div class="bTh3">${list.view}</div>
										</div>
									</c:forEach>
								</div>
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
							<p class="mypageP">문의 사항</p>
							<div class="direction2 displayAllCenter boardCard displayAllCenter">
								<!-- th -->
								<div class="boardCard2 alignCenter direction2">
									<div class="direction1 textAlign width100 thborderBottom">
										<div class="bTh1">No</div>
										<div class="bTh4">제목</div>
										<div class="bTh3">작성날</div>
										<div class="bTh3">작성자</div>
										<div class="bTh3">조회수</div>
									</div>
								<c:forEach items="${list}" var="list">
									<div class="direction1 textAlign width100 marginBottom20">
										<div class="bTh1">${list.no}</div>
										<div class="bTh4">${list.title}</div>
										<div class="bTh3">${list.ondate}</div>
										<div class="bTh3">${list.name}</div>
										<div class="bTh3">${list.view}</div>
									</div>
								</c:forEach>
								</div>
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