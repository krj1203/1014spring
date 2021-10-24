<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<link rel="styleSheet" href="do_mykuly_inquiry.css">
</head>
<body class="main-index" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">

	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<jsp:include page="header.jsp"></jsp:include><!-- header부분 -->
			<div id="main">
				<div id="content">
					<jsp:include page="sidemenu.jsp"></jsp:include><!-- 오른쪽 스크롤메뉴 부분 -->
					<jsp:include page="myPageTop.jsp"></jsp:include><!-- mypage상단부분 -->

					<div class="page_aticle aticle_type2">	<!-- Main 시작 -->
						<jsp:include page="mainLeft.jsp"></jsp:include>	<!-- Mainleft -->
						<div class="page_aticle aticle_type2">	<!-- MainCenter 시작 -->
							<div class="page_section section_review">
								<div class="head_aticle">
									<h2 class="tit">상품문의</h2>
								</div>
								
								<div class="board-container">
									<div id="productInquiryBoard" data-boardpagesize="10" data-boardtype="my_kurly" data-devicetype="pc">
										
										<div class="board-header-container">
											<ul class="list-description">
												<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당게시판으로 이동될 수 있습니다.</li>
												<li>
													배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 
													<a href="/shop/mypage/mypage_qna.php">1:1 문의</a>에 남겨주세요.
												</li>
											</ul>
										</div>
										
										<div class="board-item-container my_kurly">
											<div class="inquiry-board-header">
												<div></div>
												<div style="width: 520px;">제목</div>
												<div>작성일</div>
												<div>답변상태</div>
											</div>
											
											<!-- 문의내용이 없는경우 ↓↓↓↓↓↓↓↓↓-->
											<!--  <ul class="board-list">
												<li class="inquiry-empty">작성한 상품 문의가 없습니다.</li>
											</ul>
											<div class="board-inquiry-area">
												<div class="paging-navigation">
													<button type="button" class="paging-prev" disabled="">
														<span>이전</span>
													</button>
													<button type="button" class="paging-next" disabled="">
														<span>다음</span>
													</button>
												</div>
											</div>-->
											
											<!-- 문의내용이 있는경우 ↓↓↓↓↓↓↓↓↓-->	
											<ul class="board-list">
												<li class="inquiry-item"><div class="item-cell">
														<span class="frame-img" style="background-image: url(&quot;https://img-cf.kurly.com/shop/data/goods/1582679290125s0.jpg&quot;);"></span>
													</div>
													<div class="product-detail ">
														<span class="product-name">[남향푸드또띠아] 간편 간식 브리또 10종</span>
														<strong>에어프라이기 사용가능한가요</strong>
														<span class="icon-secret">
															<span class="screen_out">비밀글</span>
														</span>
													</div>
													<div class="item-cell">
														<p class="txt_sub text_medium normal ">2021.10.23</p>
													</div>
													<div class="item-cell">
														<p class="txt_sub text_medium normal ">답변대기</p>
													</div></li>
											</ul>
											
											<div class="board-inquiry-area">
												<div class="paging-navigation">
													<button type="button" class="paging-prev" disabled="">
														<span>이전</span>
													</button>
													<button type="button" class="paging-next" disabled="">
														<span>다음</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> <!-- MainCenter 끝 -->
					</div> <!-- Main 끝 -->
				</div>
			</div>
		</div>	
		<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
	</div>

		<a href="#top" id="pageTop">맨 위로가기</a>


		<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display: none; width: 100%; height: 600px;"></iframe>
</body>
</html>