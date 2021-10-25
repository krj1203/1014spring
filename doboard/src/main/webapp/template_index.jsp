<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta property="og:title" content="*">
<meta property="og:url" content="*">
<meta property="og:image" content="/images/icon/og_sell_smartstore.jpg">
<meta property="og:description" content="마켓컬리티 관리" />
<title>Market_Kurlyty</title>

<!-- For old IEs -->
<link rel="shortcut icon" type="image/x-icon"
	href="/images/icon/favicon_16x16.ico">
<!-- For new browsers - multisize ico  -->
<link rel="icon" type="image/x-icon" sizes="16x16"
	href="/images/icon/favicon_16x16.ico">
<link rel="icon" type="image/x-icon" sizes="32x32"
	href="/images/icon/favicon_32x32.ico">

<!-- for Android Chrome -->
<link rel="icon" sizes="192x192"
	href="/images/icon/favicon-192-20180619.png">
<!-- for iPhone 6 Plus; other device will scale it down as needed -->
<link rel="apple-touch-icon-precomposed" sizes="180x180"
	href="/images/icon/favicon-180-20180619.png">
<!-- pacejs http://github.hubspot.com/pace/ -->
<link href="style/m1.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script type="text/javascript" src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script type="text/javascript" src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/maps3.js"></script>


<script type="text/javascript"
	src="https://editor-static.pstatic.net/v/basic/1.24.0/se.viewer.js?v="></script>



<link href="style/m2.css" rel="stylesheet">

<link href="style/m3.css" rel="stylesheet">

