<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
</head>
<body class="main-index" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection">

	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">

			<jsp:include page="header.jsp"></jsp:include><!-- header부분 -->

			<div id="main">
				<div id="content">

					<jsp:include page="sidemenu.jsp"></jsp:include><!-- sidemenu부분 -->
					<jsp:include page="myPageTop.jsp"></jsp:include><!-- mypage상단부분 -->

					<div class="page_aticle aticle_type2"> <!-- Main시작 -->
						<jsp:include page="mainLeft.jsp"></jsp:include> <!-- Mainleft부분 -->
						
						<div id="viewOrderList" class="page_section section_orderlist">
							<div class="head_aticle">
								<h2 class="tit">
									주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span>
								</h2>
							</div>
							<div class="search_date">
								<h3 class="screen_out">기간 선택</h3> <!-- 이게 왜있는건지 모르겠네 -->
								<a href="#none" class="btn_layer">전체기간</a>
								<ul class="layer_search">
									<li><a href="#none" class="on">전체기간</a></li>
									<li><a href="#none" data-year="2021">2021 년</a></li>
									<li><a href="#none" data-year="2020">2020 년</a></li>
									<li><a href="#none" data-year="2019">2019 년</a></li>
								</ul>
							</div>
							
							<!-- 주문내역이 없을경우 ↓↓↓↓↓↓↓↓ -->
							<!-- <ul class="list_order"> 
								<li class="no_data">주문내역이 없습니다.</li>
							</ul> --> 
							
							
							<!-- 주문내역이 있는경우 ↓↓↓↓↓↓↓↓ -->
							<ul class="list_order">   
								<li>
									<div class="date">2021.06.04 (12시 28분)</div>
									<div class="order_goods">
										<div class="name">
											<a>[다향오리] 훈제오리 150g 외 2건</a>
										</div>
										
										<div class="order_info">
											<div class="thumb">
												<img src="https://img-cf.kurly.com/shop/data/goods/1617348174274s0.jpg" alt="해당 주문 대표 상품 이미지">
											</div>
											<div class="desc">
												<dl>
													<dt>주문번호</dt>
													<dd>1622777251129</dd>
												</dl>
												<dl>
													<dt>결제금액</dt>
													<dd>12,960원</dd>
												</dl>
												<dl>
													<dt>주문상태</dt>
													<dd class="status end">배송완료</dd>
												</dl>
											</div>
										</div>
										<div class="order_status">
											<span class="inner_status">
												<a class="link ga_tracking_event">1:1 문의</a>
											</span>
										</div>
									</div>
								</li>
							</ul>
									
							<div class="layout-pagination"><!-- 이전, 다음 페이지 처리  -->
								<div class="pagediv">
									<a href="#viewOrderList" class="layout-pagination-button layout-pagination-first-page">맨처음 페이지로 가기</a>
									<a href="#viewOrderList" class="layout-pagination-button layout-pagination-prev-page">이전페이지로 가기</a> 
									<span> 
										<strong class="layout-pagination-button layout-pagination-number __active">1</strong>
									</span> 
									<a href="#viewOrderList" class="layout-pagination-button layout-pagination-next-page">다음페이지로 가기</a> 
									<a href="#viewOrderList" class="layout-pagination-button layout-pagination-last-page">맨끝 페이지로 가기</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
	</div>

	<a href="#top" id="pageTop">맨 위로가기</a>


	<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
		style="display: none; width: 100%; height: 600px;"></iframe>
</body>
</html>