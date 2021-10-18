<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta name="description"
	content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:title" content="마켓컬리 :: 내일의 장보기, 마켓컬리" />
<meta property="og:description"
	content="Love Food, Love Life. 마켓컬리! 당일 수확 채소, 과일, 맛집 음식까지 내일 아침 문 앞에서 만나요!" />
<meta property="og:image"
	content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url"
	content="https://www.kurly.com/shop/main/index.php?gclid=Cj0KCQjwwY-LBhD6ARIsACvT72PW2lDoAmgeqtNe2MpkjR2xdJg--fcJ-6eUm4CK62EkeH9da3EQXsEaAkuhEALw_wcB&utm_campaign=home&utm_medium=2110&utm_source=1055&utm_term=" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords"
	content="다이어트, 식단, 닭가슴살, 요리, 치아바타, 레시피, 요리, 상차림, 다이어트음식, 이유식, 건강이유식" />
<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script type="text/javascript">(window.NREUM||(NREUM={})).init={ajax:{deny_list:["bam.nr-data.net"]}};(window.NREUM||(NREUM={})).loader_config={licenseKey:"NRJS-5dec146893a58b07e31",applicationID:"602251426"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var i=e[n]={exports:{}};t[n][0].call(i.exports,function(e){var i=t[n][1][e];return r(i||e)},i,i.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(t,e,n){function r(){}function i(t,e,n){return function(){return o(t,[u.now()].concat(f(arguments)),e?null:this,n),e?void 0:this}}var o=t("handle"),a=t(8),f=t(9),c=t("ee").get("tracer"),u=t("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(t,e){s[e]=i(p+e,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(t,e){var n={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),t,n],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return e.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],n),t}finally{c.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){m[e]=i(l+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),o("err",[t,u.now(),!1,e])}},{}],2:[function(t,e,n){function r(t){if(NREUM.init){for(var e=NREUM.init,n=t.split("."),r=0;r<n.length-1;r++)if(e=e[n[r]],"object"!=typeof e)return;return e=e[n[n.length-1]]}}e.exports={getConfiguration:r}},{}],3:[function(t,e,n){function r(){return f.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,f=t(10);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=i},{}],4:[function(t,e,n){function r(t){return!(!t||!t.protocol||"file:"===t.protocol)}e.exports=r},{}],5:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function i(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof m&&!g){var e=Math.round(t.timeStamp),n={type:t.type};e<=p.now()?n.fid=p.now()-e:e>p.offset&&e<=Date.now()?(e-=p.offset,n.fid=p.now()-e):e=p.now(),g=!0,d("timing",["fi",e,n])}}function f(t){"hidden"===t&&d("pageHide",[p.now()])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var c,u,s,d=t("handle"),p=t("loader"),l=t(7),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){c=new PerformanceObserver(r);try{c.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,h=["click","keydown","mousedown","pointerdown","touchstart"];h.forEach(function(t){document.addEventListener(t,a,!1)})}l(f)}},{}],6:[function(t,e,n){function r(t,e){if(!i)return!1;if(t!==i)return!1;if(!e)return!0;if(!o)return!1;for(var n=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],7:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,e,!1)}e.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],8:[function(t,e,n){function r(t,e){var n=[],r="",o=0;for(r in t)i.call(t,r)&&(n[o]=e(r,t[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],9:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,i=n-e||0,o=Array(i<0?0:i);++r<i;)o[r]=t[e+r];return o}e.exports=r},{}],10:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function i(t){function e(t){return t&&t instanceof r?t:t?u(t,c,a):a()}function n(n,r,i,o,a){if(a!==!1&&(a=!0),!l.aborted||o){t&&a&&t(n,r,i);for(var f=e(i),c=v(n),u=c.length,s=0;s<u;s++)c[s].apply(f,r);var p=d[w[n]];return p&&p.push([b,n,r,f]),f}}function o(t,e){y[t]=v(t).concat(e)}function m(t,e){var n=y[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function v(t){return y[t]||[]}function g(t){return p[t]=p[t]||i(n)}function h(t,e){l.aborted||s(t,function(t,n){e=e||"feature",w[n]=e,e in d||(d[e]=[])})}var y={},w={},b={on:o,addEventListener:o,removeEventListener:m,emit:n,get:g,listeners:v,context:e,buffer:h,abort:f,aborted:!1};return b}function o(t){return u(t,c,a)}function a(){return new r}function f(){(d.api||d.feature)&&(l.aborted=!0,d=l.backlog={})}var c="nr@context",u=t("gos"),s=t(8),d={},p={},l=e.exports=i();e.exports.getOrSetContext=o,l.backlog=d},{}],gos:[function(t,e,n){function r(t,e,n){if(i.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return t[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){i.buffer([t],r),i.emit(t,e,n)}var i=t("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,o,function(){return i++})}var i=1,o="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!R++){var t=M.info=NREUM.info,e=v.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return u.abort();c(E,function(e,n){t[e]||(t[e]=n)});var n=a();f("mark",["onload",n+M.offset],null,"api"),f("timing",["load",n]);var r=v.createElement("script");0===t.agent.indexOf("http://")||0===t.agent.indexOf("https://")?r.src=t.agent:r.src=l+"://"+t.agent,e.parentNode.insertBefore(r,e)}}function i(){"complete"===v.readyState&&o()}function o(){f("mark",["domContent",a()+M.offset],null,"api")}var a=t(3),f=t("handle"),c=t(8),u=t("ee"),s=t(6),d=t(4),p=t(2),l=p.getConfiguration("ssl")===!1?"http":"https",m=window,v=m.document,g="addEventListener",h="attachEvent",y=m.XMLHttpRequest,w=y&&y.prototype,b=!d(m.location);NREUM.o={ST:setTimeout,SI:m.setImmediate,CT:clearTimeout,XHR:y,REQ:m.Request,EV:m.Event,PR:m.Promise,MO:m.MutationObserver};var x=""+location,E={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1210.min.js"},O=y&&w&&w[g]&&!/CriOS/.test(navigator.userAgent),M=e.exports={offset:a.getLastTimestamp(),now:a,origin:x,features:{},xhrWrappable:O,userAgent:s,disabled:b};if(!b){t(1),t(5),v[g]?(v[g]("DOMContentLoaded",o,!1),m[g]("load",r,!1)):(v[h]("onreadystatechange",i),m[h]("onload",r)),f("mark",["firstbyte",a.getLastTimestamp()],null,"api");var R=0}},{}],"wrap-function":[function(t,e,n){function r(t,e){function n(e,n,r,c,u){function nrWrapper(){var o,a,s,p;try{a=this,o=d(arguments),s="function"==typeof r?r(o,a):r||{}}catch(l){i([l,"",[o,a,c],s],t)}f(n+"start",[o,a,c],s,u);try{return p=e.apply(a,o)}catch(m){throw f(n+"err",[o,a,m],s,u),m}finally{f(n+"end",[o,a,p],s,u)}}return a(e)?e:(n||(n=""),nrWrapper[p]=e,o(e,nrWrapper,t),nrWrapper)}function r(t,e,r,i,o){r||(r="");var f,c,u,s="-"===r.charAt(0);for(u=0;u<e.length;u++)c=e[u],f=t[c],a(f)||(t[c]=n(f,s?c+r:r,i,c,o))}function f(n,r,o,a){if(!m||e){var f=m;m=!0;try{t.emit(n,r,o,e,a)}catch(c){i([c,n,r,o],t)}m=f}}return t||(t=s),n.inPlace=r,n.flag=p,n}function i(t,e){e||(e=s);try{e.emit("internal-error",t)}catch(n){}}function o(t,e,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(t);return r.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(o){i([o],n)}for(var a in t)l.call(t,a)&&(e[a]=t[a]);return e}function a(t){return!(t&&t instanceof Function&&t.apply&&!t[p])}function f(t,e){var n=e(t);return n[p]=t,o(t,n,s),n}function c(t,e,n){var r=t[e];t[e]=f(r,n)}function u(){for(var t=arguments.length,e=new Array(t),n=0;n<t;++n)e[n]=arguments[n];return e}var s=t("ee"),d=t(9),p="nr@original",l=Object.prototype.hasOwnProperty,m=!1;e.exports=r,e.exports.wrapFunction=f,e.exports.wrapInPlace=c,e.exports.argsToArray=u},{}]},{},["loader"]);</script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification"
	content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<meta name="facebook-domain-verification"
	content="tyur3wmoos7t63tpkb7zosur6p98m1" />

<link rel="shortcut icon"
	href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png"
	type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57"
	href="https://res.kurly.com/images/marketkurly/logo/ico_57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="https://res.kurly.com/images/marketkurly/logo/ico_60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="https://res.kurly.com/images/marketkurly/logo/ico_72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="https://res.kurly.com/images/marketkurly/logo/ico_76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="https://res.kurly.com/images/marketkurly/logo/ico_114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="https://res.kurly.com/images/marketkurly/logo/ico_120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="https://res.kurly.com/images/marketkurly/logo/ico_144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="https://res.kurly.com/images/marketkurly/logo/ico_152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="https://res.kurly.com/images/marketkurly/logo/ico_180.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="https://res.kurly.com/images/marketkurly/logo/ico_32.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="https://res.kurly.com/images/marketkurly/logo/ico_192.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="https://res.kurly.com/images/marketkurly/logo/ico_16.png">

<link rel="styleSheet" href="style/style.css">
<link rel="styleSheet" href="style/style2.css">
<link rel="styleSheet" href="style/style3.css">
<link rel="styleSheet" href="style/style4.css">
<link rel="styleSheet" href="style/brn_qnbStyle.css">
<link rel="styleSheet" href="style/ItemList/ItemListStyle.css">


<style>
.async-hide {
	opacity: 0 !important
}
</style>
<script src="jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var boffset = $("#gnb").offset();
		var foodoffset = $("#shellSubTitle").offset();
		$(window).scroll(function(){
			if($(document).scrollTop()>boffset.top){
				$("#gnb").addClass("navFixed");	
			}
			else{
				$("#gnb").removeClass("navFixed");	
			}
			if($(document).scrollTop()+$("#gnb").height()>foodoffset.top){
				$("#shellSubTitle").addClass("navFixed2");
			}
			else{
				$("#shellSubTitle").removeClass("navFixed2");
			}
		});
	});
