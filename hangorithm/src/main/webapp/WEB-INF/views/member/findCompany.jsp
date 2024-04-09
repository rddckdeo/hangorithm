<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Company</title>
<link href="/resources/css/member/member.css" rel="stylesheet"/>
<link href="/resources/css/default.css" rel="stylesheet"/>
<script src="/resources/javascript/member.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form id="findCompanyForm">
		<div class="width100 displayAllCenter direction2">
			<div class="companyDiv direction2 displayAllCenter marginBottom20">
				<div class="companyFont">기존 회사가 있으신가요?</div>
				<div class="direction1 width100 justifyCenter marginBottom10">
					<input id="companyName" name="companyName" type="text" class="companyInput" placeholder="회사를 입력해주세요" value="" onkeyup="findCompanyBoard2(event)">
					<img class="companyInputIcon" src="/resources/upload/icon/search.svg" onclick="findCompanyBoard()">
				</div>
				<div class="companyFont2">개인 구매자 인가요?</div>
				<div class="companyFont2" onclick="CompanyDivSwitch()">회사를 신규로 등록하시나요?</div>
			</div>
			<!-- 검색 결과 List -->
			<div class="companyBoard">
				<!-- 신규 Company -->
				<div class="companyEnroll height100" id="companyEnrollDiv">
					<div class="direction2">
						<div class="direction1 marginBottom10"><div class="companyEnrollDiv1">회사 이름 :</div><input class="companyEnrollInput" id="cName" type="text"></div>
						<div class="direction1 marginBottom10"><div class="companyEnrollDiv1">회사 대표번호 :</div><input class="companyEnrollInput" id="cNum" type="text"></div>
						<div class="direction1 marginBottom10"><div class="companyEnrollDiv1">회사 주소 :</div><input class="companyEnrollInput" id="cLocation" type="text"></div>
						<div class="direction1 marginBottom10"><div class="companyEnrollDiv1">회사 사업자번호 :</div><input class="companyEnrollInput" id="cBusiness" type="text"></div>
						<div class="width100 justifyEnd"><button class="companyEnrollBtn" type="button" onclick="companyEnroll()">제출</button></div>
					</div>
				</div>
				<!-- find Company -->
				<div class="companyListDiv alignCenter justifyStart direction2" id="findCompanyDiv">
					<c:choose>
						<c:when test="${company eq null}">
							<div class="displayAllCenter height100">검색해주세요</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${company}">
								<div class="direction2 companyList" onclick="companyDataSend('${item.CNo}', '${item.CName}')">
									<div class="direction1 width100">
										<div class="width30">No : ${item.CNo}</div>
										<div class="width50">회사 이름 : ${item.CName}</div>
									</div>
									<div class="width100">회사 주소 : ${item.CLocation}</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		<!-- paing -->
			<c:if test="${!empty companyName}">
				<div class="companyPaging">
					<!-- <<표시 -->
					<c:choose>
						<c:when test="${pi.cpage eq 1}">
							<a class="pagingBtn" href="#">&lt;</a>
						</c:when>
						<c:otherwise>
							<a class="pagingBtn" href="/member/findCompanyBoard.do?companyName=${companyName}&cpage=${cpage -1}">&lt;</a>
						</c:otherwise>
					</c:choose>
					<!-- 숫자 -->
					<c:forEach var="page" begin="${pi.startPage}" end="${pi.endPage}">
						<a class="pagingBtn" href="/member/findCompanyBoard.do?companyName=${companyName}&cpage=${page}">${page}</a>
					</c:forEach>
					<!-- >>표시 -->
					<c:choose>
						<c:when test="${pi.cpage eq maxpage}">
							<a class="pagingBtn" href="#">&gt;</a>
						</c:when>
						<c:otherwise>
							<a class="pagingBtn" href="/member/findCompanyBoard.do?companyName=${companyName}&cpage=${cpage + 1}">&gt;</a>
						</c:otherwise>
					</c:choose>
				</div>
			</c:if>
		</div>
	</form>
</body>
</html>