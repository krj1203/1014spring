<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<link rel="styleSheet" href="style/coupon.css">
</head>
<body class="main-index" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection">

	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<div id="header">
				<!-- 헤더부분 -->

				<div class="bnr_header" id="top-message">
					<a
						href="https://www.kurly.com/shop/event/kurlyEvent.php?htmid=event/join/join_211006"
						id="eventLanding"> 지금 가입하고 인기상품 <b>100원</b>에 받아가세요!<img
						src="https://res.kurly.com/pc/ico/1908/ico_arrow_fff_84x84.png"
						class="bnr_arr">
						<div class="bnr_top">
							<div class="inner_top_close">
								<button id="top-message-close" class="btn_top_bnr">가입하고
									혜택받기</button>
							</div>
						</div>
					</a>

				</div>
				<!-- 우측 최상단 메뉴 -->
				<div id="userMenu">
					<ul class="list_menu">
						<li class="menu none_sub menu_join"><a
							href="/shop/member/join.php" class="link_menu">회원가입</a></li>
						<li class="menu none_sub menu_login"><a
							href="/shop/member/login.php" class="link_menu">로그인</a> <!----></li>
						<!---->
						<li class="menu lst"><a href="/shop/board/list.php?id=notice"
							class="link_menu">고객센터</a>
							<ul class="sub">
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_my_kurly_notice_list')">공지사항</a>
								</li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_my_kurly_frequently_qna')">자주하는
										질문</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_my_kurly_personal_inquiry_history')">1:1
										문의</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_my_kurly_bulk_order')">대량주문
										문의</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_my_kurly_product_offer')">상품
										제안</a></li>
								<li><a href="#none"
									onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_my_kurly_eco_packing_feedback')">에코포장
										피드백</a></li>
							</ul></li>
					</ul>
				</div>

				<div id="headerLogo" class="layout-wrapper">
					<h1 class="logo">
						<a href="/" class="link_main"> <span id="gnbLogoContainer"></span>
							<img src="img/logo_x2.png" alt="마켓컬리 로고">
						</a>
					</h1>
					<a href="/shop/board/view.php?id=notice&no=64"
						onclick="ga('send','event','etc','main_gif_btn_click');"
						class="bnr_delivery"> <img
						src="https://res.kurly.com/pc/service/common/2011/delivery_210801.png"
						alt="샛별, 택배 배송안내" width="121" height="22">
					</a>
				</div>
				<div id="gnb">
					<h2 class="screen_out">메뉴</h2>
					<div id="gnbMenu" class="gnb_kurly">
						<div class="inner_gnbkurly">
							<div class="gnb_main">
								<ul class="gnb">
									<li class="menu1" class="on"><a href="#none"><span
											class="ico"></span><span class="txt">전체 카테고리</span></a></li>
									<li class="menu2"><a class="link new "
										href="/shop/goods/goods_list.php?category=038"><span
											class="txt">신상품</span></a></li>
									<li class="menu3"><a class="link best "
										href="/shop/goods/goods_list.php?category=029"><span
											class="txt">베스트</span></a></li>
									<li class="menu4"><a class="link bargain "
										href="/shop/goods/goods_list.php?list=sale"><span
											class="txt">알뜰쇼핑</span></a></li>
									<li class="lst"><a class="link event "
										href="/shop/goods/event.php?&"><span class="txt">특가/혜택</span></a></li>
								</ul>
								<div id="side_search" class="gnb_search">
									<form action="/shop/goods/goods_search.php?&"
										onsubmit="return searchTracking(this)">
										<input type=hidden name=searched value="Y"> <input
											type=hidden name=log value="1"> <input type=hidden
											name=skey value="all"> <input type="hidden"
											name="hid_pr_text" value=""> <input type="hidden"
											name="hid_link_url" value=""> <input type="hidden"
											id="edit" name="edit" value=""> <input name="sword"
											type="text" id="sword" class="inp_search" value="" required
											label="검색어" placeholder="검색어를 입력해주세요."> <input
											type=image
											src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
											class="btn_search">
										<div class="init">
											<button type="button" class="btn_delete" id="searchInit">검색어
												삭제하기</button>
										</div>
									</form>

								</div>
								<div class="cart_count">
									<div class="inner_cartcount">
										<a href="/shop/goods/goods_cart.php" class="btn_cart"> <span
											class="screen_out">장바구니</span> <span
											class="num realtime_cartcount" id="cart_item_count"></span>
										</a>
									</div>
									<div id="addMsgCart" class="msg_cart">
										<span class="point"></span>
										<div class="inner_msgcart">
											<img src="https://res.kurly.com/images/common/bg_1_1.gif"
												alt="" class="thumb">
											<p id="msgReaddedItem" class="desc">
												<span class="tit"></span> <span class="txt"> 장바구니에
													상품을 담았습니다. <span class="repeat">이미 담으신 상품이 있어
														추가되었습니다.</span>
												</span>
											</p>
										</div>
									</div>
								</div>
								<div class="location_set">
									<button type="button" class="btn_location on">배송지 설정하기</button>
									<div class="layer_location" style="display: none"></div>
								</div>
							</div>
							<div class="gnb_sub">
								<div class="inner_sub">
									<ul class="gnb_menu" data-default="219" data-min="219"
										data-max="731">
										<gnb-menu-pc v-for="(item, idx) in dataGnb" :main-menu="item"
											:sub-menu="item.categories" :sub-open="item.subOpen"
											:get-category-num="getCategoryNum" :key="'gnb'+idx"
											:idx="idx"></gnb-menu-pc>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div id="main">
				<div id="content">

					<div id="qnb" class="quick-navigation">

						<div class="bnr_qnb" id="brnQuick"></div>


						<div class="side_menu">
							<a href="/shop/main/html.php?htmid=event/kurly.htm&name=lovers"
								class="link_menu ">등급별 혜택</a> <a
								href="/shop/board/list.php?id=recipe" class="link_menu ">레시피</a>
							<a href="/shop/goods/goods_review_best.php" class="link_menu ">베스트
								후기</a>
						</div>
						<div class="side_recent" style="display: none">
							<strong class="tit">최근 본 상품</strong>
							<div class="list_goods" data-height="209">
								<ul class="list"></ul>
							</div>
							<button type="button" class="btn btn_up off">최근 본 상품 위로
								올리기</button>
							<button type="button" class="btn btn_down">최근 본 상품 아래로
								내리기</button>
						</div>

					</div>
					<!-- 이 부분 수정================================ -->
					<div id="myPageTop" class="page_aticle mypage_top">
						<h2 class="screen_out">마이페이지</h2>
						<div class="mypagetop_user">
							<div class="inner_mypagetop">
								<div class="grade_user">
									<div class="grade_wrap">
										<div class="grade_logo class6">웰컴</div>
										<strong class="name">1조님</strong>
									</div>
									<div class="grade_bnenfit">
										<!---->
										<div class="benefit">
											<strong class="tit"> </strong> 적립 5%
										</div>
										<div class="benefit">
											<strong class="tit"> </strong> 최초 1회 무료배송
										</div>
										<div class="benefit"></div>
									</div>
									<div class="next">
										<a href="#none"
											onclick="KurlyTrackerLink('/shop/event/lovers/lovers.php', 'select_my_kurly_membership_guide')"
											class="total_grade"> 전체등급 보기 </a> <a href="#none"
											onclick="KurlyTrackerLink('/shop/proc/my_benefit.php?id=benefit', 'select_my_kurly_membership_benefit')"
											class="next_month"> 다음 달 예상등급 보기 </a>
									</div>
								</div>
								<div class="list_mypage">
									<div class="list">
										<a href="#none"
											onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'top'})"
											class="link_wrap"><div class="link_title">
												적립금
												<!---->
												<img
													src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
													alt="" class="arrow_right">
											</div>
											<div class="spacer"></div>
											<p class="info">
												0 원 <span class="expire"> 소멸 예정 0 원 </span>
											</p></a> <a href="#none"
											onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'top'})"
											class="link_wrap"><div class="link_title">
												쿠폰
												<!---->
												<img
													src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
													alt="" class="arrow_right">
											</div>
											<div class="spacer"></div>
											<p class="info">0 개</p></a> <a href="#none"
											onclick="KurlyTrackerLink('/shop/event/kurlyEvent.php?htmid=event/reusable_packaging/purplebox', 'select_my_kurly_purple_box')"
											class="link_wrap"><div class="link_title">
												컬리 퍼플 박스 <img
													src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
													alt="" class="arrow_right">
											</div>
											<div class="spacer"></div>
											<p class="info">알아보기</p></a> <a href="/shop/mypage/kurlypass.php"
											class="link_wrap"><div class="link_title">
												컬리패스 <img
													src="https://res.kurly.com/kurly/ico/2021/arrow_right_gray_56_56.png"
													alt="" class="arrow_right">
											</div>
											<div class="spacer"></div>
											<p class="info">알아보기</p></a>
									</div>
								</div>
							</div>
							<!-- ================================================= -->
							<a
								href="https://www.kurly.com/shop/main/html.php?htmid=event/kurly.htm&amp;name=friend"
								class="bnr_event"
								style="background-image: url(&quot;//img-cf.kurly.com/shop/data/skin/designgj/img/banner/72925f3329df3e5b2c258a355623fc74.jpg&quot;);"><img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXcAAAA8CAQAAAA3ITJuAAAAAXNSR0IArs4c6QAAAEJJREFUeAHtwQENAAAAwiD7p34ON2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcCKwBAABQveChQAAAABJRU5ErkJggg=="
								alt="할인혜택보러가기"></a>
						</div>
					</div>
					<div class="page_aticle aticle_type2">
						<div id="snb" class="snb_my">
							<h2 class="tit_snb">마이컬리</h2>
							<div class="inner_snb">
								<ul class="list_menu">
									<li><a href="/shop/mypage/mypage_orderlist.php">주문 내역</a></li>

									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_gift.php', 'select_my_kurly_gift_list')">선물
											내역</a></li>
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/destination/list.php', 'select_shipping_address_list')">배송지
											관리</a></li>
									<li><a href="/shop/mypage/mypage_review.php">상품 후기</a></li>
									<li><a href="/shop/mypage/product_inquiry.php">상품 문의</a></li>
									<li class="on"><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'mypage'})">적립금</a>
									</li>
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'mypage'})">쿠폰</a>
									</li>
									<li><a href="/shop/member/myinfo.php">개인 정보
											수정</a></li>
								</ul>
							</div>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna"
								class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span>
								1:1 문의하기</a>
						</div>
						<!-- ================================================= -->
						<div class="page_section section_point">
							<div class="head_aticle">
								<h2 class="tit">
									적립금 <span class="tit_sub">보유하고 계신 적립금의 내역을 한 눈에 확인 하실 수
										있습니다.</span>
								</h2>
							</div>
							<div id="viewPointList">
								<div class="point_header">
									<div class="point_view">
										<h3 class="tit">현재 적립금</h3>
										<strong class="point">0 <span class="won">원</span></strong>
									</div>
									<span class="disappear"><span class="subject no_day">
											소멸예정 적립금 <!---->
									</span> <span class="num">0 원</span> <!----></span>
								</div>
								<table class="tbl tbl_type1">
									<caption style="display: none;">적립 사용 내역 상세보기</caption>
									<colgroup>
										<col style="width: 120px;">
										<col style="width: auto;">
										<col style="width: 122px;">
										<col style="width: 140px;">
									</colgroup>
									<thead>
										<tr>
											<th>날짜</th>
											<th class="info">내용</th>
											<th>유효기간</th>
											<th>금액</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="4" class="no_data">적립금 내역이 존재하지 않습니다.</td>
										</tr>
									</tbody>
								</table>
								<!---->
							</div>
						</div>
						<!-- ======================================================= -->
					</div>

					<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
				</div>

				<a href="#top" id="pageTop">맨 위로가기</a>


				<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
					style="display: none; width: 100%; height: 600px;"></iframe>
</html>