</head>
<body ncp-nclicks="" class=" pace-done">
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%"
			data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>
	<!-- loading -->
	<div class="seller-floating-wrap" id="__initial_loading"
		style="display: none;">
		<div class="inner-wrap">
			<div>
				<img src="images/loading_gray.gif" alt="로딩중">
			</div>
		</div>
	</div>
	<div class="seller-floating-wrap dimmed" id="__request_loading"
		style="display: none;">
		<div class="inner-wrap">
			<div>
				<img src="images/loading_white.gif" alt="로딩중">
			</div>
		</div>
	</div>
	<!-- //loading -->
	<!---->
	<ui-view class="wrap" style="">
	<div id="seller_skip" class="sr-only">
		<a href="#seller-lnb">메인 메뉴로 바로가기</a> <a href="#seller-content">본문으로
			바로가기</a>
	</div>
	<div class="recommend-browser-wrap has-min-width">
		<ncp-chrome-recommend><!----></ncp-chrome-recommend>
	</div>
	<div class="seller-wrap pc" id="center-main-frame"
		ng-class="{'pc': !vm.isMobile,'mobile': vm.isMobile,'hide-navbar': vm.hideLnb,'show-mobile-lnb': !vm.hideMobileLnb}">
		<div class="seller-inner-wrap"
			ng-class="{'has-fixed-bottom': vm.hasFixedBottom}">
			<!---->
			<div ng-include="'center/layout/include/gnb.html.inc'">
				<nav class="navbar navbar-inverse seller-navbar" role="navigation">
					<!---->
					<div id="_gnb_nav" class="inner-nav" ng-if="::!vm.context.mobile">
						<div class="navbar-header" ncp-click-log=""
							group-state-code="layout" action-id="gnb.link">
							<ul class="navbar-logo-pc">
								<li><a class="naver" ng-href="http://www.naver.com/"
									data-action-location-id="naver" href="http://www.naver.com/"><h1
											class="sr-only">MarketKurlyty</h1></a></li>
								<li><a class="sellshop" href="#/home/dashboard"
									ui-sref="home" data-action-location-id="home"><h1
											class="sr-only">마켓컬리티</h1></a></li>
							</ul>
							<ul class="quick-link">
								<li><a ng-href="https://adcenter.shopping.naver.com/"
									target="_blank" data-action-location-id="shoppingPartner"
									href="https://adcenter.shopping.naver.com/">쇼핑파트너센터</a></li>
								<li><a href="" ng-click="vm.goSAJoin()"
									data-action-location-id="sa">검색광고</a></li>
								<li><a href="https://gfa.naver.com" target="_blank"
									data-action-location-id="gfa">성과형 디스플레이광고</a></li>
							</ul>
						</div>
						<ul class="nav navbar-nav nav-pull-right" ncp-click-log=""
							group-state-code="layout" action-id="gnb.account">
							<!---->
							<li ng-if="vm.loginInfo"><a ui-sref="main.seller-member"
								data-action-location-id="myinfo" href="#/seller/member"><span
									class="login-id text-overflow">1조</span>님<span
									class="my-info">내정보</span></a></li>
							<!---->
							<li>
								<!---->
							</li>
							<li><a role="button" class="alarm-opener"
								ng-click="vm.initNewNotification()"
								uib-popover-template="'sellerNotiPopoverHtml.html'"
								popover-is-open="vm.miniNotificationOpen"
								popover-trigger="'outsideClick'" popover-placement="bottom"
								data-action-location-id="alert"><i
									class="sp-alarm-mini-alarm sp-alarm-mini-alarm-dims"><span
										class="sr-only">알림보기</span></i> <!----></a>
							<script type="text/ng-template" id="sellerNotiPopoverHtml.html"><div>
                        <div ng-include="::vm.sellerNotiPopoverHtml" class="text-default"></div>
                    </div></script></li>
							<li>
								<!----> <!---->
								<a href="/#/logout" ng-if="::vm.loginInfo"
								data-action-location-id="logout">로그아웃</a>
							<!---->
							</li>
							<li><a role="button" data-action-location-id="help"
								ng-click="vm.showHelp = !vm.showHelp" href="">도움말</a></li>
							<li class="no-line"><a
								ng-href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"
								class="btn btn-single btn-link" target="_blank"
								href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"><i
									class="fn fn-talktalk-fill text-primary" aria-hidden="true"></i>
									톡톡상담</a></li>
						</ul>
						<!---->
						<button type="button" class="btn btn-primary btn-floating"
							ng-click="vm.showHelp = !vm.showHelp" ng-if="!vm.showHelp"
							data-nclicks-code="flo.help">도움말</button>
						<!---->
					</div>
					<!---->
					<!---->
				</nav>
			</div>
			<!---->
			<div ng-include="'center/layout/include/lnb.html.inc'">
				<!---->
				<div id="seller-lnb" class="nav navbar-nav seller-side-nav"
					ng-if="::!vm.context.mobile">
					<a href="" role="button" class="navbar navbar-hide"
						ng-class="vm.hideLnb ? 'navbar-show' : 'navbar-hide'"
						ng-click="vm.hideLnb = !vm.hideLnb"><span class="sr-only">좌측
							내비게이션 펼쳐보기</span></a>
					<div class="scroller ps-container ps-theme-default ps-active-y"
						options="{wheelPropagation:true}"
						data-ps-id="53d80b38-2ad2-73f0-7c9a-4da51ebeca87">
						<div ng-transclude="">
							<div class="store" ncp-click-log="" group-state-code="layout"
								action-id="lnb.top">
								<a href="" role="button" class="link no-decoration"
									ng-click="vm.moveStoreEndUrl()"
									data-action-location-id="goStore"><span class="thumb">
										<!----> <!---->
										<img ng-if="::!vm.loginInfo.representImage"
										src="/images/no-img.jpg" class="img-circle" width="68"
										height="68" alt="등록된 프로필 이미지 없음">
									<!---->
								</span><span class="shop" ng-bind="::vm.loginInfo.channelName">1조</span></a>
							</div>
							<!---->
							<div class="order-check" ng-if="!vm.hideOrderSearchForm">
								<form name="lnbOrderSearchForm"
									class="form-group form-group-sm ng-pristine ng-valid-required ng-valid ng-valid-regex-pattern-custom">
									<div
										class="selectize-control ng-pristine ng-untouched ng-valid single">
										<div
											class="selectize-input items required ng-valid ng-pristine full has-options has-items">
											<div data-value="COLLECTOR_NAME" class="item">수취인명</div>
											<input type="text" autocomplete="off" tabindex="0"
												readonly=""
												style="width: 4px; opacity: 0; position: absolute; left: -10000px;">
										</div>
										<div
											class="selectize-dropdown single ng-pristine ng-untouched ng-valid"
											style="display: none; width: 160px; top: 30px; left: 0px;">
											<div class="selectize-dropdown-content">
												<div data-value="COLLECTOR_NAME" data-selectable=""
													class="option selected active">수취인명</div>
												<div data-value="PURCHASER_NAME" data-selectable=""
													class="option">구매자명</div>
												<div data-value="PURCHASER_TEL_NO" data-selectable=""
													class="option">구매자연락처</div>
												<div data-value="PURCHASER_ID" data-selectable=""
													class="option">구매자ID</div>
												<div data-value="ORDER_NO" data-selectable="" class="option">주문번호</div>
												<div data-value="PRODUCT_ORDER_NO" data-selectable=""
													class="option">상품주문번호</div>
												<div data-value="PRODUCT_NO" data-selectable=""
													class="option">상품번호</div>
												<div data-value="INVOICE_NO" data-selectable=""
													class="option">운송장번호</div>
											</div>
										</div>
									</div>
									<input selectize="" placeholder="전체주문조회"
										config="vm.npaySearchTypeConfig" options="vm.npaySearchTypes"
										ng-model="vm.npaySearchType"
										ng-change="vm.clearNaverPayOrderSearchKeyword()" required=""
										class="ng-pristine ng-untouched ng-valid selectized ng-valid-required ng-not-empty"
										tabindex="-1"
										style="width: 4px; opacity: 0; position: absolute; left: -10000px;"
										value="COLLECTOR_NAME">
									<div class="seller-input-wrap">
										<!---->
										<!---->
										<input type="text" title="주문조회 입력"
											ng-repeat="searchType in vm.npaySearchTypes track by $index"
											ng-if="searchType.name === vm.npaySearchType"
											ng-model="vm.npaySearchKeyword"
											ng-model-options="{debounce: 300}"
											ncp-regex-pattern-custom=""
											ncp-regex-pattern-custom-rules="{&quot;type&quot;:&quot;matched&quot;,&quot;names&quot;:[&quot;korean&quot;,&quot;upperCase&quot;,&quot;lowerCase&quot;,&quot;space&quot;]}"
											ncp-message-container="._order_search_form_error_msg"
											ng-regex-pattern-custom-err-type="pattern.custom"
											ng-keyup="$event.keyCode === 13 &amp;&amp; vm.searchNaverPayOrder($event)"
											class="ng-pristine ng-untouched ng-empty ng-valid ng-valid-regex-pattern-custom"
											ncp-regex-pattern-custom-params="{&quot;message&quot;:&quot;한글, 영문 대문자, 영문 소문자, 문자사이 공백만 입력 가능합니다.&quot;}">
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<a href="" role="button"
											ng-click="vm.searchNaverPayOrder($event)" class="btn-search"><i
											class="fn fn-search" aria-hidden="true"></i><span
											class="sr-only">검색하기</span></a>
									</div>
									<div class="_order_search_form_error_msg"></div>
								</form>
							</div>
							<!---->
							<!---->
							<ul role="menu" class="metisMenu" ng-if="::vm.lnbMenus"
								ncp-menu="">
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">상품관리 <!---->
										<!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/origin-list"
											ui-sref="main.product.origin-list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.origin-list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">상품
												조회/수정 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/create" ui-sref="main.product.create"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.create&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">상품
												등록 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/bulkadd" ui-sref="main.product.bulkadd"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.bulkadd&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">상품
												일괄등록 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/navershopping-match-product"
											ui-sref="main.product.navershopping-match-product"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.navershopping-match-product&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">카탈로그
												가격관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/relation-list"
											ui-sref="main.product.relation-list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.relation-list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">연관상품
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'" href=""
											ui-sref="work.photo-storage"
											ui-sref-opts="{&quot;reload&quot;:&quot;work.photo-storage&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">사진
												보관함 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/delivery/bundle"
											ui-sref="main.product.delivery.bundle"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.delivery.bundle&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">배송정보
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/products/template/delivery"
											ui-sref="main.product.template.delivery"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.product.template.delivery&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">템플릿
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/notice/search" ui-sref="main.contents.notice.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.contents.notice.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">공지사항
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/interest/subscription/search"
											ui-sref="main.interest.subscription-search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.interest.subscription-search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">구독
												관리 <!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">판매관리 <!---->
										<i class="seller-icon icon-npay" aria-label="네이버페이"
										ng-if="::menu1d.provider === 'NAVERPAY'"></i>
									<!----> <!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/manage/order"
											ui-sref="main.naverpay_manage_order"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_manage_order&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">주문통합검색
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/sale/noaddress"
											ui-sref="main.naverpay_noaddress"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_noaddress&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">선물
												수락대기 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/sale/unpayment"
											ui-sref="main.naverpay_sale_unpayment"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_sale_unpayment&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">미결제
												확인 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/sale/delivery"
											ui-sref="main.naverpay_sale_delivery"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_sale_delivery&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">발주(주문)확인/발송관리
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/sale/delivery/situation"
											ui-sref="main.naverpay_sale_delivery_situation"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_sale_delivery_situation&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">배송현황
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/sale/purchaseDecision"
											ui-sref="main.naverpay_sale_purchaseDecision"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_sale_purchaseDecision&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">구매확정
												내역 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/claim/cancel"
											ui-sref="main.naverpay_claim_cancel"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_claim_cancel&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">취소
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/claim/return"
											ui-sref="main.naverpay_claim_return"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_claim_return&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">반품
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/claim/exchange"
											ui-sref="main.naverpay_claim_exchange"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_claim_exchange&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">교환
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/blackConsumer"
											ui-sref="main.naverpay_blackConsumer"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_blackConsumer&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매방해
												고객관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/return-insurance"
											ui-sref="main.naverpay_return_insurance"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_return_insurance&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">반품보험
												내역 <!----> <!---->
												<i class="icon-beta" aria-label="beta"
												ng-if="::menu2d.isBetaMenu"></i>
											<!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">정산관리 <!---->
										<i class="seller-icon icon-npay" aria-label="네이버페이"
										ng-if="::menu1d.provider === 'NAVERPAY'"></i>
									<!----> <!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/quicksettle"
											ui-sref="main.naverpay_settlemgt_quicksettle"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_settlemgt_quicksettle&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">빠른정산
												<!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/settlemgt/sellerdailysettle"
											ui-sref="main.naverpay_settlemgt_sellerdailysettle"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_settlemgt_sellerdailysettle&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">정산
												내역 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/settlemgt/paysettle"
											ui-sref="main.naverpay_settlemgt_paysettle"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_settlemgt_paysettle&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">정산
												내역 상세 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/settlemgt/vatdeclaration"
											ui-sref="main.naverpay_settlemgt_vatdeclaration"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_settlemgt_vatdeclaration&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">부가세신고
												내역 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/taxinvoice"
											ui-sref="main.naverpay_settlemgt_taxinvoice"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_settlemgt_taxinvoice&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">세금계산서
												조회 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/charge" ui-sref="main.naverpay_charge"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_charge&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">충전금
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">문의/리뷰관리
										<!----> <!----> <!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'" href="#/comment/"
											ui-sref="main.contents.comment"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.contents.comment&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">문의
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/qnas" ui-sref="main.naverpay_qnas"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_qnas&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">고객문의
												관리 <!---->
												<i class="seller-icon icon-npay" aria-label="네이버페이"
												ng-if="::menu2d.provider === 'NAVERPAY'"></i>
											<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/review/search" ui-sref="main.contents.review.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.contents.review.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">리뷰
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/event/REVIEW_EVENT/search"
											ui-sref="main.event.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.event.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">리뷰이벤트
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">톡톡상담관리
										<!----> <!----> <!----> <!---->
										<i class="fn fn-talktalk-fill" aria-hidden="true"
										ng-if="::menu1d.provider === 'TALKTALK'"></i>
									<!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/talktalk/chat" ui-sref="main.talktalk_chat_consult"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.talktalk_chat_consult&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">톡톡
												상담하기 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/talktalk/chatbot"
											ui-sref="main.talktalk_chatbot_conf"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.talktalk_chatbot_conf&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">톡톡
												쇼핑챗봇 설정 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">스토어
										전시관리 <!----> <!----> <!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<!---->
											<a ng-if="::menu2d.method === 'NEW_LAYER'" href="/d/v2/home"
											target="_blank" rel="opener"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">마켓컬리티
												(NEW) <!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!----> <i class="fn-booking fn-booking-newlayer text-muted"
												aria-hidden="true"></i>
										</a>
										<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/store/category/edit"
											ui-sref="main.store_category_edit"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.store_category_edit&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">카테고리
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/story/search" ui-sref="main.contents.story.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.contents.story.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">쇼핑
												스토리 관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/selective/bridge" ui-sref="main.selective_bridge"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.selective_bridge&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">라이브
												예고 페이지 관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/sellers/store/detail/smartstore"
											ui-sref="main.store-info.detail.smartstore"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.store-info.detail.smartstore&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">스토어
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">노출관리 <!---->
										<!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/sellers/store/add"
											ui-sref="main.store-info.add-channel"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.store-info.add-channel&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">쇼핑윈도
												노출 제안 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/store/themeshopping/list"
											ui-sref="main.store_themeshopping_list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.store_themeshopping_list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">기획전
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/vertical/hotdeal/luckto/list"
											ui-sref="main.vertical_hotdeal_luckto_list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.vertical_hotdeal_luckto_list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">럭키투데이
												제안 관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverservices" ui-sref="main.myconfig.naverservice"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.myconfig.naverservice&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">노출
												서비스 관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">고객혜택관리
										<!----> <!----> <!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-manage/register/"
											ui-sref="main.benefit.customer-manage.register"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.benefit.customer-manage.register&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">혜택
												등록 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-manage/search"
											ui-sref="main.benefit.customer-manage.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.benefit.customer-manage.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">혜택
												조회/수정 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-manage-stats/search"
											ui-sref="main.benefit.customer-manage-stats.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.benefit.customer-manage-stats.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">혜택
												리포트 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-manage/grade/list"
											ui-sref="main.benefit.customer-manage.grade.list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.benefit.customer-manage.grade.list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">고객등급
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/naverpay/naverPoint"
											ui-sref="main.naverpay_naverPoint"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.naverpay_naverPoint&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">포인트
												지급내역 조회 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">마케팅메세지
										<!----> <!----> <!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/marketing-message/search"
											ui-sref="main.marketing-message.marketing-send"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.marketing-message.marketing-send&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">마케팅
												보내기 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/marketing-message/histories"
											ui-sref="main.marketing-message.marketing-history"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.marketing-message.marketing-history&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">마케팅
												이력 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/marketing-message/stats"
											ui-sref="main.marketing-message.marketing-stats"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.marketing-message.marketing-stats&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">마케팅
												통계 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">통계 <!---->
										<!----> <!---->
										<span class="label label-new label-new-xs" aria-label="new"
										ng-if="::menu1d.isNewMenu">N</span>
									<!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/summary/ecommerce"
											ui-sref="main.bizadvisor_summary_ecommerce"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_summary_ecommerce&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">요약
												<!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/sales" ui-sref="main.bizadvisor_sales"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_sales&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매분석
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/marketing"
											ui-sref="main.bizadvisor_marketing"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_marketing&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">마케팅분석
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/shopping/product"
											ui-sref="main.bizadvisor_shopping_product"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_shopping_product&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">쇼핑행동분석
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/market/benchmark"
											ui-sref="main.bizadvisor_market_benchmark"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_market_benchmark&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">시장벤치마크
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/bizadvisor/bizInsight/predictive"
											ui-sref="main.bizadvisor_bizinsight_predictive"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.bizadvisor_bizinsight_predictive&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매성과예측
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-stats/search"
											ui-sref="main.customer-stats.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.customer-stats.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">고객현황
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/customer-purchase-stats/search"
											ui-sref="main.benefit.customer-purchase-stats.search"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.benefit.customer-purchase-stats.search&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">재구매
												통계 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">탑탑 <!---->
										<!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/plop/ad/introduction"
											ui-sref="main.toptop_introduction"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.toptop_introduction&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">탑탑
												소개 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/plop/ad/report/dashboard"
											ui-sref="main.toptop_report_dashboard"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.toptop_report_dashboard&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">탑탑
												리포트 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/plop/ad/chrgr/join" ui-sref="main.toptop_chrgr_join"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.toptop_chrgr_join&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">탑탑
												입점 제안 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">판매자지원프로그램
										<!----> <!----> <!---->
										<span class="label label-new label-new-xs" aria-label="new"
										ng-if="::menu1d.isNewMenu">N</span>
									<!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/seller-support/start-zero-commission"
											ui-sref="main.seller-support.start-zero-commission"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.seller-support.start-zero-commission&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매자
												지원 프로그램 <!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">판매자정보 <!---->
										<!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/seller/info" ui-sref="main.seller-info"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.seller-info&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매자
												정보 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/judgment/modification"
											ui-sref="main.judgment.modification.input-info"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.judgment.modification.input-info&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">정보변경
												신청 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/member/auth/sell" ui-sref="main.sell-auth-management"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.sell-auth-management&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">상품판매권한
												신청 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/judgment/list" ui-sref="main.judgment.list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.judgment.list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">심사내역
												조회 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/seller/grade" ui-sref="main.seller-grade"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.seller-grade&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">판매자
												등급 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/member/auth/management"
											ui-sref="main.member-auth-management"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.member-auth-management&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">매니저
												관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">지식재산권침해관리
										<!----> <!----> <!----> <!---->
								</a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/ips/seller/reports" ui-sref="main.ips_seller_reports"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.ips_seller_reports&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">지식재산권
												침해관리 <!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">물류 관리 <!---->
										<!----> <!---->
										<span class="label label-new label-new-xs" aria-label="new"
										ng-if="::menu1d.isNewMenu">N</span>
									<!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/logistics/info" ui-sref="main.logistics.info"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.logistics.info&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">풀필먼트
												서비스신청 <!----> <!----> <!---->
												<i class="icon-dot" aria-hidden="true"
												ng-if="::menu2d.isNewMenu"></i>
											<!----> <!---->
												<span class="sr-only" ng-if="::menu2d.isNewMenu">new</span>
											<!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
								<li ng-repeat="menu1d in ::vm.lnbMenus track by $index"><a
									role="menuitem" aria-expanded="false" href=""
									ng-click="vm.menuClickLogging(menu1d.name, $event)">공지사항 <!---->
										<!----> <!----> <!----></a>
								<ul aria-expanded="false" class="submenu collapse">
										<!---->
										<li ng-repeat="menu2d in ::menu1d.children track by $index"
											ng-class="{'selected': vm.currentMenu2d.state === menu2d.state}">
											<!---->
											<a ng-if="::menu2d.method !== 'NEW_LAYER'"
											href="#/center-notice/list/" ui-sref="main.centernotice.list"
											ui-sref-opts="{&quot;reload&quot;:&quot;main.centernotice.list&quot;,&quot;inherit&quot;:false}"
											ng-click="vm.menuClickLogging(menu1d.name + '|' + menu2d.name)">공지사항
												<!----> <!----> <!----> <!---->
										</a>
										<!---->
											<!---->
										</li>
										<!---->
									</ul></li>
								<!---->
							</ul>
							<!---->
							<div class="outer-link" ncp-click-log=""
								group-state-code="layout" action-id="lnb.link">
								<h2 class="title">교육 프로그램 바로가기</h2>
								<ul role="menu" class="outer-menu">
									<li><a role="menuitem" href="https://bizschool.naver.com"
										target="_blank" class="link"
										data-action-location-id="onlineEdu">온라인 교육 <i
											class="fn-booking fn-booking-newlayer" aria-hidden="true"></i></a></li>
									<li><a role="menuitem"
										href="https://partners.naver.com/edu-shopping-live?prm=smartedu"
										target="_blank" class="link"
										data-action-location-id="shoppingLiveEdu">쇼핑 라이브 교육 <i
											class="fn-booking fn-booking-newlayer" aria-hidden="true"></i></a></li>
								</ul>
								<h2 class="title">판매자 금융지원</h2>
								<ul role="menu" class="outer-menu">
									<li><a role="menuitem"
										href="http://finsupport.naver.com/settlement" target="_blank"
										class="link" data-action-location-id="finSettlement">빠른정산
											<i class="fn-booking fn-booking-newlayer" aria-hidden="true"></i>
									</a></li>
									<li><a role="menuitem"
										href="http://finsupport.naver.com/storeloan" target="_blank"
										class="link" data-action-location-id="finStoreloan">사업자 대출
											<i class="fn-booking fn-booking-newlayer" aria-hidden="true"></i>
									</a></li>
									<li><a role="menuitem"
										href="http://finsupport.naver.com/insurance" target="_blank"
										class="link" data-action-location-id="finInsurance">사업자 보험
											<i class="fn-booking fn-booking-newlayer" aria-hidden="true"></i>
									</a></li>
									<li><a role="menuitem"
										href="http://finsupport.naver.com/guideList?tab=all"
										target="_blank" class="link"
										data-action-location-id="finGuide">정책지원금 <i
											class="fn-booking fn-booking-newlayer" aria-hidden="true"></i></a></li>
								</ul>
								<h2 class="title">공식 블로그 바로가기</h2>
								<ul role="menu" class="outer-menu">
									<li><a role="menuitem"
										href="https://blog.naver.com/naver_seller" target="_blank"
										class="link" data-action-location-id="blogShoppingPartner">네이버쇼핑
											파트너 <i class="fn-booking fn-booking-newlayer"
											aria-hidden="true"></i>
									</a></li>
									<li><a role="menuitem"
										href="https://blog.naver.com/n_shopwindow" target="_blank"
										class="link" data-action-location-id="blogShoppingWindow">쇼핑윈도
											<i class="fn-booking fn-booking-newlayer" aria-hidden="true"></i>
									</a></li>
								</ul>
							</div>
							<div class="wrap-talktalk-btn" ncp-click-log=""
								group-state-code="layout" action-id="lnb.link">
								<a ng-href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"
									class="btn btn-single btn-block" target="_blank"
									data-action-location-id="talktalkCounseling"
									href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"><i
									class="fn fn-talktalk-fill text-primary mg-right-sm"
									aria-hidden="true"></i>톡톡상담</a>
							</div>
							<div class="wrap-alert mg-top">
								<div class="alert seller-alert-primary">
									<button type="button" class="close" data-dismiss="alert">
										<i class="fn fn-cancel" aria-hidden="true"></i>
									</button>
									궁금할 땐 <span class="emphasis">톡톡상담</span>하세요!
								</div>
							</div>
						</div>
						<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
							<div class="ps-scrollbar-x" tabindex="0"
								style="left: 0px; width: 0px;"></div>
						</div>
						<div class="ps-scrollbar-y-rail"
							style="top: 0px; height: 1523px; right: 0px;">
							<div class="ps-scrollbar-y" tabindex="0"
								style="top: 0px; height: 1323px;"></div>
						</div>
					</div>
				</div>
				<!---->
				<!---->
				<div class="seller-backdrop"
					ng-class="{'show-backdrop': !vm.hideMobileLnb}"></div>
			</div>
			<div class="seller-content" role="main">
				<div id="seller-content" class="seller-sub-frame">
					<!---->
					<!---->
					<!---->
					<ui-view>
					<div class="seller-dashboard">
						<!---->
						<div ui-view="" name="important-notice">
							<!---->
							<div class="alert seller-notice-alert has-icon"
								ng-if="::vm.importantNotice">
								<!---->
								<!---->
								<a class="no-decoration"
									ui-sref="main.centernotice.detail({noticeId: vm.importantNotice.id, inflowType: 'dashboard-important'})"
									ng-if="::vm.importantNotice.exposeMethodType !== 'LINK'"
									data-nclicks-code="bell.notice"
									href="#/center-notice/detail/100010063"><span
									class="round-ico-area"><i class="fn fn-alert2"
										aria-hidden="true"></i></span> <span class="notice-title">[일반]
										1조 마켓컬리 만들기</span> <span class="notice-date"
									ng-bind="::vm.importantNotice.regDate">2021.10.19.</span></a>
								<!---->
							</div>
							<!---->
							<!---->
						</div>
						<div class="seller-sub-content">
							<!---->
							<!---->
							<div class="flex flex-wrap flex-panel-wrap">
								<!---->
								<div ui-view="" name="top-banner"
									class="panel-wrap flex-col-6 flex-col-xs-12 order-md-1 order-xs-3">
									<div
										class="panel panel-dashboard panel-top-banner position-relative">
										<div class="text-center">
											<!---->
											<ks-swiper-container swiper="vm.swiper"
												ng-if="::!vm.isMobile" on-ready="vm.onReadySwiper(swiper)"
												slides-per-view="1" autoplay="3000"
												loop="vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
												pagination-is-active="true" pagination-clickable="true">
											<div class="swiper-container swiper-container-horizontal">
												<div class="parallax-bg ng-hide" data-swiper-parallax=""
													ng-show="parallax"></div>
												<div class="swiper-wrapper " ng-transclude="">
													<!---->
													<div class="swiper-slide swiper-slide-active"
														ng-transclude="" ng-repeat="banner in vm.banners"
														style="width: 463px;">
														<a ng-href="/#/logistics/info" target="_blank"
															class="block" data-nclicks-code="bannerupleft.cont"
															href="/#/logistics/info"><img
															ng-src="../../images/dashboard/top-banner-left/top-banner-left1-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-left/top-banner-left1-pc.png"></a>
													</div>
													<!---->
												</div>
												<div
													class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"
													id="paginator-ac88594f-be7c-4468-afa2-99eeb7ae9520">
													<span
														class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
												</div>
												<div class="swiper-button-next ng-hide"
													ng-show="showNavButtons"
													id="nextButton-ac88594f-be7c-4468-afa2-99eeb7ae9520"></div>
												<div class="swiper-button-prev ng-hide"
													ng-show="showNavButtons"
													id="prevButton-ac88594f-be7c-4468-afa2-99eeb7ae9520"></div>
												<div class="swiper-scrollbar ng-hide"
													ng-show="showScrollBar"
													id="scrollBar-ac88594f-be7c-4468-afa2-99eeb7ae9520"></div>
											</div>
											</ks-swiper-container>
											<!---->
											<div class="hidden-xxs">
												<!---->
											</div>
											<div class="visible-xxs">
												<!---->
											</div>
										</div>
										<!---->
									</div>
								</div>
								<!---->
								<div ui-view="" name="top-banner-pay"
									class="panel-wrap flex-col-6 flex-col-xs-12 order-md-2 order-xs-4">
									<div
										class="panel panel-dashboard panel-top-banner position-relative">
										<div class="text-center">
											<!---->
											<ks-swiper-container swiper="vm.swiper"
												ng-if="::!vm.isMobile" on-ready="vm.onReadySwiper(swiper)"
												slides-per-view="1" autoplay="3000"
												loop="vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
												pagination-is-active="true" pagination-clickable="true">
											<div class="swiper-container swiper-container-horizontal">
												<div class="parallax-bg ng-hide" data-swiper-parallax=""
													ng-show="parallax"></div>
												<div class="swiper-wrapper " ng-transclude=""
													style="transform: translate3d(-2315px, 0px, 0px); transition-duration: 0ms;">
													<div
														class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
														ng-transclude="" ng-repeat="banner in vm.banners"
														data-swiper-slide-index="3" style="width: 463px;">
														<a ng-href="https://finsupport.naver.com/storeloan"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="https://finsupport.naver.com/storeloan"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right4-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right4-pc.png"></a>
													</div>
													<!---->
													<div class="swiper-slide swiper-slide-duplicate-active"
														ng-transclude="" ng-repeat="banner in vm.banners"
														data-swiper-slide-index="0" style="width: 463px;">
														<a ng-href="https://campaign.naver.com/insurance/event"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="https://campaign.naver.com/insurance/event"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right1-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right1-pc.png"></a>
													</div>
													<!---->
													<div class="swiper-slide" ng-transclude=""
														ng-repeat="banner in vm.banners"
														data-swiper-slide-index="1" style="width: 463px;">
														<a ng-href="/#/center-notice/detail/100007935"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="/#/center-notice/detail/100007935"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right2-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right2-pc.png"></a>
													</div>
													<!---->
													<div class="swiper-slide" ng-transclude=""
														ng-repeat="banner in vm.banners"
														data-swiper-slide-index="2" style="width: 463px;">
														<a
															ng-href="https://finsupport.naver.com/starterGuideList?tab=ALL"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="https://finsupport.naver.com/starterGuideList?tab=ALL"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right3-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right3-pc.png"></a>
													</div>
													<!---->
													<div
														class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
														ng-transclude="" ng-repeat="banner in vm.banners"
														data-swiper-slide-index="3" style="width: 463px;">
														<a ng-href="https://finsupport.naver.com/storeloan"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="https://finsupport.naver.com/storeloan"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right4-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right4-pc.png"></a>
													</div>
													<!---->
													<div
														class="swiper-slide swiper-slide-duplicate swiper-slide-active"
														ng-transclude="" ng-repeat="banner in vm.banners"
														data-swiper-slide-index="0" style="width: 463px;">
														<a ng-href="https://campaign.naver.com/insurance/event"
															target="_blank" class="block"
															data-nclicks-code="bannerupright.cont"
															href="https://campaign.naver.com/insurance/event"><img
															ng-src="../../images/dashboard/top-banner-right/top-banner-right1-pc.png"
															alt="배너 이미지"
															src="../../images/dashboard/top-banner-right/top-banner-right1-pc.png"></a>
													</div>
												</div>
												<div
													class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"
													id="paginator-28b5fbe0-fecc-4311-b230-3a52c896dda9">
													<span
														class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
														class="swiper-pagination-bullet"></span><span
														class="swiper-pagination-bullet"></span><span
														class="swiper-pagination-bullet"></span>
												</div>
												<div class="swiper-button-next ng-hide"
													ng-show="showNavButtons"
													id="nextButton-28b5fbe0-fecc-4311-b230-3a52c896dda9"></div>
												<div class="swiper-button-prev ng-hide"
													ng-show="showNavButtons"
													id="prevButton-28b5fbe0-fecc-4311-b230-3a52c896dda9"></div>
												<div class="swiper-scrollbar ng-hide"
													ng-show="showScrollBar"
													id="scrollBar-28b5fbe0-fecc-4311-b230-3a52c896dda9"></div>
											</div>
											</ks-swiper-container>
											<!---->
											<div class="hidden-xxs">
												<!---->
											</div>
											<div class="visible-xxs">
												<!---->
											</div>
										</div>
										<!---->
										<div ng-if="vm.banners.length > 1 &amp;&amp; !vm.isMobile">
											<a class="seller-swiper swiper-button-next font-icon-button"
												role="button" ng-click="vm.slideNext()"
												href="javascript:void(0)"
												data-nclicks-code="bannerupright.flicking"><i
												class="fn fn-forward2 fn-24" aria-hidden="true"></i> <span
												class="sr-only">다음 컨텐츠 보기</span> </a><a
												class="seller-swiper swiper-button-prev font-icon-button"
												role="button" ng-click="vm.slidePrev()"
												href="javascript:void(0)"
												data-nclicks-code="bannerupright.flicking"><i
												class="fn fn-backward2 fn-24" aria-hidden="true"></i> <span
												class="sr-only">이전 컨텐츠 보기</span></a>
										</div>
										<!---->
									</div>
								</div>
								<!---->
								<div ui-view="" name="naverpay-salesinfo"
									class="panel-wrap flex-col-6 flex-col-xs-12 order-md-3 order-xs-1">
									<div class="panel panel-dashboard">
										<div class="panel-heading">
											<div class="pull-left">
												<h3 class="panel-title">주문/배송</h3>
											</div>
											<div class="pull-right">
												<ncp-dashboard-refresh component-name="vm.componentName"
													refresh-interval="vm.refreshIntervalMinutes"
													on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
													nclicks-code="orddel.ref">
												<span class="text-muted sub-text">최근 17:32</span> <a href=""
													role="button" class="btn-refresh font-icon-button"
													ng-click="vm.refresh()" data-nclicks-code="orddel.ref"><i
													class="fn fn-refresh" aria-hidden="true"></i> <span
													class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
											</div>
										</div>
										<div class="panel-body flex flex-wrap">
											<div class="list-wrap deposit-list flex-col-6 flex-col-md-12">
												<!---->
												<div ng-if="vm.saleStats &amp;&amp; vm.saleStats.$resolved"
													class="" style="">
													<div class="panel-icon-area">
														<span class="square-ico-area"><i
															class="seller-icon icon-order" aria-hidden="true"></i></span>
													</div>
													<ul class="panel-list">
														<li><span class="info-title">결제대기</span> <span
															class="number-area">
																<!---->
																<a ng-if="::vm.isDesktop"
																ui-sref="main.naverpay_sale_unpayment"
																class="text-number"
																ng-bind="::vm.saleStats.paymentWaitCases"
																data-nclicks-code="orddel.paymentwait"
																href="#/naverpay/sale/unpayment">0</a>
															<!----> <!---->
																<span>건</span>
														</span></li>
														<li><div class="clearfix">
																<span class="info-title"><em class="pull-left">신규주문</em>
																	<a href="javascript:void(0)" role="button"
																	class="font-icon-button"
																	uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li><strong>&amp;apos;선물 수락대기&amp;apos; 상태의 주문 건은 포함되지 않습니다.</strong></li><li><a href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=3355&quot; target=&quot;_blank&quot; role=&quot;button&quot; class=&quot;btn-link text-primary&quot;><span>그럼
																			선물 주문은 어디서 확인하나요?<i class=&quot;fn-shopping
																			fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
													</ul>
													'" popover-trigger="'outsideClick'"
													popover-placement="bottom"
													data-nclicks-code="orddel.newtip"><i class="fn fn-info1"
														aria-hidden="true"></i><span class="sr-only">툴팁</span> </a></span><span
														class="number-area">
														<!---->
														<a ng-if="::vm.isDesktop"
														ui-sref="main.naverpay_sale_delivery" class="text-number"
														ng-bind="::vm.saleStats.newOrderCases"
														data-nclicks-code="orddel.new"
														href="#/naverpay/sale/delivery">0</a>
													<!----> <!---->
														<span>건</span>
													</span>
												</div>
												<div class="clearfix panel-sub-info">
													<span class="info-title"><em class="sub-icon">⌞</em>
														오늘출발<a href="javascript:void(0)" role="button"
														class="font-icon-button"
														uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>&amp;apos;정기구독&amp;apos; 주문건은 &amp;apos;오늘출발&amp;apos;에 포함되지 않습니다.</li></ul>'"
														popover-trigger="'outsideClick'"
														popover-placement="bottom"
														data-nclicks-code="orddel.departtodaytip"><i
															class="fn fn-info1" aria-hidden="true"></i><span
															class="sr-only">툴팁</span> </a></span><span class="number-area">
														<!---->
														<a ng-if="::vm.isDesktop"
														ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'TODAY_DISPATCH'})"
														class="text-number"
														ng-bind="::vm.saleStats.todayDispatchCases"
														data-nclicks-code="orddel.departtoday"
														href="#/naverpay/sale/delivery?summaryInfoType=TODAY_DISPATCH">0</a>
													<!----> <!---->
														<span>건</span>
													</span>
												</div>
												<div class="clearfix panel-sub-info">
													<span class="info-title"><em class="sub-icon">⌞</em>
														예약구매</span> <span class="number-area">
														<!---->
														<a ng-if="::vm.isDesktop"
														ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'PRE_ORDER'})"
														class="text-number" ng-bind="::vm.saleStats.preOrderCases"
														data-nclicks-code="orddel.preord"
														href="#/naverpay/sale/delivery?summaryInfoType=PRE_ORDER">0</a>
													<!----> <!---->
														<span>건</span>
													</span>
												</div>
												<div class="clearfix panel-sub-info">
													<span class="info-title"><em class="sub-icon">⌞</em>
														정기구독</span> <span class="number-area">
														<!---->
														<a ng-if="::vm.isDesktop"
														ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'SUBSCRIPTION'})"
														class="text-number"
														ng-bind="::vm.saleStats.subscriptionCases"
														data-nclicks-code="orddel.subscription"
														href="#/naverpay/sale/delivery?summaryInfoType=SUBSCRIPTION">0</a>
													<!----> <!---->
														<span>건</span>
													</span>
												</div>
												</li>
												</ul>
											</div>
											<!---->
											<!---->
										</div>
										<div class="list-wrap delivery-list flex-col-6 flex-col-md-12">
											<!---->
											<div ng-if="vm.saleStats &amp;&amp; vm.saleStats.$resolved"
												class="" style="">
												<div class="panel-icon-area">
													<span class="square-ico-area"><i
														class="seller-icon icon-delivery" aria-hidden="true"></i></span>
												</div>
												<ul class="panel-list">
													<li><span class="info-title">배송준비</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'DELIVERY_READY'})"
															class="text-number"
															ng-bind="::vm.saleStats.deliveryPreparingCases"
															data-nclicks-code="orddel.wait"
															href="#/naverpay/sale/delivery?summaryInfoType=DELIVERY_READY">0</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
													<li><span class="info-title">배송중</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERING'})"
															class="text-number"
															ng-bind="::vm.saleStats.deliveringCases"
															data-nclicks-code="orddel.ing"
															href="#/naverpay/sale/delivery/situation?summaryInfoType=DELIVERING">85</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
													<li><span class="info-title">배송완료</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERED'})"
															class="text-number"
															ng-bind="::vm.saleStats.deliveredCases"
															data-nclicks-code="orddel.completed"
															href="#/naverpay/sale/delivery/situation?summaryInfoType=DELIVERED">124</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
												</ul>
											</div>
											<!---->
										</div>
									</div>
									<!---->
									<!---->
								</div>
							</div>
							<!---->
							<div ui-view="" name="settlement-report"
								class="panel-wrap flex-col-6 flex-col-xs-12 order-md-4 order-xs-2">
								<div class="panel panel-dashboard">
									<div class="panel-heading">
										<div class="pull-left">
											<h3 class="panel-title">클레임/정산</h3>
										</div>
										<div class="pull-right">
											<ncp-dashboard-refresh component-name="vm.componentName"
												refresh-interval="vm.refreshIntervalMinutes"
												on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
												nclicks-code="claimset.ref">
											<span class="text-muted sub-text">최근 17:32</span> <a href=""
												role="button" class="btn-refresh font-icon-button"
												ng-click="vm.refresh()" data-nclicks-code="claimset.ref"><i
												class="fn fn-refresh" aria-hidden="true"></i> <span
												class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
										</div>
									</div>
									<div class="panel-body flex flex-wrap">
										<div class="list-wrap return-list flex-col-6 flex-col-md-12">
											<!---->
											<div ng-if="vm.claim &amp;&amp; vm.claim.$resolved" class=""
												style="">
												<div class="panel-icon-area">
													<span class="square-ico-area"><i
														class="seller-icon icon-return" aria-hidden="true"></i></span>
												</div>
												<ul class="panel-list">
													<li><span class="info-title">취소요청</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_claim_cancel({summaryInfoType : 'CANCEL_REQUEST'})"
															class="text-number" ng-bind="::vm.claim.cancelClaimCases"
															data-nclicks-code="claimset.cancel"
															href="#/naverpay/claim/cancel?summaryInfoType=CANCEL_REQUEST">0</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
													<li><span class="info-title">반품요청</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_claim_return({summaryInfoType : 'RETURN_REQUEST'})"
															class="text-number" ng-bind="::vm.claim.returnClaimCases"
															data-nclicks-code="claimset.return"
															href="#/naverpay/claim/return?summaryInfoType=RETURN_REQUEST">0</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
													<li><span class="info-title">교환요청</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_claim_exchange({summaryInfoType : 'EXCHANGE_REQUEST'})"
															class="text-number"
															ng-bind="::vm.claim.exchangeClaimCases"
															data-nclicks-code="claimset.exchange"
															href="#/naverpay/claim/exchange?summaryInfoType=EXCHANGE_REQUEST">0</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
												</ul>
											</div>
											<!---->
											<!---->
										</div>
										<div
											class="list-wrap settlement-list flex-col-6 flex-col-md-12">
											<!---->
											<div ng-if="vm.settlement &amp;&amp; vm.settlement.$resolved"
												class="" style="">
												<div class="panel-icon-area">
													<span class="square-ico-area"><i
														class="seller-icon icon-settlement" aria-hidden="true"></i></span>
												</div>
												<ul class="panel-list">
													<li><span class="info-title">구매확정</span> <span
														class="number-area">
															<!---->
															<a ng-if="::vm.isDesktop"
															ui-sref="main.naverpay_sale_purchaseDecision({summaryInfoType : 'PURCHASE_DECIDED'})"
															class="text-number"
															ng-bind="::vm.purchaseCompletion.purchaseCompletionCases"
															data-nclicks-code="claimset.confirmed"
															href="#/naverpay/sale/purchaseDecision?summaryInfoType=PURCHASE_DECIDED">10</a>
														<!----> <!---->
															<span>건</span>
													</span></li>
													<li><div class="clearfix">
															<span class="info-title"><em class="pull-left">오늘정산</em>
																<a href="javascript:void(0)" role="button"
																class="font-icon-button"
																uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>어제 구매 확정되어, <strong>오늘 정산받을 금액</strong>입니다.</li><li>오늘정산 금액은 일반정산 건(구매확정 기준)과 빠른정산 건(배송완료 기준) 합산 금액입니다.</li><li><a href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=4121&quot; target=&quot;_blank&quot; class=&quot;btn-link text-primary&quot;><span>정산
																		금액은 언제 입금되나요?<i class=&quot;fn-shopping
																		fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
													<li><a
														href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=6103&quot;
														target=&quot;_blank&quot; class=&quot;btn-linktext-primary&quot;><span>빠른정산 자세히 알아보기<i class=&quot;fn-shopping fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
												</ul>
												'" popover-trigger="'outsideClick'"
												popover-placement="bottom"
												data-nclicks-code="claimset.todaytip"><i class="fn fn-info1"
													aria-hidden="true"></i><span class="sr-only">툴팁</span> </a></span><span
													class="number-area">
													<!---->
													<a ng-if="::vm.isDesktop"
													ui-sref="main.naverpay_settlemgt_sellerdailysettle({searchType: 'settleToday'})"
													class="text-number" ng-bind="::vm.settlement.todayAmount"
													data-nclicks-code="claimset.today"
													href="#/naverpay/settlemgt/sellerdailysettle?searchType=settleToday">0</a>
												<!----> <!---->
													<span>원</span>
												</span>
											</div>
											<div class="clearfix panel-sub-info">
												<span class="info-title"><em class="sub-icon">⌞</em>
													빠른정산</span> <span class="number-area">
													<!---->
													<a ng-if="::vm.isDesktop"
													ui-sref="main.naverpay_settlemgt_quicksettlebycase({searchType: 'settleToday'})"
													class="text-number"
													ng-bind="::vm.settlement.quickTodayAmount"
													data-nclicks-code="claimset.todayfast"
													href="#/naverpay/quicksettle/quicksettlebycase?searchType=settleToday">0</a>
												<!----> <!---->
													<span>원</span>
												</span>
											</div>
											</li>
											<li><div class="clearfix">
													<span class="info-title"><em class="pull-left">정산예정</em>
														<a href="javascript:void(0)" role="button"
														class="font-icon-button"
														uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>오늘 구매 확정되어, <strong>내일 정산받을 금액</strong>입니다.</li><li>정산예정 금액은 일반정산 건(구매확정 기준)과 빠른정산 건(배송완료 기준) 합산 금액입니다.</li><li><a href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=3578&quot; target=&quot;_blank&quot; class=&quot;btn-link text-primary&quot;><span>발주/발송관리
																메뉴에서 확인하는 정산 예정 금액과 다르다면?<i class=&quot;fn-shopping
																fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
											<li><a
												href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=6103&quot;
												target=&quot;_blank&quot; class=&quot;btn-linktext-primary&quot;><span>빠른정산 자세히 알아보기<i class=&quot;fn-shopping fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
											</ul>
											'" popover-trigger="'outsideClick'"
											popover-placement="bottom"
											data-nclicks-code="claimset.expectedtip"><i
												class="fn fn-info1" aria-hidden="true"></i><span
												class="sr-only">툴팁</span> </a></span><span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_settlemgt_settlecasebycase({searchType: 'settleExpect'})"
												class="text-number" ng-bind="::vm.settlement.expectedAmount"
												data-nclicks-code="claimset.expected"
												href="#/naverpay/settlemgt/settlecasebycase?searchType=settleExpect">0</a>
											<!----> <!---->
												<span>원</span>
											</span>
										</div>
										<div class="clearfix panel-sub-info">
											<span class="info-title"><em class="sub-icon">⌞</em>
												빠른정산</span> <span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_settlemgt_quicksettlebycase({searchType: 'settleExpect'})"
												class="text-number"
												ng-bind="::vm.settlement.quickExpectedAmount"
												data-nclicks-code="claimset.expectedfast"
												href="#/naverpay/quicksettle/quicksettlebycase?searchType=settleExpect">0</a>
											<!----> <!---->
												<span>원</span>
											</span>
										</div>
										</li>
										<li><span class="info-title">충전금</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop" ui-sref="main.naverpay_charge"
												class="text-number" ng-bind="::vm.settlement.chargeBalance"
												data-nclicks-code="claimset.charge" href="#/naverpay/charge">0</a>
											<!----> <!---->
												<span>원</span>
										</span></li>
										</ul>
									</div>
									<!---->
								</div>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<!----><!---->
					<div ui-view="" name="naverpay-saleschart-new"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-5 order-xs-5"
						ng-if="::!vm.isMobile">
						<div class="panel panel-dashboard panel-stats">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">
								 매출 통계<span class="text-muted sub-text">오전 8시 업데이트</span>
									</h3>
								</div>
								<div class="pull-right">
									<span class="store-name"><a
										ng-href="https://smartstore.naver.com/tclee" target="_blank"
										data-nclicks-code="sales.storemove"
										href="https://smartstore.naver.com/tclee">
											<!----> <!---->
											<img
											ng-if="!vm.channelRepresentImageUrl || vm.channelRepresentImageUrl === ''"
											src="/images/no-img.jpg" class="img-circle" width="36"
											height="36" alt="등록된 스토어 대표이미지 없음">
										<!----> <span class="label mg-right-sm storefarm" style="">마켓컬리티</span>1조<i
											class="fn-shopping fn-shopping-forward2 text-muted"
											aria-hidden="true"></i>
									</a></span>
								</div>
							</div>
							<div class="panel-body">
								<div class="text-center">
									<div data-toggle="buttons"
										class="btn-group btn-group-customize">
										<label class="btn btn-default"
											ng-class="{active: vm.currentChartIndex === 0}"
											ng-click="vm.showChart(0)" data-nclicks-code="sales.numofpay"><input
											type="radio">결제건수</label> <label
											class="btn btn-default active"
											ng-class="{active: vm.currentChartIndex === 1}"
											ng-click="vm.showChart(1)" data-nclicks-code="sales.payer"><input
											type="radio">결제자수</label> <label class="btn btn-default"
											ng-class="{active: vm.currentChartIndex === 2}"
											ng-click="vm.showChart(2)" data-nclicks-code="sales.price"><input
											type="radio">결제금액</label>
									</div>
								</div>
								<div class="stats-area">
									<!---->
									<!---->
									<div id="chart-container-usercount"
										style="height: 275px; margin: 0px auto; overflow: hidden;"
										ng-if="vm.currentChartIndex === 1"
										ng-click="vm.movePeriodStat()"
										data-nclicks-code="sales.payercont" data-highcharts-chart="1">
										<div id="highcharts-agtc6gu-28" dir="ltr"
											class="highcharts-container "
											style="position: relative; overflow: hidden; width: 858px; height: 275px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
											<svg version="1.1" class="highcharts-root"
												style="font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
												xmlns="http://www.w3.org/2000/svg" width="858" height="275"
												viewBox="0 0 858 275">
												<desc>Created with Highcharts 7.1.1</desc>
												<defs>
												<clipPath id="highcharts-agtc6gu-29-">
												<rect x="0" y="0" width="816" height="207" fill="none"></rect></clipPath>
												<clipPath id="highcharts-agtc6gu-61-">
												<rect x="0" y="0" width="816" height="207" fill="none"></rect></clipPath></defs>
												<rect fill="#ffffff" class="highcharts-background" x="0"
													y="0" width="858" height="275" rx="0" ry="0"></rect>
												<rect fill="none" class="highcharts-plot-background" x="32"
													y="10" width="816" height="207"></rect>
												<g class="highcharts-grid highcharts-xaxis-grid"
													data-z-index="1">
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 58.5 10 L 58.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 113.5 10 L 113.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 167.5 10 L 167.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 221.5 10 L 221.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 276.5 10 L 276.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 330.5 10 L 330.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 385.5 10 L 385.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 439.5 10 L 439.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 493.5 10 L 493.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 548.5 10 L 548.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 602.5 10 L 602.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 657.5 10 L 657.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 711.5 10 L 711.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 765.5 10 L 765.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 820.5 10 L 820.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 85.5 10 L 85.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 140.5 10 L 140.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 194.5 10 L 194.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 249.5 10 L 249.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 303.5 10 L 303.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 357.5 10 L 357.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 412.5 10 L 412.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 466.5 10 L 466.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 521.5 10 L 521.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 575.5 10 L 575.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 629.5 10 L 629.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 684.5 10 L 684.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 738.5 10 L 738.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 793.5 10 L 793.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 847.5 10 L 847.5 217"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 31.5 10 L 31.5 217"
													opacity="1"></path></g>
												<g class="highcharts-grid highcharts-yaxis-grid"
													data-z-index="1">
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 217.5 L 848 217.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 176.5 L 848 176.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 134.5 L 848 134.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 93.5 L 848 93.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 51.5 L 848 51.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 9.5 L 848 9.5"
													opacity="1"></path></g>
												<rect fill="none" class="highcharts-plot-border"
													data-z-index="1" x="32" y="10" width="816" height="207"></rect>
												<g class="highcharts-axis highcharts-xaxis" data-z-index="2">
												<path fill="none" class="highcharts-axis-line"
													stroke="#ccd6eb" stroke-width="1" data-z-index="7"
													d="M 32 217.5 L 848 217.5"></path></g>
												<g class="highcharts-axis highcharts-yaxis" data-z-index="2">
												<path fill="none" class="highcharts-axis-line"
													data-z-index="7" d="M 32 10 L 32 217"></path></g>
												<g class="highcharts-series-group" data-z-index="3">
												<g data-z-index="0.1"
													class="highcharts-series highcharts-series-0 highcharts-spline-series     "
													transform="translate(32,10) scale(1 1)"
													clip-path="url(#highcharts-agtc6gu-61-)">
												<path fill="none"
													d="M 13.6 207 C 13.6 207 29.919999999999998 207 40.8 207 C 51.67999999999999 207 57.120000000000005 207 68 207 C 78.88 207 84.32000000000001 207 95.2 207 C 106.08000000000001 207 111.52000000000001 207 122.4 207 C 133.28000000000003 207 138.71999999999997 207 149.6 207 C 160.48 207 165.92000000000002 207 176.8 207 C 187.68 207 193.12 207 204 207 C 214.88000000000002 207 220.32 207 231.2 207 C 242.07999999999998 207 247.51999999999998 207 258.4 207 C 269.28000000000003 207 274.71999999999997 207 285.6 207 C 296.48 207 301.92 207 312.8 207 C 323.68 207 329.12 207 340 207 C 350.88 207 356.32 207 367.2 207 C 378.08 207 383.52 207 394.4 207 C 405.28 207 410.7200000000001 207 421.6 207 C 432.48 207 437.9200000000001 207 448.8 207 C 459.68 207 465.12 207 476 207 C 486.88 207 492.32 207 503.2 207 C 514.0799999999999 207 519.52 207 530.4 207 C 541.28 207 546.72 207 557.6 207 C 568.48 207 573.92 207 584.8 207 C 595.68 207 601.12 207 612 207 C 622.88 207 628.32 207 639.2 207 C 650.08 207 655.52 207 666.4 207 C 677.28 207 682.72 207 693.6 207 C 704.48 207 709.9199999999998 207 720.8 207 C 731.68 207 737.12 41.400000000000006 748 41.400000000000006 C 758.88 41.400000000000006 764.32 207 775.2 207 C 786.0800000000002 207 802.4 207 802.4 207"
													class="highcharts-graph" data-z-index="1" stroke="#40c65a"
													stroke-width="2" stroke-linejoin="round"
													stroke-linecap="round"></path>
												<path fill="none"
													d="M 3.5999999999999996 207 L 13.6 207 C 13.6 207 29.919999999999998 207 40.8 207 C 51.67999999999999 207 57.120000000000005 207 68 207 C 78.88 207 84.32000000000001 207 95.2 207 C 106.08000000000001 207 111.52000000000001 207 122.4 207 C 133.28000000000003 207 138.71999999999997 207 149.6 207 C 160.48 207 165.92000000000002 207 176.8 207 C 187.68 207 193.12 207 204 207 C 214.88000000000002 207 220.32 207 231.2 207 C 242.07999999999998 207 247.51999999999998 207 258.4 207 C 269.28000000000003 207 274.71999999999997 207 285.6 207 C 296.48 207 301.92 207 312.8 207 C 323.68 207 329.12 207 340 207 C 350.88 207 356.32 207 367.2 207 C 378.08 207 383.52 207 394.4 207 C 405.28 207 410.7200000000001 207 421.6 207 C 432.48 207 437.9200000000001 207 448.8 207 C 459.68 207 465.12 207 476 207 C 486.88 207 492.32 207 503.2 207 C 514.0799999999999 207 519.52 207 530.4 207 C 541.28 207 546.72 207 557.6 207 C 568.48 207 573.92 207 584.8 207 C 595.68 207 601.12 207 612 207 C 622.88 207 628.32 207 639.2 207 C 650.08 207 655.52 207 666.4 207 C 677.28 207 682.72 207 693.6 207 C 704.48 207 709.9199999999998 207 720.8 207 C 731.68 207 737.12 41.400000000000006 748 41.400000000000006 C 758.88 41.400000000000006 764.32 207 775.2 207 C 786.0800000000002 207 802.4 207 802.4 207 L 812.4 207"
													visibility="visible" data-z-index="2"
													class="highcharts-tracker-line" stroke-linejoin="round"
													stroke="rgba(192,192,192,0.0001)" stroke-width="22"></path></g>
												<g data-z-index="0.1"
													class="highcharts-markers highcharts-series-0 highcharts-spline-series  highcharts-tracker    "
													transform="translate(32,10) scale(1 1)">
												<path fill="#40c65a" visibility="hidden"
													d="M 612 207 A 0 0 0 1 1 612 207 Z"
													class="highcharts-halo highcharts-color-undefined"
													data-z-index="-1" fill-opacity="0.25"></path>
												<path fill="#40c65a"
													d="M 13 211 A 4 4 0 1 1 13.003999999333336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 40 211 A 4 4 0 1 1 40.00399999933334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 68 211 A 4 4 0 1 1 68.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 95 211 A 4 4 0 1 1 95.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 122 211 A 4 4 0 1 1 122.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 149 211 A 4 4 0 1 1 149.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 176 211 A 4 4 0 1 1 176.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 204 211 A 4 4 0 1 1 204.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 231 211 A 4 4 0 1 1 231.00399999933333 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 258 211 A 4 4 0 1 1 258.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 285 211 A 4 4 0 1 1 285.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 312 211 A 4 4 0 1 1 312.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00003947789809188862"></path>
												<path fill="#40c65a"
													d="M 340 211 A 4 4 0 1 1 340.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00003947789809188862"></path>
												<path fill="#40c65a"
													d="M 367 211 A 4 4 0 1 1 367.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 394 211 A 4 4 0 1 1 394.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00008882380959551739"></path>
												<path fill="#40c65a"
													d="M 421 211 A 4 4 0 1 1 421.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00009374693598884765"></path>
												<path fill="#40c65a"
													d="M 448 211 A 4 4 0 1 1 448.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="3.8912261289027195e-8"></path>
												<path fill="#40c65a"
													d="M 476 211 A 4 4 0 1 1 476.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.000011740526105856464"></path>
												<path fill="#40c65a"
													d="M 503 211 A 4 4 0 1 1 503.00399999933336 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00007895267917501503"></path>
												<path fill="#40c65a"
													d="M 530 211 A 4 4 0 1 1 530.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00008882380959551739"></path>
												<path fill="#40c65a"
													d="M 557 211 A 4 4 0 1 1 557.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point "
													stroke-width="0.0002467198171342"></path>
												<path fill="#40c65a"
													d="M 584 211 A 4 4 0 1 1 584.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point  "
													stroke-width="0.0000658075031079175"></path>
												<path fill="#40c65a"
													d="M 612 211 A 4 4 0 1 1 612.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point   "
													stroke-width="0.000016977681319418902"></path>
												<path fill="#40c65a"
													d="M 639 211 A 4 4 0 1 1 639.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point "
													stroke-width="0.0000025574346958490146"></path>
												<path fill="#40c65a"
													d="M 666 211 A 4 4 0 1 1 666.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00011220704437259199"></path>
												<path fill="#40c65a"
													d="M 693 211 A 4 4 0 1 1 693.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.00024344042924895337"></path>
												<path fill="#40c65a"
													d="M 720 211 A 4 4 0 1 1 720.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.000021398653005572088"></path>
												<path fill="#40c65a"
													d="M 748 45.400000000000006 A 4 4 0 1 1 748.0039999993334 45.399998000000174 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.0000021736733387713036"></path>
												<path fill="#40c65a"
													d="M 775 211 A 4 4 0 1 1 775.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="3.496310553297022e-7"></path>
												<path fill="#40c65a"
													d="M 802 211 A 4 4 0 1 1 802.0039999993334 210.99999800000018 Z"
													opacity="1" class="highcharts-point"
													stroke-width="0.000005493455950009163"></path></g></g>
												<text x="429" text-anchor="middle" class="highcharts-title"
													data-z-index="4"
													style="color:#333333;font-size:18px;fill:#333333;" y="24"></text>
												<text x="429" text-anchor="middle"
													class="highcharts-subtitle" data-z-index="4"
													style="color:#666666;fill:#666666;" y="24"></text>
												<g class="highcharts-axis-labels highcharts-xaxis-labels"
													data-z-index="7">
												<text x="48.19272486435067"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 48.19272486435067 233)"
													y="233" opacity="1">
												<tspan>09.25.</tspan></text>
												<text x="102.59272486435067"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 102.59272486435067 233)"
													y="233" opacity="1">09.27.</text>
												<text x="156.9927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 156.9927248643507 233)"
													y="233" opacity="1">09.29.</text>
												<text x="211.3927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 211.3927248643507 233)"
													y="233" opacity="1">10.01.</text>
												<text x="265.79272486435065"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 265.79272486435065 233)"
													y="233" opacity="1">10.03.</text>
												<text x="320.1927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 320.1927248643506 233)"
													y="233" opacity="1">10.05.</text>
												<text x="374.59272486435066"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 374.59272486435066 233)"
													y="233" opacity="1">10.07.</text>
												<text x="428.99272486435063"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 428.99272486435063 233)"
													y="233" opacity="1">10.09.</text>
												<text x="483.3927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 483.3927248643506 233)"
													y="233" opacity="1">10.11.</text>
												<text x="537.7927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 537.7927248643506 233)"
													y="233" opacity="1">10.13.</text>
												<text x="592.1927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 592.1927248643507 233)"
													y="233" opacity="1">10.15.</text>
												<text x="646.5927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 646.5927248643507 233)"
													y="233" opacity="1">10.17.</text>
												<text x="700.9927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 700.9927248643506 233)"
													y="233" opacity="1">10.19.</text>
												<text x="755.3927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 755.3927248643506 233)"
													y="233" opacity="1">10.21.</text>
												<text x="809.7927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 809.7927248643506 233)"
													y="233" opacity="1">10.23.</text>
												<text x="75.39272486435068"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 75.39272486435068 233)"
													y="233" opacity="1">09.26.</text>
												<text x="129.7927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 129.7927248643507 233)"
													y="233" opacity="1">09.28.</text>
												<text x="184.19272486435068"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 184.19272486435068 233)"
													y="233" opacity="1">09.30.</text>
												<text x="238.59272486435069"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 238.59272486435069 233)"
													y="233" opacity="1">10.02.</text>
												<text x="292.99272486435063"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 292.99272486435063 233)"
													y="233" opacity="1">10.04.</text>
												<text x="347.3927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 347.3927248643506 233)"
													y="233" opacity="1">10.06.</text>
												<text x="401.79272486435065"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 401.79272486435065 233)"
													y="233" opacity="1">10.08.</text>
												<text x="456.1927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 456.1927248643506 233)"
													y="233" opacity="1">10.10.</text>
												<text x="510.59272486435066"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 510.59272486435066 233)"
													y="233" opacity="1">10.12.</text>
												<text x="564.9927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 564.9927248643506 233)"
													y="233" opacity="1">10.14.</text>
												<text x="619.3927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 619.3927248643506 233)"
													y="233" opacity="1">10.16.</text>
												<text x="673.7927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 673.7927248643506 233)"
													y="233" opacity="1">10.18.</text>
												<text x="728.1927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 728.1927248643507 233)"
													y="233" opacity="1">10.20.</text>
												<text x="782.5927248643507"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 782.5927248643507 233)"
													y="233" opacity="1">10.22.</text>
												<text x="836.9927248643506"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end"
													transform="translate(0,0) rotate(-45 836.9927248643506 233)"
													y="233" opacity="1">10.24.</text></g>
												<g class="highcharts-axis-labels highcharts-yaxis-labels"
													data-z-index="7">
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="221"
													opacity="1">0</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="180"
													opacity="1">0</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="138"
													opacity="1">1</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="97"
													opacity="1">1</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="55"
													opacity="1">1</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="14"
													opacity="1">1</text></g>
												<g
													class="highcharts-label highcharts-tooltip highcharts-color-undefined"
													style="pointer-events:none;white-space:nowrap;"
													data-z-index="8" transform="translate(617,-9999)"
													opacity="0" visibility="visible">
												<path fill="none"
													class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
													d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
													stroke="#000000" stroke-opacity="0.049999999999999996"
													stroke-width="5" transform="translate(1, 1)"></path>
												<path fill="none"
													class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
													d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
													stroke="#000000" stroke-opacity="0.09999999999999999"
													stroke-width="3" transform="translate(1, 1)"></path>
												<path fill="none"
													class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
													d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
													stroke="#000000" stroke-opacity="0.15" stroke-width="1"
													transform="translate(1, 1)"></path>
												<path fill="rgba(255,255,255,0.90)"
													class="highcharts-label-box highcharts-tooltip-box"
													d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
													stroke="#91959d" stroke-width="1"></path></g></svg>
											<div
												class="highcharts-label highcharts-tooltip highcharts-color-undefined"
												style="position: absolute; left: 617px; top: -9999px; opacity: 0; pointer-events: none; visibility: visible;">
												<span data-z-index="1"
													style="position: absolute; font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px; white-space: nowrap; color: rgb(51, 51, 51); cursor: default; margin-left: 0px; margin-top: 0px; left: 8px; top: 8px;"><span
													style="font-size: 12px; color: #52555c"><b>10.17.</b></span><br>
												<span style="font-size: 18px; color: #40c65a"><b>0</b></span><span
													style="font-size: 12px; color: #848992"> 명</span></span>
											</div>
										</div>
									</div>
									<!---->
									<!---->
									<!---->
								</div>
							</div>
							<!---->
						</div>
					</div>
					<!----><!---->
					<div ui-view="" name="inquery"
						class="panel-wrap flex-col-3 flex-col-md-6 flex-col-xs-12 order-md-6 order-xs-6">
						<div class="panel panel-dashboard panel-inquiry">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">미답변 문의</h3>
								</div>
								<div class="pull-right">
									<ncp-dashboard-refresh component-name="vm.componentName"
										refresh-interval="vm.refreshIntervalMinutes"
										on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
										nclicks-code="qna.ref">
									<span class="text-muted sub-text">최근 17:32</span> <a href=""
										role="button" class="btn-refresh font-icon-button"
										ng-click="vm.refresh()" data-nclicks-code="qna.ref"><i
										class="fn fn-refresh" aria-hidden="true"></i> <span
										class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
								</div>
							</div>
							<div class="panel-body">
								<ul class="panel-tap" role="tablist">
									<li role="tab"
										ng-attr-aria-selected="{{vm.tab === 'prod' &amp;&amp; 'true' || 'false'}}"
										aria-selected="true"><a href=""
										ng-click="vm.changeTab('prod', false)"
										class="product hidden-xs" data-nclicks-code="qna.prd"><p
												class="text-number">0</p>
											<span>상품문의</span></a> <a href=""
										ng-click="vm.changeTab('prod', true)"
										class="product visible-xs" data-nclicks-code="qna.prd"><p
												class="text-number">0</p>
											<span>상품문의</span></a></li>
									<li role="tab"
										ng-attr-aria-selected="{{vm.tab === 'cust' &amp;&amp; 'true' || 'false'}}"
										aria-selected="false"><a href=""
										ng-click="vm.changeTab('cust', false)"
										class="customer hidden-xs" data-nclicks-code="qna.buyer"><p
												class="text-number">0</p>
											<span>고객문의</span></a> <a href=""
										ng-click="vm.changeTab('cust', true)"
										class="customer visible-xs" data-nclicks-code="qna.buyer"><p
												class="text-number">0</p>
											<span>고객문의</span></a></li>
									<li role="tab"
										ng-attr-aria-selected="{{vm.tab === 'talk' &amp;&amp; 'true' || 'false'}}"
										aria-selected="false">
										<!----> <!----> <!---->
										<a href="" ng-click="vm.tab = 'talk'" ng-if="vm.talkAccountId"
										class="talk hidden-xs" data-nclicks-code="qna.talk" style=""><p
												class="text-number">0</p>
											<span>톡톡문의</span></a>
									<!----> <!---->
										<a href="" ng-click="vm.goChatMenu()" ng-if="vm.talkAccountId"
										class="talk visible-xs" data-nclicks-code="qna.talk" style=""><p
												class="text-number">0</p>
											<span>톡톡문의</span></a>
									<!---->
									</li>
								</ul>
								<!---->
								<div class="inquiry-content hidden-xs" ng-if="vm.tab === 'prod'">
									<!---->
									<!---->
									<div class="result-info" ng-if="!vm.productInquiries">
										<i
											class="fn-shopping fn-65 fn-shopping-caution1 icon-color-big"
											aria-hidden="true"></i>
										<p class="text-sub title">등록된 상품문의가 없습니다.</p>
									</div>
									<!---->
									<div class="btn-inquiry-area">
										<a ui-sref="main.contents.comment"
											class="btn btn-default btn-block"
											data-nclicks-code="qna.prdmove" href="#/comment/">문의 관리<i
											class="fn-shopping fn-shopping-forward2 fn-auto-size text-muted"
											aria-hidden="true"></i></a>
									</div>
								</div>
								<!---->
								<!---->
								<!---->
								<!---->
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="notice"
						class="panel-wrap flex-col-3 flex-col-md-6 flex-col-xs-12 order-md-7 order-xs-7">
						<div class="panel panel-dashboard panel-notice">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">
										<a ui-sref="main.centernotice.list"
											data-nclicks-code="notice.move" href="#/center-notice/list/">공지사항
											<i class="fn-shopping fn-shopping-forward2 text-muted"
											aria-hidden="true"></i>
										</a>
									</h3>
								</div>
								<div class="pull-right">
									<ncp-dashboard-refresh component-name="vm.componentName"
										refresh-interval="vm.refreshIntervalMinutes"
										on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
										nclicks-code="notice.ref">
									<span class="text-muted sub-text">최근 17:32</span> <a href=""
										role="button" class="btn-refresh font-icon-button"
										ng-click="vm.refresh()" data-nclicks-code="notice.ref"><i
										class="fn fn-refresh" aria-hidden="true"></i> <span
										class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
								</div>
							</div>
							<div class="panel-body">
								<!---->
								<ul class="list-wrap panel-list" ng-if="::vm.notices" style="">
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010063"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<span ng-if="::notice.exposeOnTop"><span
															class="label label-danger label-outline">중요</span> [일반] </span>
														<!---->
														<!---->
														&nbsp;1조 프로젝트 시작!
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.19.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010044"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<span ng-if="::notice.exposeOnTop"><span
															class="label label-danger label-outline">중요</span> [일반] </span>
														<!---->
														<!---->
														&nbsp;마켓 컬리티로 결정! (10/14~10/31)
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.13.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010074"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-success"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">D-커머스</span>
														<!---->
														&nbsp;[라이브 교육] Spring 교육 (10/26, 낮 12시)
													</p>
													<!---->
													<span ng-if="::notice.newYn"
														class="label label-new label-new-xs mg-left-sm mg-right-reset"
														aria-label="new">N</span>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.22.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010068"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">일반</span>
														<!---->
														&nbsp;마켓컬리티 iOS 앱 알림 추가
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.21.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010062"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">일반</span>
														<!---->
														&nbsp;[안내] 상품명 어뷰징 관련 기준 안내
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.19.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010061"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">일반</span>
														<!---->
														&nbsp;유령계정 등 어뷰징 몰 모니터링 강화 예정 안내
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.19.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.notices track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contup"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100010060"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">일반</span>
														<!---->
														&nbsp;일부 카테고리 집중 모니터링 안내
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">10.19.</div>
											</div></a>
									<!---->
									</li>
									<!---->
								</ul>
								<!---->
								<hr>
								<h4 class="h6 bold pd-left-xxlg">마켓컬리티 활용 TIP</h4>
								<!---->
								<ul class="list-wrap panel-list" ng-if="::vm.storeUseTip">
									<!---->
									<li ng-repeat="notice in ::vm.storeUseTip track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contdown"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100009900"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">판매
															TIP</span>
														<!---->
														&nbsp;빠른정산 안내
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">09.03.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.storeUseTip track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contdown"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100009769"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">매뉴얼</span>
														<!---->
														&nbsp;마켓컬리티 정기구독 매뉴얼
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">07.29.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.storeUseTip track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contdown"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100009701"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">판매
															TIP</span>
														<!---->
														&nbsp;마켓컬리티 2분기 개편 소식 및 중요 공지사항 꼭 확인해주세요!
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">07.12.</div>
											</div></a>
									<!---->
									</li>
									<!---->
									<li ng-repeat="notice in ::vm.storeUseTip track by notice.id">
										<!---->
										<!---->
										<a role="button"
										ui-sref="main.centernotice.detail({noticeId: notice.id, inflowType: 'dashboard'})"
										ng-if="::notice.exposeMethodType !== 'LINK'"
										data-nclicks-code="notice.contdown"
										ng-class="{'dimmed-area': notice.readMarkYn}"
										href="#/center-notice/detail/100009523"><div class="flex">
												<div class="flex title align-items-center">
													<p class="text-overflow mg-top-reset">
														<!---->
														<!---->
														<span class="label label-outline label-default"
															ng-if="!notice.exposeOnTop"
															ng-class="::notice.exposeOnSecond &amp;&amp; !notice.exposeOnTop ? 'label-success' : 'label-default'">판매
															TIP</span>
														<!---->
														&nbsp;[상품정보] 패션잡화 카테고리 상품정보 가이드(신발편)
													</p>
													<!---->
												</div>
												<div class="flex date text-number"
													ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">05.24.</div>
											</div></a>
									<!---->
									</li>
									<!---->
								</ul>
								<!---->
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="delay"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-8 order-xs-8">
						<div class="panel panel-dashboard panel-delay">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">판매지연</h3>
								</div>
								<div class="pull-right">
									<ncp-dashboard-refresh component-name="vm.componentName"
										refresh-interval="vm.refreshIntervalMinutes"
										on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
										nclicks-code="delay.ref">
									<span class="text-muted sub-text">최근 17:32</span> <a href=""
										role="button" class="btn-refresh font-icon-button"
										ng-click="vm.refresh()" data-nclicks-code="delay.ref"><i
										class="fn fn-refresh" aria-hidden="true"></i> <span
										class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
								</div>
							</div>
							<!---->
							<div class="panel-body"
								ng-if="vm.saleDelay &amp;&amp; vm.saleDelay.$resolved" style="">
								<ul class="panel-list">
									<li><span class="square-ico-area"><i
											class="seller-icon icon-new-order" aria-hidden="true"></i></span>
									<p class="info-title">신규주문 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'NEW_ORDERS_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.orderingDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.ordconfirm"
										href="#/naverpay/sale/delivery?summaryInfoType=NEW_ORDERS_DELAYED">0</a>
									<!----> <!----></li>
									<li><span class="square-ico-area"><i
											class="seller-icon icon-shipping-delay" aria-hidden="true"></i></span>
									<p class="info-title">오늘출발 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'TODAY_DISPATCH_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.todayDispatchDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.departtoday"
										href="#/naverpay/sale/delivery?summaryInfoType=TODAY_DISPATCH_DELAYED">0</a>
									<!----> <!----></li>
									<li><span class="square-ico-area"><i
											class="fn fn-deliver1" aria-hidden="true"></i></span>
									<p class="info-title">배송준비 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'DELIVERY_READY_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.dispatchDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.send"
										href="#/naverpay/sale/delivery?summaryInfoType=DELIVERY_READY_DELAYED">0</a>
									<!----> <!----></li>
									<li><span class="square-ico-area"><i
											class="seller-icon icon-cancel" aria-hidden="true"></i></span>
									<p class="info-title">취소 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_claim_cancel({summaryInfoType : 'CANCEL_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.cancelClaimDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.cancel"
										href="#/naverpay/claim/cancel?summaryInfoType=CANCEL_DELAYED">0</a>
									<!----> <!----></li>
									<li><span class="square-ico-area"><i
											class="seller-icon icon-return-sm" aria-hidden="true"></i></span>
									<p class="info-title">반품 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_claim_return({summaryInfoType : 'RETURN_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.returnClaimDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.return"
										href="#/naverpay/claim/return?summaryInfoType=RETURN_DELAYED">0</a>
									<!----> <!----></li>
									<li><span class="square-ico-area"><i
											class="seller-icon icon-exchange" aria-hidden="true"></i></span>
									<p class="info-title">교환 지연</p>
										<!---->
										<a ng-if="::vm.isDesktop"
										ui-sref="main.naverpay_claim_exchange({summaryInfoType : 'EXCHANGE_DELAYED'})"
										class="text-number"
										ng-bind="::vm.saleDelay.exchangeClaimDelayCases | NcpPrintThousandOver"
										data-nclicks-code="delay.exchange"
										href="#/naverpay/claim/exchange?summaryInfoType=EXCHANGE_DELAYED">0</a>
									<!----> <!----></li>
								</ul>
							</div>
							<!---->
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="product-report"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-10 order-xs-10">
						<div class="panel panel-dashboard">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">상품</h3>
								</div>
								<div class="pull-right">
									<ncp-dashboard-refresh component-name="vm.componentName"
										refresh-interval="vm.refreshIntervalMinutes"
										on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
										nclicks-code="PRD.ref">
									<span class="text-muted sub-text">최근 17:32</span> <a href=""
										role="button" class="btn-refresh font-icon-button"
										ng-click="vm.refresh()" data-nclicks-code="PRD.ref"><i
										class="fn fn-refresh" aria-hidden="true"></i> <span
										class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
								</div>
							</div>
							<!---->
							<div class="panel-body"
								ng-if="vm.channelProduct &amp;&amp; vm.channelProduct.$resolved"
								style="">
								<div class="border-list-wrap col-md-6 col-sm-6 col-xs-12">
									<ul class="panel-border-list">
										<li><span class="info-title">판매중 상품</span> <span
											class="number-area">
												<!---->
												<a href=""
												ng-click="vm.goSaleProduct(vm.loginInfo.hasSupplyAccount)"
												ng-if="!vm.loginInfo.hasSupplyAccount" class="text-number"
												ng-bind="::vm.channelProduct.onSaleProductCount"
												data-nclicks-code="PRD.ing">46</a>
											<!----> <!----> <span>건</span>
										</span></li>
										<li><span class="info-title">품절 상품</span> <span
											class="number-area">
												<!---->
												<a href=""
												ng-click="vm.goOutOfStockProduct(vm.loginInfo.hasSupplyAccount)"
												ng-if="!vm.loginInfo.hasSupplyAccount" class="text-number"
												ng-bind="::vm.channelProduct.onOutOfStockProductCount"
												data-nclicks-code="PRD.outofstock">0</a>
											<!----> <!----> <span>건</span>
										</span></li>
										<li><span class="info-title">수정요청 상품</span> <span
											class="number-area"><a href=""
												ng-click="vm.openModifyProductPopup()" class="text-number"
												ng-bind="::vm.channelProduct.modifyRequestProductCount"
												data-nclicks-code="PRD.modify">0</a> <span>건</span></span></li>
									</ul>
								</div>
								<div class="border-list-wrap col-md-6 col-sm-6 col-xs-12">
									<!---->
									<ul ng-if="vm.config.hasNaverShopping"
										class="panel-border-list">
										<li><span class="info-title">카탈로그 가격관리 상품</span> <span
											class="number-area"><a href="" class="text-number"
												ng-click="vm.goCatalogMenuLink('ALL')"
												data-nclicks-code="PRD.cata">3</a> <span>건</span></span></li>
										<li><span class="info-title">카탈로그 인기상품</span> <span
											class="number-area"><a href="" class="text-number"
												ng-click="vm.goCatalogMenuLink('POPULAR')"
												data-nclicks-code="PRD.catabest">0</a> <span>건</span></span></li>
										<li><span class="info-title">최저가 달성 가능 상품</span> <span
											class="number-area"><a href="" class="text-number"
												ng-click="vm.goCatalogMenuLink('LOWEST_ACHIEVABLE')"
												data-nclicks-code="PRD.cataprice">1</a> <span>건</span></span></li>
									</ul>
									<!---->
									<!---->
								</div>
							</div>
							<!---->
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="store-report"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-9 order-xs-9">
						<div class="panel panel-dashboard">
							<div class="panel-heading">
								<div class="flex">
									<h3 class="flex panel-title mr-auto">
										스토어 고객 현황
										<!---->
										<span class="text-muted sub-text" ng-if="::!vm.isMobile">오전
											8시 업데이트</span>
										<!---->
									</h3>
									<a ng-href="https://smartstore.naver.com/tclee" target="_blank"
										data-nclicks-code="status.storemove"
										class="flex align-items-center ml-auto no-decoration"
										style="width: 55%" href="https://smartstore.naver.com/tclee"><span
										class="text-overflow inline-block ml-auto">
											<!----> <!---->
											<img
											ng-if="!vm.channelRepresentImageUrl || vm.channelRepresentImageUrl === ''"
											src="/images/no-img.jpg" class="img-circle hidden-xs"
											width="36" height="36" alt="등록된 스토어 대표이미지 없음">
										<!----> <span class="label mg-right-sm storefarm" style="">마켓컬리티</span>1조
									</span><i class="fn-shopping fn-shopping-forward2 text-muted"
										aria-hidden="true"></i></a>
								</div>
							</div>
							<div class="panel-body pd-mo-reset"
								ng-class="{'has-pager-sm' : vm.isNotEmptyChannelList()}">
								<div class="border-list-wrap col-md-5 col-sm-5 col-xs-12">
									<ul class="panel-border-list" role="tablist"
										ng-class="{'has-pager-xs' : vm.isNotEmptyChannelList()}">
										<li ng-class="{'info-primary': vm.tab === '방문수'}"
											class="info-primary"><a role="button" class="info-title"
											ng-click="vm.tab = '방문수'; vm.showChart(vm.currentChart)"
											data-nclicks-code="status.visit">유입수 (어제 시간별)</a> <span
											class="number-area text-primary"
											ng-class="{'text-primary': vm.tab === '방문수'}">
												<!---->
												<a href="" class="text-number" ng-click="vm.tab = '방문수'"
												ng-if="vm.todayVisitCount >= 0">2</a>
											<!----> <!----> <span>회</span>
										</span></li>
										<li ng-class="{'info-primary': vm.tab === '스토어찜'}"><a
											role="button" class="info-title" ng-click="vm.tab = '스토어찜'"
											data-nclicks-code="status.keep">스토어찜 (어제 누적)</a> <span
											class="number-area"
											ng-class="{'text-primary': vm.tab === '스토어찜'}">
												<!---->
												<a href="" class="text-number" ng-click="vm.tab = '스토어찜'"
												ng-if="vm.subscriberCount >= 0">7</a>
											<!----> <!----> <span>건</span>
										</span></li>
										<li ng-class="{'info-primary': vm.tab === '소식알림'}"><a
											role="button" class="info-title" ng-click="vm.tab = '소식알림'"
											data-nclicks-code="status.talk">소식알림 (어제 누적)</a> <span
											class="number-area"
											ng-class="{'text-primary': vm.tab === '소식알림'}">
												<!---->
												<a href="" class="text-number" ng-click="vm.tab = '소식알림'"
												ng-if="vm.channelNewsCustomerCount >= 0">1</a>
											<!----> <!----> <span>명</span>
										</span></li>
									</ul>
									<!---->
								</div>
								<div
									class="border-list-wrap has-space col-md-7 col-sm-7 col-xs-12">
									<div id="chart-container-storeVisitorCount"
										ng-show="vm.tab === '방문수'"
										style="height: 127px; overflow: hidden;"
										ng-click="vm.moveInflowTimeStat()" class=""
										data-highcharts-chart="0">
										<div id="highcharts-agtc6gu-0" dir="ltr"
											class="highcharts-container "
											style="position: relative; overflow: hidden; width: 496px; height: 127px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
											<svg version="1.1" class="highcharts-root"
												style="font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
												xmlns="http://www.w3.org/2000/svg" width="496" height="127"
												viewBox="0 0 496 127">
												<desc>Created with Highcharts 7.1.1</desc>
												<defs>
												<clipPath id="highcharts-agtc6gu-1-">
												<rect x="0" y="0" width="454" height="80" fill="none"></rect></clipPath>
												<clipPath id="highcharts-agtc6gu-27-">
												<rect x="0" y="0" width="454" height="80" fill="none"></rect></clipPath></defs>
												<rect fill="#ffffff" class="highcharts-background" x="0"
													y="0" width="496" height="127" rx="0" ry="0"></rect>
												<rect fill="none" class="highcharts-plot-background" x="32"
													y="10" width="454" height="80"></rect>
												<g class="highcharts-grid highcharts-xaxis-grid"
													data-z-index="1">
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 40.5 10 L 40.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 78.5 10 L 78.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 116.5 10 L 116.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 154.5 10 L 154.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 192.5 10 L 192.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 230.5 10 L 230.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 267.5 10 L 267.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 305.5 10 L 305.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 343.5 10 L 343.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 381.5 10 L 381.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 419.5 10 L 419.5 90"
													opacity="1"></path>
												<path fill="none" data-z-index="1"
													class="highcharts-grid-line" d="M 457.5 10 L 457.5 90"
													opacity="1"></path></g>
												<g class="highcharts-grid highcharts-yaxis-grid"
													data-z-index="1">
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 90.5 L 486 90.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 50.5 L 486 50.5"
													opacity="1"></path>
												<path fill="none" stroke="#dfe5e7" stroke-width="1"
													stroke-dasharray="1,3" data-z-index="1"
													class="highcharts-grid-line" d="M 32 9.5 L 486 9.5"
													opacity="1"></path></g>
												<rect fill="none" class="highcharts-plot-border"
													data-z-index="1" x="32" y="10" width="454" height="80"></rect>
												<g class="highcharts-axis highcharts-xaxis" data-z-index="2">
												<path fill="none" class="highcharts-axis-line"
													stroke="#ccd6eb" stroke-width="1" data-z-index="7"
													d="M 32 90.5 L 486 90.5"></path></g>
												<g class="highcharts-axis highcharts-yaxis" data-z-index="2">
												<path fill="none" class="highcharts-axis-line"
													data-z-index="7" d="M 32 10 L 32 90"></path></g>
												<g class="highcharts-series-group" data-z-index="3">
												<g data-z-index="0.1"
													class="highcharts-series highcharts-series-0 highcharts-spline-series "
													transform="translate(32,10) scale(1 1)"
													clip-path="url(#highcharts-agtc6gu-27-)">
												<path fill="none"
													d="M 9.4583333333333 80 C 9.4583333333333 80 20.80833333333332 80 28.375 80 C 35.9416666666668 80 39.7250000000002 80 47.291666666667 80 C 54.85833333333339 80 58.64166666666661 80 66.208333333333 80 C 73.77499999999979 80 77.5583333333332 80 85.125 80 C 92.691666666668 80 96.475000000002 80 104.04166666667 80 C 111.608333333334 80 115.391666666666 80 122.95833333333 80 C 130.524999999998 80 134.308333333332 80 141.875 80 C 149.44166666666803 80 153.225000000002 80 160.79166666667 80 C 168.35833333333397 80 172.14166666666603 80 179.70833333333 80 C 187.274999999998 80 191.05833333333197 80 198.625 80 C 206.19166666666803 80 209.975000000002 40 217.54166666667 40 C 225.10833333333397 40 228.89166666666603 40 236.45833333333 40 C 244.024999999998 40 247.80833333333197 80 255.375 80 C 262.94166666666797 80 266.725000000002 80 274.29166666667 80 C 281.85833333333403 80 285.64166666666597 80 293.20833333333 80 C 300.774999999998 80 304.55833333333203 80 312.125 80 C 319.69166666666797 80 323.475000000002 80 331.04166666667 80 C 338.60833333333403 80 342.39166666666597 80 349.95833333333 80 C 357.524999999998 80 361.30833333333203 80 368.875 80 C 376.44166666666797 80 380.225000000002 80 387.79166666667 80 C 395.35833333333403 80 399.14166666666597 80 406.70833333333 80 C 414.274999999998 80 418.05833333333203 80 425.625 80 C 433.19166666666797 80 444.54166666667 80 444.54166666667 80"
													class="highcharts-graph" data-z-index="1" stroke="#40c65a"
													stroke-width="2" stroke-linejoin="round"
													stroke-linecap="round"></path>
												<path fill="none"
													d="M -0.5416666666666998 80 L 9.4583333333333 80 C 9.4583333333333 80 20.80833333333332 80 28.375 80 C 35.9416666666668 80 39.7250000000002 80 47.291666666667 80 C 54.85833333333339 80 58.64166666666661 80 66.208333333333 80 C 73.77499999999979 80 77.5583333333332 80 85.125 80 C 92.691666666668 80 96.475000000002 80 104.04166666667 80 C 111.608333333334 80 115.391666666666 80 122.95833333333 80 C 130.524999999998 80 134.308333333332 80 141.875 80 C 149.44166666666803 80 153.225000000002 80 160.79166666667 80 C 168.35833333333397 80 172.14166666666603 80 179.70833333333 80 C 187.274999999998 80 191.05833333333197 80 198.625 80 C 206.19166666666803 80 209.975000000002 40 217.54166666667 40 C 225.10833333333397 40 228.89166666666603 40 236.45833333333 40 C 244.024999999998 40 247.80833333333197 80 255.375 80 C 262.94166666666797 80 266.725000000002 80 274.29166666667 80 C 281.85833333333403 80 285.64166666666597 80 293.20833333333 80 C 300.774999999998 80 304.55833333333203 80 312.125 80 C 319.69166666666797 80 323.475000000002 80 331.04166666667 80 C 338.60833333333403 80 342.39166666666597 80 349.95833333333 80 C 357.524999999998 80 361.30833333333203 80 368.875 80 C 376.44166666666797 80 380.225000000002 80 387.79166666667 80 C 395.35833333333403 80 399.14166666666597 80 406.70833333333 80 C 414.274999999998 80 418.05833333333203 80 425.625 80 C 433.19166666666797 80 444.54166666667 80 444.54166666667 80 L 454.54166666667 80"
													visibility="visible" data-z-index="2"
													class="highcharts-tracker-line" stroke-linejoin="round"
													stroke="rgba(192,192,192,0.0001)" stroke-width="22"></path></g>
												<g data-z-index="0.1"
													class="highcharts-markers highcharts-series-0 highcharts-spline-series  highcharts-tracker"
													transform="translate(32,10) scale(1 1)">
												<path fill="#40c65a"
													d="M 9 84 A 4 4 0 1 1 9.003999999333336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 28 84 A 4 4 0 1 1 28.003999999333335 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 47 84 A 4 4 0 1 1 47.00399999933334 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 66 84 A 4 4 0 1 1 66.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 85 84 A 4 4 0 1 1 85.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 104 84 A 4 4 0 1 1 104.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 122 84 A 4 4 0 1 1 122.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 141 84 A 4 4 0 1 1 141.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 160 84 A 4 4 0 1 1 160.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 179 84 A 4 4 0 1 1 179.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 198 84 A 4 4 0 1 1 198.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 217 44 A 4 4 0 1 1 217.00399999933333 43.99999800000017 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 236 44 A 4 4 0 1 1 236.00399999933333 43.99999800000017 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 255 84 A 4 4 0 1 1 255.00399999933333 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 274 84 A 4 4 0 1 1 274.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 293 84 A 4 4 0 1 1 293.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 312 84 A 4 4 0 1 1 312.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 331 84 A 4 4 0 1 1 331.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 349 84 A 4 4 0 1 1 349.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 368 84 A 4 4 0 1 1 368.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 387 84 A 4 4 0 1 1 387.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 406 84 A 4 4 0 1 1 406.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 425 84 A 4 4 0 1 1 425.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path>
												<path fill="#40c65a"
													d="M 444 84 A 4 4 0 1 1 444.00399999933336 83.99999800000016 Z"
													opacity="1" class="highcharts-point"></path></g></g>
												<text x="248" text-anchor="middle" class="highcharts-title"
													data-z-index="4"
													style="color:#333333;font-size:18px;fill:#333333;" y="24"></text>
												<text x="248" text-anchor="middle"
													class="highcharts-subtitle" data-z-index="4"
													style="color:#666666;fill:#666666;" y="24"></text>
												<g class="highcharts-axis-labels highcharts-xaxis-labels"
													data-z-index="7">
												<text x="41.458333333333"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">0</text>
												<text x="79.291666666667"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">2</text>
												<text x="117.125"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">4</text>
												<text x="154.95833333333"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">6</text>
												<text x="192.79166666667"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">8</text>
												<text x="230.625"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">10</text>
												<text x="268.45833333333"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">12</text>
												<text x="306.29166666667"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">14</text>
												<text x="344.125"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">16</text>
												<text x="381.95833333333"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">18</text>
												<text x="419.79166666667"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">20</text>
												<text x="457.625"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="middle" transform="translate(0,0)" y="109"
													opacity="1">22</text></g>
												<g class="highcharts-axis-labels highcharts-yaxis-labels"
													data-z-index="7">
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="94"
													opacity="1">0</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="54"
													opacity="1">1</text>
												<text x="17"
													style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
													text-anchor="end" transform="translate(0,0)" y="14"
													opacity="1">2</text></g></svg>
										</div>
									</div>
									<!---->
									<!---->
									<!---->
								</div>
								<!---->
							</div>
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="review"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-11 order-xs-11">
						<div class="panel panel-dashboard panel-review">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">
										리뷰<span class="text-muted sub-text">최근 1주일 기준</span>
									</h3>
								</div>
								<div class="pull-right">
									<ncp-dashboard-refresh component-name="vm.componentName"
										refresh-interval="vm.refreshIntervalMinutes"
										on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
										nclicks-code="review.ref">
									<span class="text-muted sub-text">최근 17:32</span> <a href=""
										role="button" class="btn-refresh font-icon-button"
										ng-click="vm.refresh()" data-nclicks-code="review.ref"><i
										class="fn fn-refresh" aria-hidden="true"></i> <span
										class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
								</div>
							</div>
							<div class="panel-body pd-mo-reset">
								<div class="border-list-wrap col-md-5 col-sm-5 col-xs-12">
									<ul class="panel-border-list" role="tablist">
										<li ng-class="{'info-primary': vm.menu == 'new'}"
											aria-selected="true" class="info-primary"><a
											class="block clearfix" href="" role="button"
											ng-click="vm.selectMenu('new')"
											data-nclicks-code="review.new"><span class="info-title">새로
													작성된 리뷰</span> <span class="number-area"><em
													class="text-number">0</em><span>건</span></span></a></li>
										<li ng-class="{'info-primary': vm.menu == 'lowScoreReviews'}"
											aria-selected="false"><a class="block clearfix" href=""
											role="button" ng-click="vm.selectMenu('lowScoreReviews')"
											data-nclicks-code="review.low"><span class="info-title">평점
													낮은 리뷰</span> <span class="number-area"><em
													class="text-number">0</em><span>건</span></span></a></li>
										<li ng-class="{'info-primary': vm.menu == 'event'}"
											aria-selected="false"><a class="block clearfix" href=""
											role="button" ng-click="vm.selectMenu('event')"
											data-nclicks-code="review.event"><span class="info-title">리뷰
													이벤트</span> <span class="number-area"><em
													class="text-number">0</em><span>건</span></span></a></li>
									</ul>
								</div>
								<div
									class="border-list-wrap has-space col-md-7 col-sm-7 col-xs-12">
									<!---->
									<!---->
									<!---->
									<!---->
									<!---->
									<div class="list-inner" ng-if="vm.checkEmptyContents(vm.menu)">
										<div class="result-info mg-top-lg mg-bottom-lg">
											<i
												class="fn-shopping fn-65 fn-shopping-caution1 icon-color-big"
												aria-hidden="true"></i>
											<p class="text-sub">
												등록된
												<!---->
												<span ng-if="vm.menu === 'new'">리뷰</span>
												<!---->
												<!---->
												<!---->
												가 없습니다.
											</p>
										</div>
									</div>
									<!---->
								</div>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="seller-grade"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-12 order-xs-12">
						<div class="panel panel-dashboard panel-grade">
							<div class="panel-heading">
								<div class="pull-left">
									<h3 class="panel-title">판매자 등급</h3>
								</div>
								<div class="pull-right">
									<a href="https://partners.naver.com/startup/main"
										target="_blank" role="button" class="btn btn-default btn-xs"
										data-nclicks-code="grade.support">성장지원 프로그램 <i
										class="fn-shopping fn-shopping-forward2" aria-hidden="true"></i></a>
								</div>
							</div>
							<div class="panel-body pd-mo-reset">
								<div class="border-list-wrap col-md-6 col-sm-6 col-xs-12">
									<ul class="panel-border-list">
										<li><span class="info-title">이번달 등급 <a href=""
												role="button" class="font-icon-button"
												uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>판매건수, 판매금액, 굿서비스 달성 여부에 따라 이번 달 등급이 산정됩니다.</li><li>   판매건수, 판매금액은 <strong>최근 3개월 구매확정 기준 누적 데이터</strong>입니다. (부정거래, 직권취소 및 배송비 불포함)<br>   <a href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=4352&quot; target=&quot;_blank&quot; role=&quot;button&quot; class=&quot;btn-link text-primary&quot;>판매건수,
													판매금액 산정 기준 자세히 보기 <i class=&quot;fn-shopping
													fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i>
											</a></li>
										<li>산정된 이번 달 등급은 <strong>매월 2일 업데이트</strong>됩니다.
										</li>
									</ul>
									'" popover-trigger="'outsideClick'" popover-placement="bottom"
									data-nclicks-code="grade.monthtip"><i class="fn fn-info1"
										aria-hidden="true"></i><span class="sr-only">툴팁</span> </a></span><span
										class="number-area"
										ng-class="{'text-grade': vm.sellerGrade.gradeCode !== undefined &amp;&amp; vm.sellerGrade.gradeCode <= '03'}"><a
										href="#/seller/grade" data-nclicks-code="grade.month">씨앗</a></span>
									</li>
									<li><span class="info-title">굿 서비스 기준 <a href=""
											role="button" class="font-icon-button"
											uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li><strong>전월 1개월간 데이터</strong> 기준, <strong>매월 2일 업데이트</strong>됩니다.</li></ul>'"
											popover-trigger="'outsideClick'" popover-placement="bottom"
											data-nclicks-code="grade.goodtip"><i class="fn fn-info1"
												aria-hidden="true"></i><span class="sr-only">툴팁</span> </a></span>
									<!----> <!---->
										<span class="number-area"
										ng-if="!vm.sellerGrade.goodServiceYn"><a
											href="#/seller/grade" data-nclicks-code="grade.good">불충족</a></span>
									<!----></li>
									</ul>
								</div>
								<div class="border-list-wrap col-md-6 col-sm-6 col-xs-12">
									<ul class="panel-border-list">
										<li><span class="info-title">판매 페널티 <a href=""
												role="button" class="font-icon-button"
												uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>판매 페널티 점수 집계 기준은, <strong> 30일 전부터 어제까지</strong>입니다. (오늘 불포함)</li><li>판매 페널티 비율은 30일 전부터 어제까지의 &amp;apos;페널티 점수 / 결제 건수&amp;apos; 입니다.</li><li><a href=&quot;https://ips.smartstore.naver.com/main/rules/safety/credit&quot; target=&quot;_blank&quot; role=&quot;button&quot; class=&quot;btn-link text-primary&quot;>페널티
													부과 기준 자세히 보기 <i class=&quot;fn-shopping
													fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i>
											</a></li>
									</ul>
									'" popover-trigger="'outsideClick'" popover-placement="bottom"
									data-nclicks-code="grade.pentip"><i class="fn fn-info1"
										aria-hidden="true"></i><span class="sr-only">툴팁</span> </a></span><span
										class="number-area"><a href="" role="button"
										ng-click="vm.openPenaltyDetailModal()" class="text-number"
										data-nclicks-code="grade.pen">0</a><span>점 / </span><a href=""
										role="button" ng-click="vm.openPenaltyDetailModal()"
										class="text-number" data-nclicks-code="grade.pen">0</a><span>%</span></span>
									</li>
									<li><span class="info-title">제재 단계 <a href=""
											role="button" class="font-icon-button"
											uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>페널티 단계는 &quot;주의 / 경고 / 이용제한&quot; 의 3단계가 있습니다.</li><li>페널티 점수가 10점 이상이면서 페널티 비율이 40% 이상이면, 적발 횟수에 따라 판매 활동이 제한됩니다.</li></ul>'"
											popover-trigger="'outsideClick'" popover-placement="bottom"
											data-nclicks-code="grade.restrictip"><i
												class="fn fn-info1" aria-hidden="true"></i><span
												class="sr-only">툴팁</span> </a></span><span class="number-area"><a
											href="" role="button" ng-click="vm.openPenaltyDetailModal()"
											class="text-number"
											ng-class="'-' === vm.penalty.restraintStepString ? '' : 'text-danger'"
											data-nclicks-code="grade.restric" style="">-</a></span></li>
									<li><span class="info-title">지재권침해신고</span> <span
										class="number-area">
											<!---->
											<a ng-if="::vm.isDesktop" ui-sref="main.ips_seller_reports"
											class="text-number" ng-bind="vm.penalty.presumeTermCount"
											data-nclicks-code="grade.ip" href="#/ips/seller/reports">0</a>
										<!----> <!----> <span>건</span>
									</span></li>
									</ul>
								</div>
							</div>
							<!---->
						</div>
					</div>
					<!---->
					<div ui-view="" name="banner"
						class="panel-wrap flex-col-6 flex-col-md-12 order-md-13 order-xs-13">
						<div class="panel panel-dashboard panel-banner position-relative">
							<!---->
							<div class="text-center" ng-if="!vm.isLoading" style="">
								<ks-swiper-container swiper="vm.swiper" slides-per-view="1"
									autoplay="3000"
									loop="vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
									pagination-is-active="!vm.isMobile &amp;&amp; vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
									pagination-clickable="true">
								<div class="swiper-container swiper-container-horizontal">
									<div class="parallax-bg ng-hide" data-swiper-parallax=""
										ng-show="parallax"></div>
									<div class="swiper-wrapper " ng-transclude=""
										style="transform: translate3d(-2814px, 0px, 0px); transition-duration: 0ms;">
										<div
											class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
											ng-transclude="" ng-repeat="banner in vm.banners"
											data-swiper-slide-index="1" style="width: 938px;">
											<a
												ng-href="https://sell.smartstore.naver.com/#/center-notice/detail/100005783"
												target="_blank" class="block"
												data-nclicks-code="banner.cont"
												ng-style="::vm.isMobile ? {'background-color' : banner.mobileBannerBgColor} : {'background-color' : banner.bannerBgColor}"
												href="https://sell.smartstore.naver.com/#/center-notice/detail/100005783"
												style="background-color: rgb(250, 250, 250);"><img
												ng-src="/shop1.phinf.naver.net/20191224_133/15771815257141eA9G_JPEG/24541416889556430_1569608164.jpg"
												alt="네이버 쇼핑과 스마트스토어, 뭐가 다른지 모르시겠다고요?"
												src="/shop1.phinf.naver.net/20191224_133/15771815257141eA9G_JPEG/24541416889556430_1569608164.jpg"></a>
										</div>
										<!---->
										<div class="swiper-slide swiper-slide-duplicate-active"
											ng-transclude="" ng-repeat="banner in vm.banners"
											data-swiper-slide-index="0" style="width: 938px;">
											<a
												ng-href="https://sell.smartstore.naver.com/#/center-notice/detail/100006825"
												target="_blank" class="block"
												data-nclicks-code="banner.cont"
												ng-style="::vm.isMobile ? {'background-color' : banner.mobileBannerBgColor} : {'background-color' : banner.bannerBgColor}"
												href="https://sell.smartstore.naver.com/#/center-notice/detail/100006825"
												style="background-color: rgb(250, 250, 250);"><img
												ng-src="/shop1.phinf.naver.net/20200918_107/1600404241990hWA9T_PNG/123711494596314373_269656355.png"
												alt="[배너]네이버 스마트스토어센터 앱 라이브 기능 안내"
												src="/shop1.phinf.naver.net/20200918_107/1600404241990hWA9T_PNG/123711494596314373_269656355.png"></a>
										</div>
										<!---->
										<div
											class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
											ng-transclude="" ng-repeat="banner in vm.banners"
											data-swiper-slide-index="1" style="width: 938px;">
											<a
												ng-href="https://sell.smartstore.naver.com/#/center-notice/detail/100005783"
												target="_blank" class="block"
												data-nclicks-code="banner.cont"
												ng-style="::vm.isMobile ? {'background-color' : banner.mobileBannerBgColor} : {'background-color' : banner.bannerBgColor}"
												href="https://sell.smartstore.naver.com/#/center-notice/detail/100005783"
												style="background-color: rgb(250, 250, 250);"><img
												ng-src="/shop1.phinf.naver.net/20191224_133/15771815257141eA9G_JPEG/24541416889556430_1569608164.jpg"
												alt="네이버 쇼핑과 스마트스토어, 뭐가 다른지 모르시겠다고요?"
												src="/shop1.phinf.naver.net/20191224_133/15771815257141eA9G_JPEG/24541416889556430_1569608164.jpg"></a>
										</div>
										<!---->
										<div
											class="swiper-slide swiper-slide-duplicate swiper-slide-active"
											ng-transclude="" ng-repeat="banner in vm.banners"
											data-swiper-slide-index="0" style="width: 938px;">
											<a
												ng-href="https://sell.smartstore.naver.com/#/center-notice/detail/100006825"
												target="_blank" class="block"
												data-nclicks-code="banner.cont"
												ng-style="::vm.isMobile ? {'background-color' : banner.mobileBannerBgColor} : {'background-color' : banner.bannerBgColor}"
												href="https://sell.smartstore.naver.com/#/center-notice/detail/100006825"
												style="background-color: rgb(250, 250, 250);"><img
												ng-src="/shop1.phinf.naver.net/20200918_107/1600404241990hWA9T_PNG/123711494596314373_269656355.png"
												alt="[배너]네이버 스마트스토어센터 앱 라이브 기능 안내"
												src="/shop1.phinf.naver.net/20200918_107/1600404241990hWA9T_PNG/123711494596314373_269656355.png"></a>
										</div>
									</div>
									<div
										class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"
										id="paginator-df9e2a5e-44d3-4456-8f66-4e78c5451489">
										<span
											class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
											class="swiper-pagination-bullet"></span>
									</div>
									<div class="swiper-button-next ng-hide"
										ng-show="showNavButtons"
										id="nextButton-df9e2a5e-44d3-4456-8f66-4e78c5451489"></div>
									<div class="swiper-button-prev ng-hide"
										ng-show="showNavButtons"
										id="prevButton-df9e2a5e-44d3-4456-8f66-4e78c5451489"></div>
									<div class="swiper-scrollbar ng-hide" ng-show="showScrollBar"
										id="scrollBar-df9e2a5e-44d3-4456-8f66-4e78c5451489"></div>
								</div>
								</ks-swiper-container>
							</div>
							<!---->
							<!---->
							<a href=""
								class="seller-swiper swiper-button-next font-icon-button"
								role="button" ng-click="vm.slideNext()"
								ng-if="vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
								data-nclicks-code="banner.flicking" style=""><i
								class="fn fn-forward2 fn-24" aria-hidden="true"></i> <span
								class="sr-only">다음 컨텐츠 보기</span> </a>
							<!---->
							<!---->
							<a href=""
								class="seller-swiper swiper-button-prev font-icon-button"
								role="button" ng-click="vm.slidePrev()"
								ng-if="vm.banners !== undefined &amp;&amp; vm.banners.length > 1"
								data-nclicks-code="banner.flicking" style=""><i
								class="fn fn-backward2 fn-24" aria-hidden="true"></i> <span
								class="sr-only">이전 컨텐츠 보기</span></a>
							<!---->
							<!---->
						</div>
					</div>
					<!----><!---->
					<div ui-view="" name="quick-menu"
						class="panel-wrap flex-col-12 order-md-14 order-xs-14 quickmenu"
						ng-if="!vm.isMobile">
						<div class="panel panel-dashboard panel-add-info">
							<div class="panel-body">
								<ul class="panel-list">
									<li><a ui-sref="main.centernotice.list({tabIndex:7})"
										data-nclicks-code="edu.manual" href="#/center-notice/list/7"><span
											class="square-ico-area"><i
												class="inline-block sp-dashboard-download sp-dashboard-download-dims vertical-icon-middle"
												aria-hidden="true"></i> </span><span class="text">마켓컬리티&nbsp;<br
												class="hidden-lg">매뉴얼
										</span></a></li>
									<li><a ng-href="https://adcenter.shopping.naver.com/"
										target="_blank" data-nclicks-code="edu.adcenter"
										href="https://adcenter.shopping.naver.com/"><span
											class="square-ico-area"><i
												class="inline-block sp-dashboard-partner sp-dashboard-partner-dims vertical-icon-middle"
												aria-hidden="true"></i> </span><span class="text">쇼핑<br
												class="hidden-lg">파트너센터
										</span></a></li>
									<li><a ng-href="https://partner.talk.naver.com/accounts"
										target="_blank" data-nclicks-code="edu.talk"
										href="https://partner.talk.naver.com/accounts"><span
											class="square-ico-area"><i class="fn fn-talktalk-fill"
												aria-hidden="true"></i> </span><span class="text">톡톡&nbsp;<br
												class="hidden-lg">파트너센터
										</span></a></li>
									<li><a
										href="https://bizschool.naver.com/startup/education/schedule"
										target="_blank" data-nclicks-code="edu.dcom"><span
											class="square-ico-area"><i
												class="inline-block sp-dashboard-d-commerce sp-dashboard-d-commerce-dims vertical-icon-middle"
												aria-hidden="true"></i> </span><span class="text">D-커머스&nbsp;<br
												class="hidden-lg">프로그램
										</span></a></li>
									<li><a href="http://analytics.naver.com/" target="_blank"
										data-nclicks-code="edu.analytics"><span
											class="square-ico-area"><i
												class="inline-block sp-dashboard-analysis sp-dashboard-analysis-dims vertical-icon-middle"
												aria-hidden="true"></i> </span><span class="text">네이버&nbsp;<br
												class="hidden-lg">애널리틱스
										</span></a></li>
									<li><a
										href="https://campaign.naver.com/smefullcare/online/"
										target="_blank" data-nclicks-code="edu.sme"><span
											class="square-ico-area"><i
												class="inline-block sp-dashboard-sme sp-dashboard-sme-dims vertical-icon-middle"
												aria-hidden="true"></i> </span><span class="text">SME
												풀케어&nbsp;<br class="hidden-lg">시스템
										</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!---->
				</div>
			</div>
		</div>
	</ui-view>
	</div>
	</div>
	<!---->
	<div ng-include="'center/layout/include/footer.html.inc'">
		<!---->
		<footer class="seller-footer" role="contentinfo"
			ng-if="::!vm.isMobile">
			<div class="inner-footer">
				<ul class="provision">
					<li><a href="/#/terms/agreement" target="_blank">이용약관</a></li>
					<li><a
						href="https://pay.naver.com/provision?viewType=electronic"
						role="button" target="_blank" title="전자금융거래 이용약관">전자금융거래 이용약관</a></li>
					<li><a href="https://business.naver.com/privacy/privacy.html"
						target="_blank" title="새창"><strong>개인정보 처리방침</strong></a></li>
					<li><a href="https://policy.naver.com/policy/youthpolicy.html"
						target="_blank" title="새창">청소년 보호정책</a></li>
					<li><a href="javascript:void(0)" role="button"
						ng-click="vm.responsibilityPopup()" title="팝업">책임의 한계와 법적고지</a></li>
					<li><a
						href="https://ips.smartstore.naver.com/main/rules/safety"
						target="_blank" title="새창">안전거래가이드</a></li>
					<li><a
						href="https://help.sell.smartstore.naver.com/index.help"
						target="_blank">고객센터</a></li>
				</ul>
				<p class="dsc">
					네이버㈜는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게
					있습니다.<br>또한 판매자와 구매자간의 직거래에 대하여 당사는 관여하지 않기 때문에 거래에 대해서는 책임을
					지지 않습니다.
				</p>
				<ul class="provision">
					<li>사업자등록번호 : 220-81-62517</li>
					<li>통신판매업신고번호 : 제2006-경기성남-0692호</li>
					<li>대표이사 : 한성숙</li>
					<li><a
						href="https://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2006378010630200692&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=2208162517&amp;pageIndex=1"
						class="btn-box" target="_blank" title="새창">사업자정보확인</a></li>
				</ul>
				<ul class="provision">
					<li class="address">주소 : 경기도 성남시 분당구 불정로 6 네이버 그린팩토리 13561</li>
					<li><button type="button"
							ng-click="vm.openTelephoneSupportModal()" class="btn-box">전화상담
							(전화 전 클릭)</button></li>
					<li><a ng-href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"
						class="btn-box" target="_blank"
						href="https://talk.naver.com/ct/wcbgqj?frm=cstpn"><i
							class="fn fn-talktalk-fill text-primary" aria-hidden="true"></i>
							톡톡상담</a></li>
				</ul>
				<address>
					<p>
						<a href="https://www.navercorp.com/" class="logo" target="_blank"
							title="새창"><span class="sr-only">NAVER</span></a>
					</p>
					Copyright © <a href="https://www.navercorp.com/"
						class="copy-navercorp" target="_blank" title="새창"><strong>NAVER
							Corp.</strong></a> All rights reserved.
				</address>
			</div>
			<!---->
		</footer>
		<!---->
		<!---->
	</div>
	<div ncp-help="" show-help="vm.showHelp" class="show-help">
		<!---->
	</div>
	</div>
	</div>
	</ui-view>
	<!---->
	<ui-view name="work"></ui-view>

	<script type="text/javascript" src="./vendors.js?482d6a068543c975fb8c"></script>

	<script type="text/javascript" src="./app.js?482d6a068543c975fb8c"></script>

	<script type="text/javascript">
    window.onload = function() {
        var loading = document.getElementById("__initial_loading");
        loading.style.display = "none";
    }
</script>
	<script type="text/javascript">
    window.paceOptions = {
        restartOnRequestAfter: true,
        ajax: {
            trackWebSockets: false,
            ignoreURLs: ['socket.io', 'asyncdownload/health', '/sell/center/front-history/'],
            trackMethods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH']
        }
    }
</script>
	<script type="text/javascript" src="./pace.min.js"></script>

	<!--
<script type="text/javascript">
    $(document).ready(function() {
        $.when($.ajax("/api/context")).then(function(data) {
            angular.module("center").constant("userContext", data);
            angular.resumeBootstrap();
        });
    });
</script>
-->


</body>
</html>