</script>
<style>
.navFixed {
	position: fixed;
	top: 0px;
}

.navFixed2 {
	position: fixed;
	top: 90px;
}
</style>
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
					<!-- 여기에 넣기 -->
					<!-- 회원가입 상단 텍스트 -->
					<div class="tit_page">
						<h2 class="tit">회원가입</h2>
					</div>
					<!-- 회원가입 상단 텍스트 end -->
					<!-- 회원가입 내용 -->
					<div class="page_aticle">

						<script type="text/javascript"
							src="/asset/js/useKurly/libText.bundle.js"></script>
						<script src="/shop/data/skin/designgj/godo.password_strength.js"
							type="text/javascript"></script>
						<script src="/common_js/join_v1.js?ver=1.40.0"></script>
						<div class="type_form member_join ">
							<form id="form" name="frmMember" method="post"
								action="/shop/member/indb.php" onsubmit="return chkForm2(this)"
								novalidate="">
								<input type="hidden" name="mode" value="joinMember"> <input
									type="hidden" name="check_mobile" value=""> <input
									type="hidden" name="auth_finish_code" value=""> <input
									type="hidden" name="rncheck" value=""> <input
									type="hidden" name="dupeinfo" value=""> <input
									type="hidden" name="pakey" value=""> <input
									type="hidden" name="foreigner" value=""> <input
									type="hidden" name="passwordSkin" value="Y"> <input
									type="hidden" name="private2" value=""> <input
									type="hidden" name="private3" value=""> <input
									type="hidden" name="return_url" value="">
								<p class="page_sub">
									<span class="ico">*</span>필수입력사항
								</p>
								<table class="tbl_comm">
									<tbody>
										<tr class="fst">
											<th>아이디<span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td><input type="text" name="m_id" value=""
												maxlength="16" required="" fld_esssential="" option="regId"
												label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"> <input
												type="hidden" name="chk_id" required="" fld_esssential=""
												label="아이디중복체크" value=""> <a class="btn default"
												href="javascript:chkId()">중복확인</a>
												<p class="txt_guide square">
													<span class="txt txt_case1">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
													<span class="txt txt_case2">아이디 중복확인</span>
												</p></td>
										</tr>
										<tr>
											<th>비밀번호<span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td><input type="password" name="password" required=""
												fld_esssential="" option="regPass" label="비밀번호"
												maxlength="16" class="reg_pw" placeholder="비밀번호를 입력해주세요">
												<p class="txt_guide square">
													<span class="txt txt_case1">10자 이상 입력</span> <span
														class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개
														이상 조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속
														사용 불가</span>
												</p></td>
										</tr>
										<tr class="member_pwd">
											<th>비밀번호확인<span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td><input type="password" name="password2" required=""
												fld_esssential="" option="regPass" label="비밀번호"
												maxlength="16" class="confirm_pw"
												placeholder="비밀번호를 한번 더 입력해주세요">
												<p class="txt_guide square">
													<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
												</p></td>
										</tr>
										<tr>
											<th>이름<span class="ico">*<span class="screen_out">필수항목</span></span></th>
											<td><input type="text" name="name" value="" required=""
												fld_esssential="" label="이름" placeholder="이름을 입력해주세요">
											</td>
										</tr>
										<tr>
											<th>이메일<span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td><input type="text" name="email" value=""
												data-email="" size="30" required="" fld_esssential=""
												option="regEmail" label="이메일"
												placeholder="예: marketkurly@kurly.com"> <input
												type="hidden" name="chk_email" required="" fld_esssential=""
												label="이메일중복체크"> <a href="javascript:void(0)"
												onclick="chkEmail()" class="btn default">중복확인</a></td>
										</tr>
										<tr class="field_phone">
											<th>휴대폰<span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td>
												<div class="phone_num">
													<input type="text" value="" pattern="[0-9]*"
														name="mobileInp" placeholder="숫자만 입력해주세요" class="inp">
													<input type="hidden" name="mobile[]" id="mobile0" value=""
														required="" fld_esssential="" option="regNum" label="휴대폰">
													<input type="hidden" name="mobile[]" id="mobile1" value=""
														required="" fld_esssential="" option="regNum" label="휴대폰">
													<input type="hidden" name="mobile[]" id="mobile2" value=""
														required="" fld_esssential="" option="regNum" label="휴대폰">
													<button id="btn_cert" class="btn default disabled"
														type="button">인증번호 받기</button>
												</div>
												<div id="codeNum" class="code_num">
													<input type="text" name="auth_code" id="auth_code" value=""
														size="6" maxlength="6" pattern="[0-9]*" label="인증번호 확인"
														disabled="" class="inp_confirm"
														oninput="if(value.length>6)value=value.slice(0,6);$(this).val($(this).val().replace(/[^0-9]/g,''));">
													<button id="btn_cert_confirm" class="btn default disabled"
														type="button">인증번호 확인</button>
													<p id="countdown" class="count_down"></p>
												</div>
												<p class="txt_guide">
													<span class="txt txt_case1"></span>
												</p>
											</td>
										</tr>
										<tr>
											<th>주소<span class="ico">*<span class="screen_out">필수항목</span></span></th>
											<td class="field_address"><input type="hidden"
												name="zonecode" id="zonecode" size="5" value=""> <input
												type="hidden" name="zipcode[]" id="zipcode0" size="3"
												value=""> <input type="hidden" name="zipcode[]"
												id="zipcode1" size="3" value=""> <input
												type="hidden" name="deliPoli" id="deliPoli" size="1"
												value=""> <input type="hidden" id="baseAddressType"
												name="base_address_type" value="">
												<div id="selectAddress">
													<input type="text" name="addr" id="addr" value=""
														readonly="readonly" label="주소"> <input
														type="hidden" name="address" id="address" value=""
														required="" readonly="readonly" label="주소"> <input
														type="hidden" name="road_address" id="road_address"
														required="" value="" label="주소">
												</div> <a href="#none" id="addressSearch" class="search"
												onclick="popup('../proc/popup_address.php',530,500)"> <span
													id="addressNo" class="address_no" data-text="재검색">주소
														검색</span>
											</a>
												<div id="selectAddressSub">
													<input type="text" name="address_sub" id="address_sub"
														value="" class="byteTotext" placeholder="나머지 주소를 입력해주세요">
													<p id="delivery"></p>

												</div>
												<p class="txt_guide">
													<span class="txt txt_case1">배송지에 따라 상품 정보가 달라질 수
														있습니다.</span>
												</p></td>
										</tr>
										<tr class="select_sex">
											<th>성별</th>
											<td><label class=""> <input type="radio"
													name="sex" value="m"> <span class="ico"></span>남자
											</label> <label class=""> <input type="radio" name="sex"
													value="w"> <span class="ico"></span>여자
											</label> <label class="checked"> <input type="radio"
													name="sex" value="n" checked="checked"> <span
													class="ico"></span>선택안함
											</label></td>
										</tr>
										<tr class="birth field_birth">
											<th>생년월일</th>
											<td>
												<div class="birth_day">
													<input type="text" name="birth_year" id="birth_year"
														pattern="[0-9]*" value="" label="생년월일" size="4"
														maxlength="4" placeholder="YYYY"> <span
														class="bar"></span> <input type="text" name="birth[]"
														id="birth_month" pattern="[0-9]*" value="" label="생년월일"
														size="2" maxlength="2" placeholder="MM"> <span
														class="bar"></span> <input type="text" name="birth[]"
														id="birth_day" pattern="[0-9]*" value="" label="생년월일"
														size="2" maxlength="2" placeholder="DD">
												</div>
												<p class="txt_guide">
													<span class="txt bad"></span>
												</p>
											</td>
										</tr>
										<tr class="route" id="selectRecommend">
											<th>추가입력 사항</th>
											<td>
												<div class="group_radio">
													<span class="radio_wrapper"> <label> <input
															type="radio" name="recommend" id="recommendId"
															label="추천인아이디"> <span class="ico"></span>추천인 아이디
													</label>
													</span> <span class="radio_wrapper"> <label> <input
															type="radio" name="recommend" id="eventName"
															label="참여이벤트명"> <span class="ico"></span>참여 이벤트명
													</label>
													</span>
												</div>
												<div class="input_wrapper">
													<input type="text" name="recommid" value="" class="inp"
														placeholder="추천인 아이디를 입력해주세요.">
													<p class="txt_guide">
														추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다. <br> 가입 이후, 수정이
														불가합니다. <br> 대소문자 및 띄어쓰기에 유의해주세요.
													</p>
												</div>
											</td>
										</tr>
										<tr class="reg_agree">
											<th>이용약관동의 <span class="ico">*<span
													class="screen_out">필수항목</span></span></th>
											<td>
												<div class="bg_dim"></div>
												<div class="check">
													<label class="check_agree label_all_check label_block">
														<input type="checkbox" name="agree_allcheck"> <span
														class="ico"></span>전체 동의합니다.
													</label>
													<p class="sub">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수
														있습니다.</p>
												</div>
												<div class="check_view">
													<label class="check_agree label_block"> <input
														type="checkbox" value="" name="agree" required=""
														label="이용약관"> <span class="ico"></span>이용약관 동의 <span
														class="sub">(필수)</span>
													</label> <a href="#none" class="link btn_link btn_agreement">약관보기
													</a>
												</div>


												<div class="layer layer_agreement">
													<div class="inner_layer">
														<h4 class="tit_layer">
															이용약관 <span class="sub">(필수)</span>
														</h4>
														<div id="serviceView" class="box_tbl">
															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">총칙</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--1조-->
																		제1조(목적)<br> 이 약관은 주식회사 컬리 회사(전자상거래 사업자)가 운영하는
																		인터넷사이트 마켓컬리(이하 "컬리"라 한다)에서 제공하는 전자상거래 관련 서비스(이하 "서비스"라
																		한다)를 이용함에 있어 컬리와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.<br>
																		*PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한
																		준용합니다. <br>
																		<br>

																		<!--2조-->
																		제2조(정의)<br> ① "컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을
																		이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한
																		가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의 의미로도 사용합니다.<br>
																		② "이용자"란 "컬리"에 접속하여 이 약관에 따라 "컬리"가 제공하는 서비스를 받는 회원 및
																		비회원을 말합니다.<br> ③ ‘회원’이라 함은 "컬리"에 회원등록을 한 자로서,
																		계속적으로 "컬리"가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br> ④
																		‘비회원’이라 함은 회원에 가입하지 않고 "컬리"가 제공하는 서비스를 이용하는 자를 말합니다.<br>
																		⑤ "휴면회원"이라 함은 "컬리"의 ‘회원’중 1년 이상 서비스 이용 기록이 없는 자를 말합니다.
																		휴면 회원은 "컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기
																		위하여는 거래 안전 등을 위하여 "컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 ‘회원’의
																		서비스를 이용할 수 있습니다.<br> <br>

																		<!--3조-->
																		제3조 (약관 등의 명시와 설명 및 개정) <br> ① "컬리"는 이 약관의 내용과 상호
																		및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
																		전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을
																		이용자가 쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은
																		이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br> ② "컬리"는 이용자가
																		약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과 같은 중요한
																		내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을
																		구하여야 합니다.<br> ③ "컬리"는「전자상거래 등에서의 소비자보호에 관한 법률」,
																		「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」,
																		「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는
																		범위에서 이 약관을 개정할 수 있습니다.<br> ④ "컬리"가 약관을 개정할 경우에는
																		적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터
																		적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한
																		30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "컬리"는 개정 전 내용과 개정 후
																		내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br> ⑤ "컬리"가 약관을
																		개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미
																		체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가
																		개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "컬리"에
																		송신하여 "컬리"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br> ⑥ 이
																		약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한
																		법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침
																		및 관계법령 또는 상관례에 따릅니다.
																	</div>
																</div>
															</div>

															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">회사의 서비스</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--4조-->
																		제4조(서비스의 제공 및 변경)<br> ① "컬리"는 다음과 같은 업무를 수행합니다.<br>
																		1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br> 2. 구매계약이 체결된
																		재화 또는 용역의 배송<br> 3. 기타 "컬리"가 정하는 업무<br> ②
																		"컬리"는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에
																		의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의
																		내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br>
																		③ "컬리"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의
																		변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br>
																		④ 전항의 경우 "컬리"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "컬리"가 고의
																		또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br> <br>

																		<!--5조-->
																		제5조(서비스의 중단)<br> ① "컬리"는 컴퓨터 등 정보통신설비의 보수점검/교체 및
																		고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br>
																		② "컬리"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가
																		입은 손해에 대하여 배상합니다. 단, "컬리"가 고의 또는 과실이 없음을 입증하는 경우에는
																		그러하지 아니합니다.<br> ③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의
																		이유로 서비스를 제공할 수 없게 되는 경우에는 "컬리"는 제8조에 정한 방법으로 이용자에게
																		통지하고 당초 "컬리"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "컬리"가 보상기준
																		등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "컬리"에서 통용되는
																		통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.
																	</div>
																</div>
															</div>

															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">회원가입 계약</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--6조-->
																		제6조(회원가입) <br> ① 이용자는 "컬리"가 정한 가입 양식에 따라 회원정보를
																		기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br> ②
																		"컬리"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한
																		회원으로 등록합니다.<br> 1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에
																		회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한
																		자로서 "컬리"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br> 2. 등록 내용에
																		허위, 기재누락, 오기가 있는 경우<br> 3. 기타 회원으로 등록하는 것이 "컬리"의
																		기술상 현저히 지장이 있다고 판단되는 경우<br> 4. 회원가입 및 전자상거래상의 계약에
																		관한 서비스는 만 14세 이상인자에 한함<br> ③ 회원가입계약의 성립 시기는 "컬리"의
																		승낙이 회원에게 도달한 시점으로 합니다.<br> ④ 회원은 회원가입 시 등록한 사항에
																		변경이 있는 경우, 상당한 기간 이내에 "컬리"에 대하여 회원정보 수정 등의 방법으로 그
																		변경사항을 알려야 합니다.<br> <br>

																		<!--7조-->
																		제7조(회원 탈퇴 및 자격 상실 등) <br> ① 회원은 "컬리"에 언제든지 탈퇴를
																		요청할 수 있으며 "컬리"는 회원의 요청을 받았을 경우 사이트를 통하여 "컬리"가 고지한 방법에
																		따라 신속하게 회원탈퇴를 처리합니다<br> ② 회원이 다음 각 호의 사유에 해당하는
																		경우, "컬리"는 회원자격을 제한 및 정지시킬 수 있습니다.<br> 1. 가입 신청 시에
																		타인의 정보 또는 허위의 정보를 입력하거나 가입 내용에 정보의 누락, 오기가 있는 경우<br>
																		2. "컬리"를 이용하여 구입한 재화 등의 대금, 기타 "컬리"이용에 관련하여 회원이 부담하는
																		채무를 기일에 지급하지 않는 경우<br> 3. 다른 사람의 "컬리" 이용을 방해하거나 그
																		정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br> 4. "컬리"를 이용하여 법령
																		또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br> 5. 기타 다음과
																		같은 행위 등으로 "컬리"의 건전한 운영을 해하거나 "컬리"의 업무를 방해하는 경우<br>
																		가. "컬리"의 운영과 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 "컬리"의
																		명예를 실추시키거나 "컬리"의 신뢰성을 해하는 경우<br> 나. "컬리"의 이용과정에서
																		직원에게 폭언, 협박 또는 음란한 언행, 이에 준하는 행동 등으로 "컬리"의 운영을 방해하는 경우<br>
																		다. "컬리"를 통하여 재화 등을 구매한 후 정당한 이유 없이 상습 또는 반복적으로 취소·반품하여
																		"컬리"의 업무를 방해하는 경우<br> 라. "컬리"를 통해 구입한 상품 또는 용역에
																		특별한 하자가 없는데도 불구하고 일부 사용 후 상습적인 취소·전부 또는 일부 반품, 이의 제기
																		등으로 회사의 업무를 방해하는 경우<br> 마. "컬리"가 본인 확인 절차를 실시할 경우
																		본인 확인이 되지 않거나 본인이 아님이 확인된 경우<br> 바. 이미 가입된 "컬리"의
																		회원의 개인정보(이름, 전화번호, 주소 등)와 동일한 경우<br> 사. 부정한 용도 또는
																		영리를 추구할 목적으로 서비스를 이용하는 경우<br> 아. 동일/유사한 아이디,
																		전화번호, 주소 등의 회원정보를 통하여 부정한 사용을 하는 것으로 의심되는 경우<br>
																		자. "컬리"로부터 서비스 제한, 회원 자격 정지 조치 등을 받은 회원이 그 조치기간 중에
																		이용계약을 임의해지하고 재이용신청을 하는 경우<br> 차. 무단으로 "컬리"의 재화,
																		용역, 정보를 수집하거나 외부에 제출, 게시, 이용하여 "컬리"의 저작권, 상표권 등 지식재산권을
																		침해하는 경우<br> 카. 이름, 주소, 전화번호 등 회원정보를 종합하여 실질적으로
																		동일인으로 인정되는 기존 회원이 다른 ID로 회원가입 또는 중복가입한 경우<br> ③
																		회원이 제2항에 해당하는 경우, "컬리"는 회원에게 제공한 혜택(적립금, 쿠폰 등)을 회수하거나
																		서비스 이용 제한(배송 취소 등)의 조치를 취할 수 있습니다.<br> ④ 재판매 목적
																		등으로 "컬리"에서 재화 등을 중복 구매하는 등 "컬리"의 거래질서를 방해하는 경우 "컬리"는
																		당해 회원의 회원자격을 상실시킬 수 있습니다.<br> ⑤ "컬리"가 회원 자격을
																		제한/정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지
																		아니하는 경우 "컬리"는 회원자격을 상실시킬 수 있습니다.<br> ⑥ "컬리"가
																		회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록
																		말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br> <br>

																		<!--8조-->
																		제8조(회원에 대한 통지)<br> ① "컬리"가 회원에 대한 통지를 하는 경우, 회원이
																		"컬리"와 미리 약정하여 지정한 전자우편(또는 우편), 문자, 전화, 팩스 등의 방법으로 할 수
																		있습니다.<br> ② "컬리"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "컬리"
																		게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한
																		영향을 미치는 사항에 대하여는 개별통지를 합니다.
																	</div>
																</div>
															</div>

															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">구매계약 및 대금 결제</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--9조-->
																		제9조(구매신청) <br> ① "컬리"이용자는 "컬리"상에서 다음 또는 이와 유사한
																		방법에 의하여 구매를 신청하며, "컬리"는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기
																		쉽게 제공하여야 합니다.<br> 1. 재화 등의 검색 및 선택<br> 2. 받는
																		사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br> 3.
																		약관내용, 청약철회권이 제한되는 서비스, 배송료 등의 비용부담과 관련한 내용에 대한 확인<br>
																		4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>
																		5. 재화등의 구매신청 및 이에 관한 확인 또는 "컬리"의 확인에 대한 동의<br> 6.
																		결제방법의 선택<br> ② "컬리"가 제3자에게 구매자 개인정보를 제공/위탁할 필요가
																		있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를
																		받지 않습니다. 이 때 "컬리"는 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보
																		이용 목적 및 보유/이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「개인정보보호법」
																		제26조에 의한 업무위탁에 따른 개인정보의 처리 제한 등 관련 법령에 달리 정함이 있는 경우에는
																		그에 따릅니다.<br> <br>

																		<!--10조-->
																		제10조 (계약의 성립)<br> ① "컬리"는 제9조와 같은 구매신청에 대하여 다음 각
																		호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의
																		동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야
																		합니다.<br> 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br>
																		2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br>
																		3. 기타 구매신청에 승낙하는 것이 "컬리" 기술상 현저히 지장이 있다고 판단하는 경우<br>
																		4. 구매신청 고객이 제7조에 따른 회원 자격이 제한·정지 또는 상실된 회원으로 확인되었을 경우<br>
																		② "컬리"의 승낙이 제14조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한
																		것으로 봅니다.<br> ③ "컬리"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인
																		및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.<br>
																		<br>

																		<!--11조-->
																		제11조(지급방법)<br> "컬리"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음
																		각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, "컬리"는 이용자의 지급방법에 대하여 재화
																		등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br> ① 폰뱅킹,
																		인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br> ② 선불카드, 직불카드, 신용카드 등의
																		각종 카드 결제<br> ③ 온라인무통장입금<br> ④ 전자화폐에 의한 결제<br>
																		⑤ 수령 시 대금지급<br> ⑥ 마일리지 등 "컬리"가 지급한 적립금에 의한 결제<br>
																		⑦ "컬리"와 계약을 맺었거나 "컬리"가 인정한 상품권에 의한 결제<br> ⑧ 기타
																		전자적 지급 방법에 의한 대금 지급 등<br> <br>

																		<!--12조-->
																		제12조(적립금)<br> ① "컬리"는 회원의 구매활동, 이벤트 참여 등에 따라 회원에게
																		일정한 적립금을 부여할 수 있습니다.<br> ② 회원은 적립금을 "컬리"에서 상품 등의
																		구매 시 결제 수단으로 사용할 수 있으며, "컬리"는 적립금의 적립기준, 사용방법, 사용기간 및
																		제한에 대한 사항을 사이트에 별도로 게시하거나 통지합니다. 적립금의 사용조건에 관한 사항은
																		"컬리"의 정책에 따라 달라질 수 있습니다.<br> ③ 적립금은 현금으로 환급될 수
																		없습니다.<br> ④ 회원은 적립금을 제3자에게 또는 다른 아이디로 양도할 수 없으며,
																		유상으로 거래하거나 현금으로 전환할 수 없습니다.<br> ⑤ "컬리"는 회원이 "컬리"가
																		승인하지 않은 방법 또는 허위 정보 제공 등의 부정한 방법으로 적립금을 획득하거나 부정한 목적이나
																		용도로 적립금을 사용하는 경우 적립금의 사용을 제한하거나 적립금을 사용한 구매신청을 취소하거나
																		회원 자격을 정지할 수 있습니다.<br> ⑥ 회원 탈퇴시 미사용한 적립금은 즉시
																		소멸되며, 탈퇴 후 재가입하더라도 소멸된 적립금은 복구되지 아니합니다.<br> ⑦ 회원이
																		구매 또는 이벤트 등으로 받은 적립금을 사용한 후 해당 적립 원인이 취소(반품)되는 경우 이를
																		"컬리"에 반환하여야 하며 적립금 잔여분이 있는 경우 자동으로 차감 되거나 또는 적립되는 즉시
																		해당 적립금이 충족 될 때까지 자동으로 차감됩니다.<br> ⑧ 적립금의 유효기간은 고지된
																		바에 따라 특정되며, 유효기간 내에 사용되지 않은 적립금은 해당 유효기간 만료 시 즉시
																		소멸됩니다.<br> ⑨ "컬리"의 적립금 정책은 제2조의 모든 ‘회원’에게 동일하게
																		적용됩니다. 단, 휴면회원의 경우 관계법령에 따라 고지, 처리 등이 제한 될 수 있습니다.<br>
																		<br>

																		<!--13조-->
																		제13조(할인쿠폰)<br> ① 할인쿠폰은 회원에게 무상으로 발행되는 것으로 "컬리"는
																		회원이 할인쿠폰을 사이트에서 상품 구매 시 적용할 수 있도록 그 사용대상, 사용방법, 사용기간,
																		구매가 할인액 등을 정할 수 있습니다. 할인쿠폰의 종류 또는 내용은 "컬리"의 정책에 따라 달라질
																		수 있습니다.<br> ② "컬리"는 할인쿠폰의 사용대상, 사용방법, 사용기간, 할인금액
																		등을 사이트에 별도로 표시하거나 통지합니다.<br> ③ 할인쿠폰은 현금으로 환급될 수
																		없으며, 할인쿠폰의 사용기간이 만료되거나 구매 취소 시 또는 이용계약이 종료되면 소멸됩니다.<br>
																		④ 회원은 할인쿠폰을 제3자에게 또는 다른 아이디로 양도할 수 없으며, 유상으로 거래하거나
																		현금으로 전환할 수 없습니다.<br> ⑤ "컬리"는 회원이 "컬리"가 승인하지 않은
																		방법으로 할인쿠폰을 획득하거나 부정한 목적이나 용도로 할인쿠폰을 사용하는 경우 할인쿠폰의 사용을
																		제한하거나 할인쿠폰을 사용한 구매신청을 취소하거나 회원 자격을 정지할 수 있습니다.<br>
																		⑥ 회원 탈퇴 시 "컬리"로부터 발급받은 할인쿠폰 중 미사용한 할인쿠폰은 즉시 소멸되며, 탈퇴 후
																		재가입하더라도 소멸된 할인쿠폰은 복구되지 아니합니다.<br> <br>

																		<!--14조-->
																		제14조(수신확인통지/구매신청 변경 및 취소)<br> ① "컬리"는 이용자의 구매신청이
																		있는 경우 이용자에게 수신확인통지를 합니다.<br> ② 수신확인통지를 받은 이용자는
																		의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할
																		수 있고 "컬리"는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야
																		합니다. 다만 이미 대금을 지불한 경우에는 제17조의 청약철회 등에 관한 규정에 따릅니다.<br>
																		<br>

																		<!--15조-->
																		제15조(재화 등의 공급)<br> ① "컬리"는 이용자와 재화 등의 공급시기에 관하여
																		별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록
																		주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "컬리"가 이미 재화 등의 대금의 전부
																		또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다.
																		이때 "컬리"는 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를
																		합니다.<br> ② "컬리"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용
																		부담자, 수단별 배송기간 등을 명시합니다. 만약 "컬리"가 약정 배송기간을 초과한 경우에는 그로
																		인한 이용자의 손해를 배상하여야 합니다. 다만 "컬리"가 고의/과실이 없음을 입증한 경우에는
																		그러하지 아니합니다.<br> <br>

																		<!--16조-->
																		제16조(환급)<br> "컬리"는 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도
																		또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을
																		받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.<br>
																		<br>

																		<!--17조-->
																		제17조(청약철회 등)<br> ① "컬리"와 재화등의 구매에 관한 계약을 체결한 이용자는
																		「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은
																		날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화
																		등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만,
																		청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동
																		법 규정에 따릅니다.<br> ② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에
																		해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br> 1. 이용자에게 책임 있는
																		사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을
																		훼손한 경우에는 청약철회를 할 수 있습니다)<br> 2. 이용자의 사용 또는 일부 소비에
																		의하여 재화 등의 가치가 현저히 감소한 경우<br> 3. 시간의 경과에 의하여 재판매가
																		곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br> 4. 같은 성능을 지닌 재화
																		등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br> ③
																		제2항제2호 내지 제4호의 경우에 "컬리"가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게
																		알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이
																		제한되지 않습니다.<br> ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의
																		내용이 표시/광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터
																		3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수
																		있습니다.<br> <br>

																		<!--18조-->
																		제18조(청약철회 등의 효과)<br> ① "컬리"는 이용자로부터 재화 등을 반환받은 경우
																		3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 "컬리"가 이용자에게
																		재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률
																		시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br>
																		② "컬리"는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화
																		등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의
																		청구를 정지 또는 취소하도록 요청합니다.<br> ③ 청약철회 등의 경우 공급받은 재화
																		등의 반환에 필요한 비용은 이용자가 부담합니다. "컬리"는 이용자에게 청약철회 등을 이유로 위약금
																		또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시/광고 내용과 다르거나 계약내용과
																		다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "컬리"가 부담합니다.<br>
																		④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 "컬리"는 청약철회 시 그 비용을 누가
																		부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.
																	</div>
																</div>
															</div>

															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">계약 당사자의 의무</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--19조-->
																		제19조(개인정보보호)<br> ① "컬리"는 이용자의 개인정보 수집시 서비스제공을 위하여
																		필요한 범위에서 최소한의 개인정보를 수집합니다.<br> ② "컬리"는 회원가입시
																		구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여
																		구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지
																		아니합니다.<br> ③ "컬리"는 이용자의 개인정보를 수집/이용하는 때에는 당해
																		이용자에게 그 목적을 고지하고 동의를 받습니다.<br> ④ "컬리"는 수집된 개인정보를
																		목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는
																		경우에는 이용/제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련
																		법령에 달리 정함이 있는 경우에는 예외로 합니다.<br> ⑤ "컬리"가 제2항과 제3항에
																		의해 이용자의 동의를 받아야 하는 경우에는 개인정보 보호책임자의 신원(소속, 성명 및 전화번호,
																		기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자,
																		제공목적 및 제공할 정보의 내용) 등 「개인정보보호법」 제39조의3이 규정한 사항을 미리
																		명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br> ⑥
																		이용자는 언제든지 "컬리"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수
																		있으며 "컬리"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을
																		요구한 경우에는 "컬리"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br>
																		⑦ "컬리"는 개인정보 보호를 위하여 이용자의 개인정보를 취급하는 자를 최소한으로 제한하여야 하며
																		신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공,
																		변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br> ⑧ "컬리" 또는
																		그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해
																		개인정보를 지체 없이 파기합니다.<br> ⑨ "컬리"는 개인정보의 수집/이용/제공에 관한
																		동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집/이용/제공에 관한 이용자의
																		동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집/이용/제공에
																		관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.<br>
																		<br>

																		<!--20조-->
																		제20조("컬리"의 의무)<br> ① "컬리"는 법령과 이 약관이 금지하거나 공서양속에
																		반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화/용역을
																		제공하는데 최선을 다하여야 합니다.<br> ② "컬리"는 이용자가 안전하게 인터넷
																		서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야
																		합니다.<br> ③ "컬리"가 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」
																		제3조 소정의 부당한 표시/광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을
																		집니다.<br> ④ "컬리"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지
																		않습니다.<br> <br>

																		<!--21조-->
																		제21조(회원의 ID 및 비밀번호에 대한 의무)<br> ① 제19조의 경우를 제외한
																		ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br> ② 회원은 자신의 ID 및
																		비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의 ID 및
																		비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "컬리"에 통보하고
																		"컬리"의 안내가 있는 경우에는 그에 따라야 합니다.
																	</div>
																</div>
															</div>

															<div class="box_type">
																<h3 class="box_tit">
																	<a class="btn_view" href="#none">기타</a>
																</h3>
																<div class="box_view">
																	<div class="txt_view">
																		<!--22조-->
																		제22조(이용자의 의무)<br> 이용자는 다음 행위를 하여서는 안 됩니다.<br>
																		1. 신청 또는 변경시 허위 내용의 등록<br> 2. 타인의 정보 도용<br>
																		3. "컬리"에 게시된 정보의 변경<br> 4. "컬리"가 정한 정보 이외의 정보(컴퓨터
																		프로그램 등) 등의 송신 또는 게시<br> 5. "컬리" 기타 제3자의 저작권 등
																		지식재산권에 대한 침해<br> 6. "컬리" 기타 제3자의 명예를 손상시키거나 업무를
																		방해하는 행위<br> 7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에
																		반하는 정보를 몰에 공개 또는 게시하는 행위<br> <br>

																		<!--23조-->
																		제23조(지식재산권의 귀속 및 이용제한)<br> ① "컬리"가 작성한 저작물에 대한
																		저작권 기타 지식재산권은 "컬리"에 귀속합니다.<br> ② 이용자는 "컬리"를
																		이용함으로써 얻은 정보 중 "컬리"에게 지식재산권이 귀속된 정보를 "컬리"의 사전 승낙 없이
																		복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게
																		하여서는 안됩니다.<br> ③ "컬리"는 약정에 따라 이용자에게 귀속된 지식재산권을
																		사용하는 경우 당해 이용자에게 통보하여야 합니다.<br> <br>

																		<!--24조-->
																		제24조(면책조항)<br> ① "컬리"는 천재지변 또는 이에 준하는 불가항력으로 인하여
																		서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br> ②
																		"컬리"는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.<br>
																		③ "컬리"는 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며,
																		그 밖의 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br>
																		④ "컬리"는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지
																		않습니다.<br> ⑤ "컬리"는 회원 간 또는 회원과 제3자 상호간에 서비스를 매개로
																		하여 거래 등을 한 경우에는 책임을 지지 않습니다.<br> <br>

																		<!--25조-->
																		제25조(분쟁해결)<br> ① "컬리"는 이용자가 제기하는 정당한 의견이나 불만을
																		반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치/운영합니다.<br> ②
																		"컬리"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만,
																		신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br>
																		③ "컬리"와 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는
																		공정거래위원회 또는 시/도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br>
																		<br>

																		<!--26조-->
																		제26조(재판권 및 준거법)<br> ① "컬리"와 이용자 간에 발생한 전자상거래 분쟁에
																		관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의
																		전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의
																		경우에는 민사소송법상의 관할법원에 제기합니다.<br> ② "컬리"와 이용자 간에 제기된
																		전자상거래 소송에는 한국법을 적용합니다.<br> <br>

																		<!--부칙-->
																		* 부칙<br> 1. 이 약관은 2021년 06월 22일부터 시행됩니다.<br>
																		2. 2020년 3월 11일부터 시행되던 종전의 약관은 이 약관으로 대체됩니다.
																	</div>
																</div>
															</div>
														</div>
														<script>
                var serviceView = new Vue({
                  el: '#serviceView',
                  data: {
                    pageUrl : campaginUrl + 'pc/service/agreement.html',
                    storagetObj : null,
                    eventStart : false, // 딱 한번만실행
                  },
                  methods: {
                    update:function(){
                      var $self = this;
                      $.ajax({
                        url : $self.pageUrl
                      }).done(function(result){
                        $('#serviceView').html(result);
                        $self.storagetObj = JSON.parse(sessionStorage.getItem("agreement"));
                        if(!$self.eventStart){
                          $self.eventStart = true;
                          $self.pageUrl = campaginUrl + 'pc/service/' + $self.storagetObj[$self.storagetObj.length-1].name + '.html'
                          $self.update();
                        }
                      });
                    }
                  }
                });
                serviceView.update();
              </script>
														<button type="button" class="btn_ok">확인</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
												</div>

												<div class="check_view">
													<label class="check_agree label_block"> <input
														type="checkbox" id="private1" name="private1" value=""
														required="" label="개인정보 수집·이용"> <span class="ico"></span>개인정보
														수집·이용 동의 <span class="sub">(필수)</span>
													</label> <a href="#none" class="link btn_link btn_essential">약관보기
													</a>
												</div>

												<div class="layer layer_essential">
													<div class="inner_layer">
														<div class="in_layer">
															<h4 class="tit_layer">
																개인정보 수집·이용 동의 <span class="sub">(필수)</span>
															</h4>
															<div class="box_tbl">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<caption class="screen_out">개인정보 수집·이용 동의
																		(필수)</caption>
																	<thead>
																		<tr>
																			<th scope="row" class="tit1">수집 목적</th>
																			<th scope="row" class="tit2">수집 항목</th>
																			<th scope="row" class="tit3">보유 기간</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>이용자 식별 및 본인여부</td>
																			<td rowspan="4">이름, 아이디, 비밀번호, 휴대폰번호, 이메일, 주소</td>
																			<td rowspan="4" class="emph">회원 탈퇴 <br>즉시
																				파기 <br>
																			<br>부정이용 방지를 위하여 30일 동안 보관 (아이디, 휴대폰 번호) 후 파기
																			</td>
																		</tr>
																		<tr>
																			<td>거점 기반 서비스 제공</td>
																		</tr>
																		<tr>
																			<td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의
																				고객 고충 처리</td>
																		</tr>
																		<tr>
																			<td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td>
																		</tr>
																		<tr>
																			<td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
																			<td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자,
																				OS/ 앱 버전)</td>
																			<td class="emph">회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<p class="txt_service">서비스 제공을 위해서 필요한 최소한의 개인정보입니다.
																동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수
																있습니다.</p>
														</div>
														<button type="button" class="btn_ok">
															<span class="txt_type">확인</span>
														</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
													<button type="button" class="btn_close">
														<span class="screen_out">레이어 닫기</span>
													</button>
												</div>

												<div class="check_view">
													<input type="hidden" id="consentHidden" name="consent[1]"
														value=""> <label class=" check_agree label_block">
														<input type="checkbox" name="hiddenCheck"> <span
														class="ico"></span>개인정보 수집·이용 동의 <span class="sub">(선택)</span>
													</label> <a href="#none" class="link btn_link btn_choice">약관보기
													</a>
												</div>

												<div class="layer layer_choice">
													<div class="inner_layer">
														<div class="in_layer">
															<h4 class="tit_layer">
																개인정보 수집·이용 동의 <span class="sub">(선택)</span>
															</h4>
															<div class="box_tbl">
																<table width="100%" cellspacing="0" cellpadding="0">
																	<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
																	<thead>
																		<tr>
																			<th scope="row" class="tit1">수집 목적</th>
																			<th scope="row" class="tit2">수집 항목</th>
																			<th scope="row" class="tit3">보유 기간</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>맞춤형 회원 서비스 제공</td>
																			<td>성별, 생년월일</td>
																			<td class="emph">회원 탈퇴<br> 즉시 파기
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<p class="txt_service">동의를 거부하시는 경우에도 서비스는 이용하실 수
																있습니다.</p>
														</div>
														<button type="button" class="btn_ok">
															<span class="txt_type">확인</span>
														</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
												</div>

												<div class="check_view">
													<label class="label_block check_agree "> <input
														type="checkbox" name="marketing"> <span
														class="ico"></span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span
														class="sub">(선택)</span>
													</label>
													<div class="check_event email_sms">
														<label class="label_block check_agree "> <input
															type="checkbox" name="sms" value="n"> <span
															class="ico"></span>SMS
														</label> <label class="label_block check_agree "> <input
															type="checkbox" name="mailling" value="n"> <span
															class="ico"></span>이메일
														</label>
													</div>
													<p class="sms_info">
														동의 시 한 달간 [5% 적립] + [무제한 무료배송] <span class="sub">(첫
															주문 후 적용)</span>
													</p>
												</div>
												<div class="check_view">
													<label class=" check_agree label_block"> <input
														type="checkbox" value="n" name="fourteen_chk" required=""
														label="만 14세 이상"> <span class="ico"></span>본인은 만
														14세 이상입니다. <span class="sub">(필수)</span>
													</label>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<div id="formSubmit" class="form_footer">
									<button type="button" class="btn active btn_join"
										onclick="formJoinSubmit()">가입하기</button>
								</div>
							</form>
						</div>
						<iframe id="ifrmRnCheck" name="ifrmRnCheck" style="display: none;"></iframe>
						<iframe id="ifrmHpauth" name="ifrmHpauth" style="display: none;"></iframe>
						<script
							src="/shop/data/skin/designgj/js/pw_validate.js?ver=1.40.0"></script>
						<script
							src="/shop/data/skin/designgj/js/delivery_address.js?ver=1.40.0"></script>
						<script type="text/javascript">
  $(document).ready(function() {
    $('input[name=name]').on('keyup keydown blur', function(){
      preventSpecialChars($(this), 'write');
    });

    $("#formSubmit .btn_submit").click(function(){
      $("input[type='text']").each(function(){
        var input_txt = $(this).val();
        var input_trim_txt = input_txt.replace(/(^\s*)|(\s*$)/gi, "");
        $(this).val(input_trim_txt);
      })
    });

    // PRDPJ-159 장차석 : 사용자 아이디와 추처인 아이디 중복 안되도록 처리
    var $nameRecommid = $('[name=recommid]');
    var $nameMId = $('[name=m_id]');
    $($nameRecommid , $nameMId).blur(function(){
      if ($.trim($nameMId.val()) !== '' && $.trim($nameRecommid.val()) !== '' &&
        ($nameRecommid.val() === $nameMId.attr('data-id') || $nameRecommid.val() === $nameMId.val())) {
        $nameRecommid.val('');
        alert('추천인 아이디에는 본인 아이디를 입력할 수 없습니다.');
      }
    });

    //개인정보처리방침
    function getAgreement() {
      jQuery.ajax({
        url: "/shop/service/private.php",
        cache: false,
        dataType: "html",
        type: "GET",
        contentType: 'text/html; charset=euc-kr',
        success: function(data) {
          jQuery(".agreement_box").html( jQuery(data).find('.hundred'));
        }
      });
    }
    getAgreement();

    // 레이어 열기,닫기
    $('.check_view .btn_link').on('click',function(e){
      e.preventDefault();
      var $layer1 = $(this).is('.btn_agreement');
      var $layer2 = $(this).is('.btn_essential');
      var $layer3 = $(this).is('.btn_choice');
      var bgDimd = $('.bg_dim');
      var $target = $(this).parents('.reg_agree').find('.layer');

      var $agreement = $(this).parents('.reg_agree').find('.layer_agreement');
      var $essential = $(this).parents('.reg_agree').find('.layer_essential');
      var $choice = $(this).parents('.reg_agree').find('.layer_choice');
      var topResult = null;

      if($layer1 == true){
        bgDimd.show();
        $agreement.show();
        $essential.hide();
        $choice.hide();
        topResult = $agreement;
      }else if($layer2 == true){
        bgDimd.show();
        $essential.show();
        $agreement.hide();
        $choice.hide();
        topResult = $essential;
      }else if($layer3 == true){
        bgDimd.show();
        $choice.show();
        $essential.hide();
        $agreement.hide();
        topResult = $choice;
      }
      topResult.css({
        'margin-top':-topResult.height() / 2
      });
    });
    $('.reg_agree .btn_ok,.reg_agree .btn_close').on('click',function(e){
      e.preventDefault();
      $(this).parents('.layer').hide();
      $('.bg_dim').hide();
    });

    // 이용약관전체동의
    var agree = $('.reg_agree');
    $('.check_agree input[name = agree_allcheck]').change(function(){
      if($(this).is(':checked') === true){
        $('.check_agree').addClass('checked')
        agree.find('input[type=checkbox]').attr('checked','checked');
        agree.find('input[type=checkbox]').prop('checked','checked');
        agree.find('input[type=checkbox]').val('y');
        $('#consentHidden').val('y');
      }else{
        $('.check_agree').removeClass('checked')
        agree.find('input[type=checkbox]').attr('checked','');
        agree.find('input[type=checkbox]').prop('checked','');
        agree.find('input[type=checkbox]').val('n');
        $('#consentHidden').val('n');
      }
    });
    $('.reg_agree').find('input[type=checkbox]').change(function(){
      if($(this).is(':checked')){
        $(this).parent().addClass('checked');
        $(this).attr('checked','checked');
        $(this).prop('checked','checked');
        $(this).val('y');
        if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('y');
      }else{
        $(this).parent().removeClass('checked');
        $(this).attr('checked','');
        $(this).prop('checked','');
        $(this).val('n');
        if($(this).attr('name') == 'hiddenCheck') $('#consentHidden').val('n');
      }
      $('.reg_agree').find('input[type=checkbox]').each(function(){
        if($(this).is(':checked') === false){
          $('.label_all_check').removeClass('checked');
          return false;
        }
      });
      if($(this).attr('name') === 'marketing'){
        if($(this).is(':checked')){
          $('.email_sms').find('.check_agree').addClass('checked');
          $('.email_sms').find('input').attr('checked','checked');
          $('.email_sms').find('input').prop('checked','checked');
          $('.email_sms').find('input').val('y');
        }else{
          $('.email_sms').find('.check_agree').removeClass('checked');
          $('.email_sms').find('input').attr('checked','');
          $('.email_sms').find('input').prop('checked','');
          $('.email_sms').find('input').val('n');
        }
      }
      if($(this).attr('name') === 'mailling' || $(this).attr('name') === 'sms'){
        var emailSmsCount = 0;
        $(this).parents('.email_sms').find('input').each(function(){
          if($(this).is(':checked')) emailSmsCount++;
        });
        if(emailSmsCount === 2){
          $('input[name=marketing]').parent().addClass('checked');
          $('input[name=marketing]').attr('checked','checked');
          $('input[name=marketing]').prop('checked','checked');
        }else{
          $('input[name=marketing]').parent().removeClass('checked');
          $('input[name=marketing]').attr('checked','');
          $('input[name=marketing]').prop('checked','');
        }
      }

      // 전체동의
      if($('.reg_agree').find('.checked').length >= 7){
        $('.check_agree input[name = agree_allcheck]').parent().addClass('checked');
        $('.check_agree input[name = agree_allcheck]').prop('checked','checked');
      }else{
        $('.check_agree input[name = agree_allcheck]').parent().removeClass('checked');
        $('.check_agree input[name = agree_allcheck]').prop('checked','');
      }
    });

    function inputFocus() {
      $('#form input').focus(function () {
        var element = $(this);
        if (element.offset().top - $(window).scrollTop() < 80)
        {
          $('html, body').animate({
            scrollTop: element.offset().top - 80
          }, 0);
        }
      });
    }
    inputFocus();


    // 글자 갯수확인 + 문장조합확인
    var checkType1 = false;// 갯수
    var checkType2 = false;// 문자
    var checkType3 = false;// 문자만
    function check_confirm(characterReg, minNum){
      if(characterReg.length < minNum){
        checkType1 = false;
      }else{
        checkType1 = true;
      }

      var checkNumber = characterReg.search(/[0-9]/g); // 숫자
      var checkEnglish = characterReg.search(/[a-zA-Z]/ig); // 대소문자
      var checkSpecial = characterReg.search(/[~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 특수문자
      var checkAscii = characterReg.search(/[^a-zA-Z0-9~`!>@?/<#"'\$;:\]%\.\^,&\[*()_\+\-=|\\{}]/ig); // 아스키 특수문자

      if(checkNumber >= 0 && checkEnglish >= 0 && checkAscii === -1) {
        checkType2 = true;
        checkType3 = true;
        if(checkSpecial !== -1) checkType3 = false;
      }else if(checkNumber >= 0 && checkSpecial !== -1 && checkAscii === -1){
        checkType2 = true;
        checkType3 = false;
      }else if(checkEnglish >= 0 && checkSpecial !== -1 && checkAscii === -1) {
        checkType2 = true;
        checkType3 = false;
      }else if( checkEnglish >= 0 && checkSpecial === -1 && checkAscii === -1) {
        checkType3 = true;
        if (checkNumber === -1) checkType2 = false;
      }else{
        checkType2 = false;
        checkType3 = false;
      }
    }


    // 아이디검증
    var saveId;
    $('[name=m_id]').on('focus',function(){
      saveId = $(this).val();
      $(this).parent().find('.txt_guide').show();
    });
    $('[name=m_id]').on('keyup', function(){
      var $target = $(this).parent().find('.txt_guide');
      var $chkVal =  $(this).val();
      var $numMin = 6;
      if(saveId !== $chkVal) class_change($target.eq(1),'bad');// 중복확인후 수정될때
      check_confirm($chkVal,$numMin);
      if(checkType1 === true && checkType3 === true){
        class_change($target.find('.txt_case1'), 'good');
        $(this).attr('data-validator',"true");
      }else{
        class_change($target.find('.txt_case1'),'bad');
        $(this).attr('data-validator',"false");
      }
      if($('[name=chk_id]').val() == 1){
        $('[name=chk_id]').val('');
        class_change($target.find('.txt_case2'),'bad');
      }
    });

    // 비밀번호검증
    $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('focus',function(){
      $(this).parent().find('.txt_guide').show();
    });
    $('[name=password], [name=newPassword], [name=password2], [name=confirmPassword]').on('blur', function () {
      if ($(this).parent().find('.txt').hasClass('bad') || $.trim($(this).val()) === "" ){
        if (!$(this).hasClass('bad')) $(this).addClass('bad');
      } else {
        if ($(this).hasClass('bad')) $(this).removeClass('bad')
      }
    });
    $('input[name=password2], [name=confirmPassword]').on('keyup', function(){
      var $target = $(this).parent().find('.txt_guide');

      if( ( $("[name=password]").val() === $('[name=password2]').val() && $.trim($("[name=password]").val()) != "") || ( $("[name=newPassword]").val() === $('[name=confirmPassword]').val() && $.trim($("[name=newPassword]").val()) != "") ) {
        class_change($target.find('.txt_case1'),'good');
      }else{
        class_change($target.find('.txt_case1'),'bad');
      }
    });

    $('input[name=password], [name=newPassword]').on('keyup', function(e){
      var $target = $(this).parent().find('.txt_guide');
      var $chkVal =  $(this).val();
      var $numMin = 10;

      check_confirm($chkVal,$numMin);

      if(checkType1 === false && checkType2 === false){
        class_change($target.find('.txt_case1'),'bad');
        class_change($target.find('.txt_case2'),'bad');
      }
      if(checkType1 === true && checkType2 === false){
        class_change($target.find('.txt_case1'),'good');
        class_change($target.find('.txt_case2'),'bad');
      }
      if(checkType1 === false && checkType2 === true){
        class_change($target.find('.txt_case1'),'bad');
        class_change($target.find('.txt_case2'),'good');
      }
      if(checkType1 === true && checkType2 === true){
        class_change($target.find('.txt_case1'),'good');
        class_change($target.find('.txt_case2'),'good');
      }

      var hasThreeOrMoreConsecutiveNumbers = pwValidate.hasThreeOrMoreConsecutiveNumbers($chkVal)
      if (hasThreeOrMoreConsecutiveNumbers) {
        class_change($target.find('.txt_case3'),'bad');
      } else {
        class_change($target.find('.txt_case3'),'good');
      }

      if($(this).attr('id') == 'newPassword'){
        if($('[name=originalPassword]').val() == $('[name=newPassword]').val() ){
          class_change($target.find('.txt_case4'),'bad');
        }else{
          class_change($target.find('.txt_case4'),'good');
        }
        $('[name=confirmPassword]').trigger('keyup');
        var newPasswordCheckNum = 0;
        $target.find('.txt').each(function(){
          if($(this).hasClass('good')) newPasswordCheckNum++;
          $('[name=newPasswordCheck]').val(newPasswordCheckNum);
        });
      }else{
        $('[name=password2]').trigger('keyup');
      }
    });

    $("#selectRecommend label").on('click', function (e) {
      var target = $(e.target)
      var wrapper = target.closest('.group_radio')

      var inputOptions = wrapper.find('label')
      var targetInput = target.closest('.radio_wrapper').find('label')

      var selectOptionId = targetInput.find('input').attr('id')
      var inputWrapper = wrapper.siblings('.input_wrapper')
      var textBox = inputWrapper.find('input')
      var defaultMessage = {
        'recommendId': '추천인 아이디를 입력해주세요.',
        'eventName': '참여 이벤트명을 입력해주세요.'
      }
      var placeholderMessage = defaultMessage[selectOptionId]

      // 라디오버튼 토글
      inputOptions.not(targetInput).removeClass('checked')
      targetInput.addClass('checked')

      // 기존 텍스트 리셋
      textBox.val("")

      // placeholder 텍스트 변경
      textBox.attr('placeholder', placeholderMessage)

      // input name, value값 변경
      var nameOptions = {
        'recommendId': 'recommid',
        'eventName': 'ex2'
      }
      textBox.attr('id', nameOptions[selectOptionId])
      inputWrapper.addClass('selected')
    })
  });

  // 클래스변경
  function class_change(obj,state){
    if(state === 'good') {
      if (obj.hasClass('bad')) obj.removeClass('bad');
      obj.addClass('good');
    }else{
      if(obj.hasClass('good')) obj.removeClass('good');
      obj.addClass('bad');
    }
  }

  // 중복확인
  function chkId()
  {
    var alertMsg = "아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다";
    var $target = $("[name='m_id']").parent().find('.txt_case2');
    var id_txt = $("[name='m_id']").val();
    var id_trim_txt = id_txt.replace(/(^\s*)|(\s*$)/gi, "");
    $("input[name='m_id']").val(id_trim_txt);
    var form = document.frmMember;
    if ($("input[name='m_id']").val() === "") {
      alert("아이디를 입력해 주세요.");
      return;
    }
    if($("input[name='m_id']").val().length < 6){alert("아이디는 6자 이상의 영문 혹은 영문과 숫자 조합만 가능합니다");return;}
    if (!chkText(form.m_id,form.m_id.value,"아이디를 입력해주세요")) return;
    var idPattern = /^[a-zA-Z0-9]{1}[^"']{3,15}$/; // chkPatten 메소드에서 가져옴
    var isValidId = eval(idPattern);
    if (!isValidId.test(form.m_id.value)) {
      alert(alertMsg);
      return;
    }
    var $idValidator = $("[name='m_id']").attr('data-validator');
    if($idValidator === "false"){
      $("[name=chk_id]").val('');
      alert(alertMsg);
      if($target.hasClass('good')) $target.removeClass('good');
      $target.addClass('bad');
    }else{
      ifrmHidden.location.href = "indb.php?mode=chkId&m_id=" + form.m_id.value;
    }
  }
  function chkId2(num){
    var $target = $("[name='m_id']").parent().find('.txt_case2');
    var id_txt = $("[name='m_id']").val();
    if(num == 1){
      if($target.hasClass('bad')) $target.removeClass('bad');
      $target.addClass('good');
      $("[name='m_id']").attr('data-id',id_txt);
    }else{
      if($target.hasClass('good')) $target.removeClass('good');
      $target.addClass('bad');
    }
  }

  //
  function chkEmailChange($target){
    if($target.val() === $target.data('email') && $target.val().trim() !== ''){
      $('[name=chk_email]').val('1');
    }else{
      $('[name=chk_email]').val('0');
    }
  }
  // 이메일 중복확인
  function chkEmail()
  {
    var email_txt = $("input[name='email']").val();
    var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
    var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    $("input[name='email']").val(trim_txt)
    if ($("input[name='email']").val() === "") {
      alert("이메일 주소를 입력해 주세요.");
      $('[name=chk_email]').val('0');
      return false;
    }
    if(email_regex.test(trim_txt) === false) {
      alert("잘못된 이메일 형식입니다.");
      $('[name=chk_email]').val('0');
      return false;
    }

    var form = document.frmMember;
    if (!chkText(form.email,form.email.value,"이메일을 입력해주세요")){
      $('[name=chk_email]').val('0');
      return;
    }
    if (!chkPatten(form.email,form.email.getAttribute('option'),"정상적인 이메일 주소를 입력해주세요.")){
      $('[name=chk_email]').val('0');
      return;
    }

    $('[name=chk_email]').val('1');

    var chkUrl = "indb.php?mode=chkEmail&email=" + form.email.value + "&m_id=";
    ifrmHidden.location.href = chkUrl;
  }

  $("input[name='mobileInp']").change(function() {
    $("input[name='check_mobile']").val("0");
  });

  // 생년월일 입력시 폼 포커스 이벤트
  $('.birth_day input').focus(function(){
    $(this).parent().addClass('on');
  }).keyup(function(){
    var inputText = $(this).val();
    var number = $(this).val().replace(/[^0-9]/g,'');
    $(this).val(number);
  }).blur(function(){
    $(this).parent().removeClass('on');
    // KM-1261 회원가입 14세 인증
    birthCheckAction.validatorText();
  });


  // 현재 비밀번호 확인
  function checkCurrentPassword(el) {
    var currentPassword = $(el).val();
    var errorMessage = $(el).parent().find(".txt_guide");
    if (currentPassword.trim() === "") {
      errorMessage.hide();
      $('[name=originalPasswordCheck]').val('1');
      return false;
    }
    var req = {password:currentPassword};
    kurlyApi({
      method:'post',
      // url:'/v1/users/check/password',
      url:'/v3/auth/check-password',
      data:req
    }).then(function (response) {
      if(response.status === 204){
        errorMessage.hide();
        $('[name=originalPasswordCheck]').val('1');
        return true;
      }else{
        errorMessage.show();
        $('[name=originalPasswordCheck]').val('0');
        return false;
      }
    }.bind(this)).catch(function(err){
      errorMessage.show();
      $('[name=originalPasswordCheck]').val('0');
      return false;
    });
  }

  function chkForm2(f) {
    if($('[name=originalPasswordCheck]').val() === '0'){
      alert('현재 비밀번호를 확인해주세요', function(){
        $('[name=originalPassword]').focus();
      });
      return false;
    }

    if($('#originalPassword').val() != "" || $('#newPassword').val() != "" || $('#confirmPassword').val() != ""){
      if($('[name=newPasswordCheck]').val() < 4){
        alert('새 비밀번호를 확인해주세요', function(){
          $("[name=newPassword]").focus();
        });
        return false;
      }
      if($('#confirmPassword').val() != $('#newPassword').val()){
        alert('새 비밀번호 확인을 확인해주세요', function(){
          $('#confirmPassword').focus();
        });
        return false;
      }
    }

    if($('[name=chk_email]').val() !== '1'){
      alert('이메일 중복확인을 확인해주세요', function(){
        $('[name=email]').focus();
      });
      return false;
    }

    if(! preventSpecialChars($('input[name=name]'), 'result')){
      return false;
    }

    if ($("input[name='check_mobile']").val() !== "1")
    {
      alert("휴대폰 인증을 완료해 주세요.", function () {
        $('#btn_cert').focus();
      });
      return false;
    }


    var email_txt = $("input[name='email']").val();
    var trim_txt = email_txt.replace(/(^\s*)|(\s*$)/gi, "");
    var email_regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
    $("input[name='email']").val(trim_txt)
    if(email_regex.test(trim_txt) === false) {
      alert('잘못된 이메일 형식입니다.', function () {
        $('input[name=email]').focus();
      });
      return false;
    }

    // KM-1261 회원가입 14세 인증
    if(! birthCheckAction.validatorForm()){
      return false;
    }

    if (chkForm(f) === false) {
      return false;
    }
    return true;
  }

  $(document).ready(function() {
    // 추천인 자동 설정
    var recommRegExp = new RegExp("recommid=([^&]+)", "i");
    var match = location.search.match(recommRegExp);
    if(match !== null && match.length === 2) {
      $('#labelRecomm').click();
      $('input[name=recommid]').val("");
    }
  });


  // KM-1483 Amplitude
  KurlyTracker.setScreenName('sign_up').setAction('view_sign_up').sendData();
</script>
					</div>
					<!-- 회원가입 내용 end -->
					<!-- 여기에 넣기 end -->
					<div id="layerDSR">
						<div class="bg_dim"></div>
						<div class="in_layer">
							<div class="inner_layer layer_star">
								<strong class="dsr_result">샛별배송 지역입니다.</strong>
								<div class="ani">
									<img
										data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png"
										src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
										alt="샛별배송 이미지">
								</div>
								<p class="dsr_desc default_cutoff_23_7">
									<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br> <strong
										class="emph">다음날 아침 7시</strong> 이전 도착합니다!
								</p>
								<p class="dsr_desc early_cutoff_20_8">
									<strong class="emph">오늘 밤 8시 전</strong>까지 주문시<br> <strong
										class="emph">다음날 아침 8시</strong> 이전 도착합니다!
								</p>
							</div>
							<div class="inner_layer layer_normal">
								<strong class="dsr_result">택배배송 지역입니다.</strong>
								<div class="ani">
									<img
										data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png"
										src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
										alt="택배배송 이미지">
								</div>
								<p class="dsr_desc old_eight">
									<strong class="emph">밤 8시 전</strong>까지 주문시<br> <strong
										class="emph">다음날</strong> 도착합니다!
								</p>
								<p class="dsr_desc new_ten">
									<strong class="emph">밤 10시 전</strong>까지 주문시<br> <strong
										class="emph">다음날</strong> 도착합니다!
								</p>
								<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
							</div>
							<div class="inner_layer layer_none">
								<strong class="dsr_result">배송 불가 지역입니다.</strong>
								<div class="ani">
									<img
										data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png"
										src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
										alt="배송불가 이미지">
								</div>
								<p class="dsr_desc">
									<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br> <strong
										class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
								</p>
								<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
							</div>
							<div class="layer_btn1">
								<button type="button" class="btn_close"
									onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
							</div>
							<button type="button" class="layer_close"
								onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
						</div>
					</div>
					<div id="footer">
						<div class="inner_footer">
							<div class="footer_cc">
								<h2 class="tit_cc">고객행복센터</h2>
								<div class="cc_view cc_call">
									<h3>
										<span class="tit">1644-1107</span>
									</h3>
									<dl class="list">
										<dt>365고객센터</dt>
										<dd>오전 7시 - 오후 7시</dd>
									</dl>
								</div>
								<div class="cc_view cc_kakao">
									<h3>
										<a class="tit" href="#none">카카오톡 문의</a>
									</h3>

									<dl class="list">
										<dt>365고객센터</dt>
										<dd>오전 7시 - 오후 7시</dd>
									</dl>
								</div>
								<div class="cc_view cc_qna">
									<h3>
										<a href="#none"
											onclick="KurlyTrackerLink('/shop/mypage/mypage_qna_register.php?mode=add_qna', 'select_bottom_onebyone_button')"
											class="tit">1:1 문의</a>
									</h3>
									<dl class="list">
										<dt>24시간 접수 가능</dt>
										<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
									</dl>
								</div>
								<div class="cc_view cc_bulkorder">
									<h3>
										<a href="/shop/main/html.php?htmid=mypage/bulk_order.htm"
											class="tit">대량주문 문의</a>
									</h3>
									<p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
								</div>
							</div>
							<div class="company">
								<ul class="list">
									<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
									<li><a class="link"
										href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1"
										onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
									<li><a class="link"
										href="https://marketkurly.recruiter.co.kr/appsite/company/index"
										target="_blank">인재채용</a></li>
									<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
									<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
									<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
								</ul>
								법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 :
								261-81-23567 <a
									href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no="
									target="_blank" class="link">사업자정보 확인</a> <br> 통신판매업 : 제
								2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준 <br>
								주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span>
								대표이사 : 김슬아 <br> 입점문의 : <a
									href="https://forms.gle/oKMAe1SaicqMX3SC9" target="_blank"
									class="link">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a
									href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
								<br> 채용문의 : <a href="mailto:recruit@kurlycorp.com"
									class="link">recruit@kurlycorp.com</a> <br> 팩스: 070 - 7500
								- 6098 <span class="bar">I</span> 이메일 : <a
									href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
								<br> 대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com"
									class="link">kurlygift@kurlycorp.com</a> <em class="copy">&copy;
									KURLY CORP. ALL RIGHTS RESERVED</em>
								<ul class="list_sns">
									<li><a href="https://instagram.com/marketkurly"
										class="link_sns" target="_blank"><img
											src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
											alt="마켓컬리 인스타그램 바로가기"></a></li>
									<li><a href="https://www.facebook.com/marketkurly"
										class="link_sns" target="_blank"><img
											src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
											alt="마켓컬리 페이스북 바로가기"></a></li>
									<li><a href="http://blog.naver.com/marketkurly"
										class="link_sns" target="_blank"><img
											src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
											alt="마켓컬리 네이버블로그 바로가기"></a></li>
									<li><a href="https://m.post.naver.com/marketkurly"
										class="link_sns" target="_blank"><img
											src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
											alt="마켓컬리 유튜브 바로가기"></a></li>
									<li><a
										href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"
										class="link_sns lst" target="_blank"><img
											src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
											alt="마켓컬리 유튜브 바로가기"></a></li>
								</ul>
							</div>
						</div>
						<div class="footer_link">
							<div class="authentication">
								<a href="#none"
									onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;"
									class="mark" target="_blank"> <img
									src="https://res.kurly.com/pc/ico/2001/logo_isms.png"
									alt="isms 로고" class="logo">
									<p class="txt">
										[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br> [유효기간] 2019.04.01 ~
										2022.03.31
									</p>
								</a> <a href="#none"
									onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2021-EP-R003',527,720);return false;"
									class="mark" target="_blank"> <img
									src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png"
									alt="eprivacy plus 로고" class="logo">
									<p class="txt">
										개인정보보호 우수 웹사이트 ·<br> 개인정보처리시스템 인증 (ePRIVACY PLUS)
									</p>
								</a> <a href="#none"
									onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;"
									class="mark lguplus" target="_blank"> <img
									src="https://res.kurly.com/pc/service/main/2009/logo_payments.png"
									alt="payments 로고" class="logo">
									<p class="txt">
										고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br> 토스 페이먼츠
										구매안전(에스크로) 서비스를 이용하실 수 있습니다.
									</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<a href="#top" id="pageTop">맨 위로가기</a>


			<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
				style="display: none; width: 100%; height: 600px;"></iframe>
</html>