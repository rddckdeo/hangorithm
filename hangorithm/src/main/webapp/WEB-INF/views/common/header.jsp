<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<header class="header">
		<div class="direction2 height100 justifyAround alignCenter">
			<div class="direction1 width100 justifyEve borderBottom paddingBottom">
				<div class="direction1 headerDiv1-1 justifyEve">
					<div class="headerLogo displayAllCenter"><a class="aTag" href="/">Hangorithm</a></div>
					<div class="displayAllCenter">
						<input class="headerInput">
					</div>
				</div>
				<div class="direction1 justifyCenter alignCenter headerDiv1-2">
					<c:choose>
						<c:when test="${!empty sessionScope.login}">
							<div>${sessionScope.login.MName}님 환영합니다.</div>
							<div><a class="headerA" href="/member/myPageForm.do">내 프로필</a></div>
							<div><a class="headerA" href="/member/logout.do">로그아웃</a></div>
							<div class="headerImg"><img class="mainImg" src="${sessionScope.login.MPath}${sessionScope.login.MImg}"></div>
						</c:when>
						<c:otherwise>
							<div><a class="headerA" href="/member/loginForm.do">로그인</a></div>
							<div><a class="headerA" href="/member/registerForm.do">회원가입</a></div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="direction1 headerDiv2">
				<div class="headerBox"><a class="aTag" href="/main/companyForm.do">회사소개</a></div>
				<div class="headerBox"><a class="aTag" href="/main/productForm.do">제품센터</a></div>
				<div class="headerBox"><a class="aTag" href="/main/customerForm.do">문의센터</a></div>
			</div>
			
			<!-- <div class="direction1 headerDiv2">
				<div class="headerBox"><a class="aTag" href="/main/companyForm.do">회사소개</a></div>
				<div class="headerBox"><a class="aTag" href="/main/productForm.do">제품소개</a></div>
				<div class="headerBox"><a class="aTag" href="/main/productListForm.do">제품구매</a></div>
				<div class="headerBox"><a class="aTag" href="/main/techForm.do">기술센터</a></div>
				<div class="headerBox"><a class="aTag" href="/main/customerForm.do">고객센터</a></div>
			</div> -->
		</div>
	</header>

</body>
</html>