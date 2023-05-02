<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노하우 게시판(자유)</title>
<link rel="stylesheet" href="../../static/css/public.css">
<link rel="stylesheet" href="../../static/css/global-header.css">
<link rel="stylesheet" href="../../static/css/font.css">
<link rel="stylesheet" href="../../static/css/master-know-how-free.css">
<link rel="stylesheet" href="../../static/css/footer.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&display=swap"
	rel="stylesheet">
<link rel="shortcut icon" href="../../static/image/shortcut.png">

</head>
<body class="life-topic">
	<div class="webp-bgroup">
		<!-- 상단부 -->
		<header class="global-header">
			<div class="global-navigation-bar">
				<section class="d-none d-lg-block d-xl-block d-xl-block">
					<div class="desktop-header">
						<!-- 숨고로그, 서비스, 고수찾기 마켓, 커뮤니티 -->
						<div class="left-section">
							<!-- 숨고 로고 대체제 만들어야되요 -->
                     <div class="logo">
                        <a href="main.jsp"> 
                           <img src="../../static/image/logo.png">
                        </a>
                     </div>
							<nav>
								<ul class="nav-list">
									<!-- 서비스 요청 -->
									<li class="nav-item left-section-item "><a
										class="gnb-link"> <span>사이트소개</span>
									</a></li>
									<!-- 고수찾기 -->
									<li class="nav-item left-section-item"><a href="study.jsp"
										class="gnb-link"> <span>스터디</span>
									</a></li>
									<!-- 마켓 -->
									<li class="nav-item left-section-item"><a
										href="master-know-how-free.jsp" class="gnb-link"> <span>노하우</span>
									</a></li>
									<!-- 커뮤니티 -->
									<li class="nav-item left-section-item"><a
										href="list-by-language.jsp" class="gnb-link"> <span>Q&A</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<!-- 어떤 서비스가 필요하세요(이부분은 희수님만 하시면 됩니당)-->
						<div class="center-section" style="display: none;">
							<div class="service-searcher-desktop">
								<form class="global-search-bar">
									<div class="input-group">
										<div class="input-group-prepend"></div>
										<input type="text" placeholder="어떤 서비스가 필요하세요?">
										<div class="input-group-append"></div>
									</div>
								</form>
							</div>
						</div>
						<!-- 로그인, 회원가입, 고수가입 -->
						<div class="right-section">
							<nav class="nav-list">
								<ul class="nav-list">
									<c:choose>
										<c:when test="${not empty memberId}">
											<!-- 로그아웃 -->
											<li class="nav-item right-section-item"><a
												href="logout.member" class="gnb-link"><span>로그아웃</span> </a></li>
											<!-- 마이페이지 -->
											<li class="nav-item right-section-item"><a
												href="mypageOk.member" class="gnb-link"><span>마이페이지</span>
											</a></li>
										</c:when>
										<c:otherwise>
											<!-- 로그인 -->
											<li class="nav-item right-section-item"><a
												href="login.member" class="gnb-link"><span>로그인</span> </a></li>
											<!-- 회원가입 -->
											<li class="nav-item right-section-item"><a
												href="join.member" class="gnb-link"><span>회원가입</span>
											</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</nav>
							<!-- 고수가입 -->
							<button type="button"
								class="btn pro-signup-btn right-section-item btn-primary">
								<a>전문가신청</a>
							</button>
						</div>
					</div>
				</section>
			</div>
		</header>
		<!-- 중단부 -->
		<div class="web-body">
			<div class="community-container container">
				<div class="life-container">
					<section class="community">
						<!-- 커뮤니티, 글쓰기 -->
						<div class="observer-container">
							<section class="community-header">
								<!-- 커뮤니티 제목 -->
								<h1 class="community-title">고수의 노하우</h1>
								<!-- 글쓰기 버튼 -->
								<div>
									<div class="write-button-desktop">
										<a href="write.jsp">
											<button type="button" class="btn write-button btn-primary">
												글쓰기 <i class="write"></i>
											</button>
										</a>
									</div>
								</div>
							</section>
						</div>
						<!-- 숨고생활, 고수의 노하우 -->
						<ul class="category">
							<li id="ul-li1" class="link-text router-link-active"><a
								href="javascript:location.href='${contextPath}/KnowHowlistOk.post'" class="link-text"
								class="link-text router-link-active">자유</a></li>
							<li id="ul-li2"
								class="sg-text-body2 sg-font-regular lg:sg-text-body1 lg:sg-font-regular sg-text-gray-400">
								<a href="javascript:location.href='${contextPath}/KnowHowColumnlistOk.post'" class="link-text">칼럼</a>
							</li>
						</ul>
						<!-- 그 아래 모든 내용 -->
						<div class="community-layout">
							<!-- 전체, 궁금해요, 얼마예요, 고수찾아요. 함께해요, 고수소식 -->
							<div class="soomgo-life-topic-layout">
								<div class="observer-container" style="height: auto;">
									<section class="topic-filter-section">

										<ul class="topic">
											<!-- 전체 -->
											<li class="selected"><a
												class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/634d181f-f6cc-470c-9a1a-cfed6d9c909a.png">
													</div> <span
													class="sg-text-subhead4 sg-font-bold sg-text-gray-900">전체</span>
											</a></li>
											<!-- 궁금해요 -->
											<li><a class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/f1e39209-9357-4412-b962-99a9d62e6cc5.png">
													</div> <span
													class="sg-text-body2 sg-font-regular sg-text-gray-400">직장인</span>
											</a></li>
											<!-- 얼마예요 -->
											<li><a class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/a283e912-b56e-4310-8fa1-2c619bd0332d.png">
													</div> <span
													class="sg-text-body2 sg-font-regular sg-text-gray-400">취준생</span>
											</a></li>
											<!-- 고수찾아요 -->
											<li><a class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/b3326101-bf1e-4004-8fa1-b5a0724f9e62.png">
													</div> <span
													class="sg-text-body2 sg-font-regular sg-text-gray-400">학생</span>
											</a></li>
											<!-- 함께해요 -->
											<li><a class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/ea04ebe5-4787-4b56-99a7-308c6310d972.png">
													</div> <span
													class="sg-text-body2 sg-font-regular sg-text-gray-400">자개개발</span>
											</a></li>
											<!-- 고수소식 -->
											<li><a class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img
															src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/8dbafccb-92f6-4be2-b50c-a4eade43585f.png">
													</div> <span
													class="sg-text-body2 sg-font-regular sg-text-gray-400">취미</span>
											</a></li>
										</ul>
									</section>
								</div>
							</div>
							<!-- 중단부 몸통 부분 -->
							<div class="community-content-layout all">
								<!-- 키워드와 #태그 모두 검색할 수 있어요 -->
								<div class="search-community d-none d-lg-block">
									<form class="serch-form">
										<div class="input-group">
											<div class="input-group-prepend">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K"
													class="search">
											</div>
											<input type="text" placeholder="키워드와 #태그 모두 검색할 수 있어요."
												class="search-input form-control" maxlength="15">
											<div class="input-group-append">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhl…wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
													class="reset" style="display: none;">
											</div>
										</div>
									</form>
								</div>
								<!-- 지금 가장 뜨거운 숨고픽, 공지사항 -->
								<section class="curation">
									<!-- 지금 가장 뜨거운 숨고픽 -->
									<div class="curation-header">
										<h2 class="sg-text-headline sg-font-bold sg-text-gray-900">지금 가장 뜨거운 핫토픽🔥</h2>
										<span class="curation-page">1/2</span>
									</div>
									<!-- 공지사항 -->
									<div class="slick-slider slick-initialized">
										<!-- <버튼 -->
										<button type="button" class="slick-arrow slick-prev"
											style="display: none;">prev</button>
										<!-- 공지사항 배너 -->
										<div class="slick-list">
											<div class="slick-track"
												style="width: 1224px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
												<!-- 배너 하나 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	추천수 랭킹 게시글 🤝</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">itPocket</p>
															</div>
														</a>
													</div>
												</div>
												<!-- 두번쨰 베너 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">숨고
																	50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<!-- 세번쨰 베너 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">숨고
																	50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<!-- 4번째 베너 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">숨고
																	50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<!-- 5번쨰 베너 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">숨고
																	50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<!-- 6번쨰 베너 -->
												<div class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">숨고
																	50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">Soomgo</p>
															</div>
														</a>
													</div>
												</div>
											</div>
										</div>
										<!-- >버튼 -->
										<button type="button" class="slick-arrow slick-next"
											style="display: block;">next</button>
									</div>
								</section>
								<!-- 서비스, 지역 -->
								<!-- 								<section class="service-area-filter all fixed">
									<button type="button" class="btn btn-none chip-btn filter-btn">
										<span>서비스</span>
									</button>
									<button type="button" class="btn btn-none chip-btn filter-btn">
										<span>지역</span>
									</button>
								</section> -->
								<!-- 커뮤니티 글 -->
								<article class="community-feed-list" id = "content-wrap">
									<ul class="feed-list">
										<!-- 첫번쨰 글 -->
																			</ul>	
								</article>
							</div>
						</div>
						<!-- 위로 가기 버튼 -->
						<a class="top-btn"></a>
					</section>
				</div>
			</div>
		</div>
		<!-- 하단부  -->
		<nav id="app-footer" class="footer-container">
			<div class="footer-container-row container">
				<div class="col-content margin-bottom">
					<p class="text contact">1599-5319</p>
					<p class="text middle">
						평일 10:00 - 18:00 <br> (점심시간 13:00 - 14:00 제외 · 주말/공휴일 제외)
					</p>
					<a class="download"
						href="https://soomgoapp.onelink.me/6cqv?af_channel=cpc&amp;af_dp=smgo%3A%2F%2Fhome%2F&amp;af_keywords=%EC%88%A8%EA%B3%A0&amp;af_sub2=%EB%A9%94%EC%9D%B8&amp;af_sub4=footer&amp;af_web_dp=https%3A%2F%2Fsoomgo.com%2Fapp-download%2Fsender&amp;c=%EB%A9%94%EC%9D%B8&amp;pid=google">
						<img
						src="https://assets.cdn.soomgo.com/icons/icon-download-appstore.svg"
						alt="앱스토어">APP STORE
					</a> <a class="download"
						href="https://soomgoapp.onelink.me/6cqv?af_channel=cpc&amp;af_dp=smgo%3A%2F%2Fhome%2F&amp;af_keywords=%EC%88%A8%EA%B3%A0&amp;af_sub2=%EB%A9%94%EC%9D%B8&amp;af_sub4=footer&amp;af_web_dp=https%3A%2F%2Fsoomgo.com%2Fapp-download%2Fsender&amp;c=%EB%A9%94%EC%9D%B8&amp;pid=google">
						<img
						src="https://assets.cdn.soomgo.com/icons/icon-download-palystore.svg"
						alt="구글플레이">PLAY STORE
					</a>
				</div>
				<div class="col-content right">
					<ul class="content-list">
						<li class="open-padding"><span
							class="text-middle title category"> 숨고소개 <span
								class="new-badge" style="display: none;">N</span> <!----></span>
							<div>
								<a href="/about" class="text-middle category">회사소개 <span
									class="new-badge" style="display: none;">N</span>
								</a> <a href="https://soomgo.career.greetinghr.com/"
									class="text-middle category">채용안내 <span class="new-badge"
									style="display: none;">N</span>
								</a> <a href="https://blog.soomgo.com" class="text-middle category">팀블로그
									<span class="new-badge" style="display: none;">N</span>
								</a>
							</div></li>
						<li class="open-padding"><span
							class="text-middle title category">고객안내 <span
								class="new-badge" style="display: none;">N</span>
						</span>
							<div>
								<a href="/how-it-works" class="text-middle category">이용안내 <span
									class="new-badge" style="display: none;">N</span>
								</a> <a href="/safety" class="text-middle category">안전정책 <span
									class="new-badge" style="display: none;">N</span>
								</a> <a href="/prices" class="text-middle category">예상금액 <span
									class="new-badge" style="display: none;">N</span>
								</a><a href="/search/pro?from=footer" class="text-middle category">고수찾기
									<span class="new-badge" style="display: none;">N</span>
								</a> <a href="https://help.soomgo.com/hc/ko/articles/360056329911"
									class="text-middle category">숨고보증 <span class="new-badge"
									style="display: none;">N</span>
								</a> <a href="/questions/"
									class="text-middle category router-link-exact-active router-link-active">고수에게묻다
									<span class="new-badge" style="display: none;">N</span>
								</a>
							</div></li>
						<li class="open-padding"><span
							class="text-middle title category">고수안내 <span
								class="new-badge" style="display: none;">N</span>
						</span>
							<div>
								<a href="/how-soomgo-works" class="text-middle category">이용안내
									<span class="new-badge" style="display: none;">N</span>
								</a> <a href="https://help.soomgo.com/hc/ko/categories/115001218027"
									class="text-middle category">고수가이드 <span class="new-badge"
									style="display: none;">N</span>
								</a> <a href="/pro" class="text-middle category">고수가입 <span
									class="new-badge" style="display: none;">N</span>
								</a> <a href="/pro-center" class="text-middle category">고수센터 <span
									class="new-badge" style="display: none;">N</span>
								</a>
							</div></li>
						<li class="open-padding"><span
							class="text-middle title category">고객센터 <span
								class="new-badge" style="display: none;">N</span>
						</span>
							<div>
								<a
									href="https://help.soomgo.com/hc/ko/categories/360002081551-%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD"
									class="text-middle category">공지사항 <span class="new-badge"
									style="display: none;">N</span>
								</a> <a href="https://help.soomgo.com/hc/ko"
									class="text-middle category">자주묻는질문 <span class="new-badge"
									style="display: none;">N</span>
								</a>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="footer-container-row container terms">
				<div class="term-container">
					<div class="col-content term-content">
						<div class="col-content-list-term" data-v-4e4965bd="">
							<div class="terms-group">
								<a href="/terms/usage" class="text term">이용약관</a> <a
									href="/terms/privacy" class="text term">개인정보처리방침</a>
							</div>
							<div class="terms-group">
								<a href="/terms/location" class="text term">위치기반 서비스 이용약관</a> <a
									target="_blank" rel="nofollow"
									href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208822325"
									class="text term"> 사업자 정보확인 </a>
							</div>
						</div>
						<div class="col-content-list-term">
							<span class="text term-text" data-v-4e4965bd="">
								(주)브레이브모바일은 통신판매중개자로서 통신판매의 당사자가 아니며 개별 판매자가 제공하는 서비스에 대한 이행,
								계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다. </span>
						</div>
						<ul class="col-content-guide">
							<li class="text">상호명:(주)브레이브모바일 · 대표이사:KIM ROBIN H ·
								개인정보책임관리자:김태우 · 주소:서울특별시 강남구 테헤란로 415, L7 강남타워 5층</li>
							<li class="text">사업자등록번호:120-88-22325 · 통신판매업신고증:제
								2021-서울강남-00551 호 · 직업정보제공사업 신고번호:서울청 제 2019-21호</li>
							<li class="text">고객센터:1599-5319 · 이메일:support@soomgo.com</li>
							<li class="text">Copyright ©Brave Mobile Inc. All Rights
								Reserved.</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let KH = `${KH}`;
	let contextPath = `${pageContext.request.contextPath}`;
</script>
<script src="../../static/js/master-know-how-free.js"></script>
</html>









