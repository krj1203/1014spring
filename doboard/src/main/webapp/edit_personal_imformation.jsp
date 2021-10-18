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
<script type="text/javascript">
$(document).ready(function(){
	  var floatPosition = parseInt($('#qnb .link_menu').css('border-top'));
	// #floatMenu의 현재 top 위치값을 가져오고,,,
	// 현위치값 50px에서 parseInt로 숫자인 50만 가져옵니다.
	  $(window).scroll(function(){
	    var scrollTop = $(window).scrollTop();
	// 현재 화면 top값을 가져옵니다.
	    var newPosition = floatPosition + scrollTop + 'px';    
	    $('#qnb .link_menu').stop().animate({'border-top':newPosition},300);
	  });
	});
</script>
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
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'mypage'})">적립금</a>
									</li>
									<li><a href="#none"
										onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'mypage'})">쿠폰</a>
									</li>
									<li class="on"><a href="/shop/member/myinfo.php">개인 정보
											수정</a></li>
								</ul>
							</div>
							<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna"
								class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span>
								1:1 문의하기</a>
						</div>
						<!-- ================================================= -->
						<div class="page_section section_myinfo">
							<div class="head_aticle">
								<h2 class="tit">개인 정보 수정</h2>
							</div>
							<div class="type_form member_join member_mod">
								<form id="form" name="frmMember" method="post"
									action="/shop/member/indb.php" onsubmit="return chkForm2(this)"
									novalidate="">
									<input type="hidden" name="mode" value="modMember"> <input
										type="hidden" name="check_mobile" value="1"> <input
										type="hidden" name="auth_finish_code" value=""> <input
										type="hidden" name="rncheck" value=""> <input
										type="hidden" name="dupeinfo" value=""> <input
										type="hidden" name="pakey" value=""> <input
										type="hidden" name="foreigner" value="1"> <input
										type="hidden" name="passwordSkin" value="Y"> <input
										type="hidden" name="m_id" value="eejyng94">
									<table class="tbl_comm">
										<tbody>
											<tr class="fst">
												<th>아이디<span class="ico">*<span
														class="screen_out">필수항목</span></span></th>
												<td><input type="text" value="" readonly=""
													class="inp_read"></td>
											</tr>
											<tr>
												<th>현재 비밀번호</th>
												<td><input type="password" name="originalPassword"
													id="originalPassword"
													onblur="checkCurrentPassword(this);return;"> <input
													type="hidden" name="originalPasswordCheck" value="1">
													<p class="txt_guide square">
														<span class="txt txt_case4 bad">현재 비밀번호를 확인해주세요</span>
													</p></td>
											</tr>
											<tr class="member_pwd">
												<th>새 비밀번호</th>
												<td><input type="password" name="newPassword"
													id="newPassword" label="새 비밀번호" option="regPass"
													maxlength="16" class="reg_pw"> <input type="hidden"
													name="newPasswordCheck" value="0">
													<p class="txt_guide square">
														<span class="txt txt_case4">현재 비밀번호와 다르게 입력</span> <span
															class="txt txt_case1">10자 이상 입력</span> <span
															class="txt txt_case2">영문/숫자/특수문자(공백 제외)만 허용하며, 2개
															이상 조합</span> <span class="txt txt_case3">동일한 숫자 3개 이상 연속
															사용 불가</span>
													</p></td>
											</tr>
											<tr class="member_pwd">
												<th>새 비밀번호 확인</th>
												<td><input type="password" name="confirmPassword"
													id="confirmPassword" label="새 비밀번호" option="regPass"
													maxlength="16" class="confirm_pw">
													<p class="txt_guide square">
														<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
													</p></td>
											</tr>
											<tr>
												<th>이름<span class="ico">*<span
														class="screen_out">필수항목</span></span></th>
												<td><input type="text" name="name" value=""
													required="" fld_esssential="" label="이름"
													placeholder="이름을 입력해주세요"></td>
											</tr>
											<tr>
												<th>이메일<span class="ico">*<span
														class="screen_out">필수항목</span></span></th>
												<td><input type="text" name="email"
													value=""
													data-email="" size="30" required=""
													option="regEmail" label="이메일"
													placeholder="예: marketkurly@kurly.com"
													onblur="chkEmailChange($(this))"> <input
													type="hidden" name="chk_email" required="" label="이메일중복체크"
													value="1"> <a href="javascript:void(0)"
													onclick="chkEmail()" class="btn default">중복확인</a></td>
											</tr>
											<tr class="field_phone">
												<th>휴대폰<span class="ico">*<span
														class="screen_out">필수항목</span></span></th>
												<td>
													<div class="phone_num">
														<input type="text" value="" pattern="[0-9]*"
															name="mobileInp" placeholder="숫자만 입력해주세요" class="inp"
															readonly="readonly"> <input type="hidden"
															name="mobile[]" id="mobile0" value="010" required=""
															option="regNum" label="휴대폰"> <input type="hidden"
															name="mobile[]" id="mobile1" value="8954" required=""
															option="regNum" label="휴대폰"> <input type="hidden"
															name="mobile[]" id="mobile2" value="4440" required=""
															option="regNum" label="휴대폰">
														<button id="btn_cert" class="btn default" type="button">다른번호
															인증</button>
													</div>
													<div id="codeNum" class="code_num">
														<input type="text" name="auth_code" id="auth_code"
															value="" size="6" maxlength="6" pattern="[0-9]*"
															label="인증번호 확인" disabled="" class="inp_confirm"
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
											<tr class="select_sex">
												<th>성별</th>
												<td><label class=" checked"> <input
														type="radio" name="sex" value="n" checked="checked">
														<span class="ico"></span>남자
												</label> <label class=""> <input type="radio" name="sex"
														value="w"> <span class="ico"></span>여자
												</label> <label class=""> <input type="radio" name="sex"
														value="n" checked="checked"> <span class="ico"></span>선택안함
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
											<tr>
												<th>선택약관 동의</th>
												<td class="reg_agree">
													<div class="check_view">
														<input type="hidden" id="consentHidden" name="consent[1]"
															value="y"> <label
															class="label_block check_agree checked"> <input
															type="checkbox" name="hiddenCheck" value="y"
															checked="checked"> <span class="ico"></span>개인정보
															수집·이용 동의 <span class="sub">(선택)</span>
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
																	<table cellpadding="0" cellspacing="0" width="100%">
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

												</td>
											</tr>
											<tr style="display: none">
												<td cospan="2"><input id="nosendf" name="messge_time"
													fw-filter="isFill" fw-label="배송 시 받기" fw-msg="" value="0"
													type="hidden"> <input id="sendf" name="messge_time"
													fw-filter="isFill" fw-label="오전 7시에 받기" fw-msg=""
													checked="" value="1" type="hidden"> <input
													id="passwords" name="means_type" fw-filter="isFill"
													fw-label="공동현관 출입 특이사항" fw-msg="" value="비밀번호"
													type="hidden"> <input id="calls" name="means_type"
													fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg=""
													value="경비실호출" type="hidden"> <input id="send"
													name="means_type" fw-filter="isFill"
													fw-label="공동현관 출입 특이사항" fw-msg="" value="경비실로배송"
													type="hidden"> <input id="callm" name="means_type"
													fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg=""
													value="세대호출" type="hidden"> <input id="phonem"
													name="means_type" fw-filter="isFill"
													fw-label="공동현관 출입 특이사항" fw-msg="" value="연락처로전화"
													type="hidden"> <input id="free" name="means_type"
													fw-filter="isFill" fw-label="공동현관 출입 특이사항" fw-msg=""
													value="자유출입가능" type="hidden"> <input id="anys"
													name="means_type" fw-filter="isFill"
													fw-label="공동현관 출입 특이사항" fw-msg="" value="기타사항"
													type="hidden"> <input id="means_inp" name="means"
													fw-filter="" fw-label="비밀번호 및 호출방법" fw-msg=""
													class="inputTypeText" maxlength="50" value=" "
													type="hidden" autocomplete="off" autocorrect="off"
													autocapitalize="off" spellcheck="true"> <input
													id="no_means_inp" type="hidden"> <input id="pass"
													name="pass_type" fw-filter="isFill" fw-label="동의" fw-msg=""
													value="y" type="hidden"> <input id="nopass"
													name="pass_type" fw-filter="isFill" checked=""
													fw-label="동의안함" fw-msg="" value="n" type="hidden">
												</td>
											</tr>
											<tr class="reg_agree">
												<th>이용약관동의 <span class="ico">*<span
														class="screen_out">필수항목</span></span></th>
												<td>
													<div class="bg_dim"></div>
													<div class="check_view">
														<label class="label_block check_agree "> <input
															type="checkbox" name="marketing"> <span
															class="ico"></span>무료배송, 할인쿠폰 등 혜택/정보 수신 동의 <span
															class="sub">(선택)</span>
														</label>
														<div class="check_event email_sms">
															<label class="label_block check_agree checked"> <input
																type="checkbox" name="sms" value="y" checked="checked">
																<span class="ico"></span>SMS
															</label> <label class="label_block check_agree "> <input
																type="checkbox" name="mailling" value="n"> <span
																class="ico"></span>이메일
															</label>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									<div id="formSubmit" class="form_footer">
										<a href="/shop/member/hack.php?&amp;" class="btn default">탈퇴하기</a>
										<button type="submit" class="btn active">회원정보수정</button>
									</div>
								</form>
							</div>
							<iframe id="ifrmRnCheck" name="ifrmRnCheck"
								style="display: none;"></iframe>
							<iframe id="ifrmHpauth" name="ifrmHpauth" style="display: none;"></iframe>
							
						</div>


					</div>

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