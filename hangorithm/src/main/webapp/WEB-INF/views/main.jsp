<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<script src="/resources/javascript/main.js"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="width100 displayAllCenter borderBottom paddingBottom30">
		<div class="main direction1 displayAllCenter">
			<div class="mainBox1 direction1">
				<!-- 버튼 모음 -->
				<div class="direction2 mainBox2 justifyEve alignCenter">
					<div class="mainBox2Click" onclick="mainBoxStatus(1)">내 프로필</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(2)">공지사항</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(3)">문의사항</div>
					<div class="mainBox2Click"onclick="mainBoxStatus(4)">기술지원</div>
				</div>
				<!-- content 구역 -->
				<div class="mainBox3">
					<c:choose>
						<c:when test="${empty sessionScope.login}">
							<div class="direction2 displayAllCenter width100 height100">
								<p class="contentNull">로그인이 필요합니다.</p>
								<a class="contentNullButton" href="/member/loginForm.do">로그인하러가기</a>
							</div>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'infoList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/infoList.jsp"%>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'boardList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/board.jsp"%>
						</c:when>
						<c:when test="${sessionScope.BtnStatus == 'techList' && !empty sessionScope.login}">
							<%@ include file="/WEB-INF/views/main/mainContent/techList.jsp"%>
						</c:when>
						<c:otherwise>
							<%@ include file="/WEB-INF/views/main/mainContent/profile.jsp"%>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
	<div class="width100 ">
		<div class="mainDiv2 direction1">
			<span class="introFont1">IN</span>
			<span class="introFont2">TRO</span>
		</div>
		<div class="mainDiv2 paddingBottom10">
			<span class="introFont3">항상 최고의 서비스를 제공해드리겠습니다.</span>
		</div>
	</div>
	<!-- 회사 소개 영역 -->
	<div class="width100 displayAllCenter">
		<div class="direction1 mainDiv">
			<div class="introDiv1 introDivBack1">
				<div class="introDivFont introDivFontColor2">
					<p class="marginBottom20">홈페이지 소개</p>
					<div class="introFontContent1">
						<div class="marginBottom10">안녕하세요 홈페이지를 방문해주셔서 감사합니다.</div>
						<div>해당 홈페이지는 김창대의 개인 프로젝트 중 하나입니다.</div>
						<div>국비학원에서 배웠던 내용의 기초를 다시한번 다지기 위해</div>
						<div class="marginBottom20">개인적으로 만들게 된 프로젝트입니다.</div>
						<div>또한 기업에서 중요로 하는 AWS를 통한 홈페이지 배포를 하기 위해</div>
						<div class="marginBottom20">간단한 복습용 홈페이지를 만든 이후 배포를 하기 위해 홈페이지를 작성하였습니다.</div>
						<div>가장 기초적인 기능들인 페이지처리, 로그인 및 회원가입 기능, myPage, 게시판 기능</div>
						<div>검색 기능 등을 구현하였는데 이러한 요소로 해당 홈페이지를 만든 이유는 배웠던 다시 사용하기</div>
						<div>위해서가 아닌 스스로 해당 기능들을 정확하게 이해하고 구현하고 싶었기에 기존에 사용했던 </div>
						<div>내용을 하나씩 파악해보며 홈페이지를 만들었습니다.</div>
					</div>
				</div>
			</div>
			<div class="direction2 width50">
				<div class="introDiv2 introDivBack2 introDivFont introDivFontColor1">
					<p class="introPtag">중점적으로 생각한 요소</p>
					<div class="introFontContent2">
						<div class="marginBottom10">- 코드 재사용의 중요성</div>
						<!-- <div class="marginBottom10">웹페이지의 기능을 만드는 것은 누구나 공부를 하면 만들 수 있다고 생각합니다.</div> -->
						<div class="marginBottom10">- client와 Server와의 데이터 교환하는 여러가지 방법 사용</div>
						<div class="marginBottom10">- 최소한의 view를 통해 여러 기능을 활용할 수 있게 홈페이지 제작</div>
						<div class="marginBottom10">- 기능을 사용만하는 것이 아닌 정확하게 이해하고 넘어가기</div>
						<div class="marginBottom10 marginLeftt30">■ RowBounds, STS Security, Paging처리, HTML 및 CSS 요소, JS 이벤트 등</div>
						<div class="marginBottom10">- 간단한 요소라도 왜 이렇게 사용되고 목적과 이유 찾기</div>
						
					</div>
				</div>
				<div class="introDiv2 introDivBack3 introDivFont introDivFontColor1">
					<p class="introPtag">이용 가능한 서비스</p>
					<div class="introFontContent2">
						<div class="marginBottom10">- 첫 화면에서 여러가지 서비스를 이용할 있게 기능 작성</div>
						<div class="marginBottom10">- 문의, 공지, 기술 등의 문의List 확인 및 게시글 작성</div>
						<div class="marginBottom10">- 나의정보, 회사정보, 나의 작성글을 볼 수 있는 MyPage</div>
						<div class="marginBottom10">- 아이디 찾기, 로그인 기능</div>
						<div class="marginBottom10">- 회사 찾기 또는 회사를 만들 수 있는 기능</div>
						<div class="marginBottom10">- STS Security를 통한 비밀번호 암호화 등을 이용한 회원가입</div>
						<div class="marginBottom10">- 입력한 데이터를 토대로 각 문의별 List를 보여주는 검색 기능</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="alignCenter width100 direction2">
		<p class="mainReviewPTag"> - 이용 가능한 서비스 - </p>
		<div class="width90">
			<p class="mainReviewPTag2">로그인, 회원가입</p>
			<div class="direction1 width100 justifyAround">
				<div class="introCardImg">
					<img id="mainImg1" class="width100 height100 borderRadius1">
				</div>
				<div class="introCardContent displayAllCenter">
					<div class="introCardContent2">
						<div class="reviewDiv">
							회원가입<br><br>
							- 회원가가입 시 직장에 필요한 정보를 받아옵니다.<br><br>
							- 직책에 체크박스를 클릭하면 연구원 직책으로 변경됩니다. <br><br>
							- 필요정보가 채워지지 않을 경우 제출이 되지않습니다.<br><br>
							- 패스워드 암호화는 STS Security를 사용하였습니다.<br><br>
							- 회사 찾기 버튼을 누르면 새로운 창에서 회사의 리스트를 검색할 수 있습니다. <br><br>
							 로그인<br><br>
							 - 로그인 시 STS Security를 통해 입력된 비밀번호와 DB에 비밀번호가 일치한지 확인합니다.<br><br>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="width90">
			<p class="mainReviewPTag2">Main Content</p>
			<div class="direction1 width100 justifyAround alignCenter">
				<div class="introCardContent displayAllCenter">
					<div class="introCardContent2">
						<div class="reviewDiv">
							Main Content<br><br>
							- 첫 화면 나의 프로필과 여러 게시글을 한번에 확인할 수 있습니다.<br><br>
							- 버튼을 통해 '내정보 수정', '나의 회사 확인', '문의사항 페이지'로 이동할 수 있습니다.<br><br>
							- 각각의 게시판 List의 페이징 처리를 하였습니다.<br><br>
							- 로그인이 되어있지 않다면 로그인페이지로 이동하는 버튼이 표시됩니다.<br><br>
						</div>
					</div>
				</div>
				<div class="introCardImg2">
					<img id="mainImg2" class="width100 height100 borderRadius1">
				</div>
			</div>
		</div>
		<div class="width90">
			<p class="mainReviewPTag2">게시판</p>
			<div class="direction1 width100 justifyAround">
				<div class="introCardImg">
					<img id="mainImg3" class="width100 height100 borderRadius1">
				</div>
				<div class="introCardContent displayAllCenter">
					<div class="introCardContent2">
						<div class="reviewDiv">
							게시판<br><br>
							- 문의사항, 공지사항, 기술지원의 3가지 카테고리가 있습니다.<br><br>
							- '작성하기' 버튼을 누르면 게시글을 작성하는 페이지로 이동됩니다.<br><br>
							- 게시글 List에 각 게시글을 선택하면 해당 게시글의 상세정보를 볼 수 있습니다.<br><br>
							- 각 페이지별로 5개의 제한을 두어 RowBounds를 통해 페이징처리를 하였습니다.<br><br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="width90">
			<p class="mainReviewPTag2">검색 기능</p>
			<div class="direction1 width100 justifyAround">
				<div class="introCardContent displayAllCenter">
					<div class="introCardContent2">
						<div class="reviewDiv">
							검색 기능<br><br>
							- 페이지 상단에 검색할 내용을 입력하고 Enter를 누르면 입력한 내용이
							'포함된'내용을 모두 가져오게 됩니다.<br><br>
							- 우측 상단에 더보기 버튼을 누를경우 5개만 보이던 게시글을 더 나열 시킬 수 있습니다.<br><br>
							
						</div>
					</div>
				</div>
				<div class="introCardImg">
					<img id="mainImg4" class="width100 height100 borderRadius1">
				</div>
			</div>
		</div>
		<div class="width90">
			<p class="mainReviewPTag2">My Page</p>
			<div class="direction1 width100 justifyAround">
				<div class="introCardImg">
					<img id="mainImg5" class="width100 height100 borderRadius1">
				</div>
				<div class="introCardContent displayAllCenter">
					<div class="introCardContent2">
						<div class="reviewDiv">
							My Page<br><br>
							- My Page에서는 나의 정보, 소속된 회사의 정보, 내가 작성한 문의를 확인할 수 있습니다.<br><br>
							- 정보 수정하기 버튼을 누르면 아이디와 생성일자를 제외한 정보를 수정할 수 있습니다.<br><br>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="justifyCenter alignCenter direction2 width100">
		<p class="mainReviewPTag">프로젝트의 후기</p>
		<div class="reviewContent displayAllCenter direction2">
			<p class="width90 mainReviewPTag3">후기</p>
			<div>해당 프로젝트를 통해 기존 국비지원에서 배웠던 내용을 다시한번 복습할 수 있는 기회를 얻었습니다.<br>
			기존 프로젝트(semi, final)를 작업할 때 View와 Controller ( client 와 Server )사이에 데이터 교환방식에<br>
			한계를 느끼기도 하였으며 기능을 사용할줄 알았지만 유동적으로 사용하기에는 이해도가 떨어졌었습니다.<br>
			하지만 이번에 만든 Web을 통해 이런 기반을 다시한번 다지고 성장할 수 있었습니다.
			</div>
			<p class="width90 mainReviewPTag3">아쉬운 점</p>
			<div>해당 프로젝트를 만들다보니 만들어보고 싶은 요소들이 너무 많아서 처음에는 스케일을 크게 하였습니다<br>
			그러나 혼자서 기획, 구상, 퍼블리싱 또는 프론트엔드 영역( HTML, CSS, JavaScript ) 및 백엔드 영역까지<br>
			하려다보니 너무나도 오래 걸리기에 프로젝트 작업중에 기존에 작업을 대폭 삭제하였습니다.<br>
			다음에 작업을 하게되면 이런 요소를 고려하여 기획 및 작업을 할 예정입니다.<br>
			많이 아쉬움이 많기도 하고 해당 홈페이지를 들어오신 분들도 기능적으로, 또는 퍼블리싱의 영역에서<br>
			큰 요소가 없다고 생각하실 수 있습니다.<br>
			하지만 다음 프로젝트에는 좀 더 철저히 기획하고 체계적으로 관리하여 완성도가 높은 프로젝트를 만들어보겠습니다.<br>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>