<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<a href="index.jsp" class="link_main"> <span id="gnbLogoContainer"></span>
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
										href="newGoodsPage.jsp"><span
											class="txt">신상품</span></a></li>
									<li class="menu3"><a class="link best "
										href="BestGoods.jsp"><span
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