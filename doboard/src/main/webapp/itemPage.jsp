<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<style>
.alert-window{
width:450px;
position: absolute;
    z-index: 9999;
    background-color: #fff;
   	top: 0;
    bottom: 0;
    right:0;
    left: 0;
    margin: auto;
}
</style>
</head>
<body class="main-index" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection">
	<a href="#top" id="gotoTop">맨 위로 가기</a>
	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">

			<jsp:include page="header.jsp"></jsp:include><!-- header부분 -->

			<div id="main">
				<div id="content">

					<jsp:include page="sidemenu.jsp"></jsp:include><!-- sidemenu부분 -->

					<div id="kurlyMain" class="page_aticle page_main"
						style="width: 100%;">
						<div class="alert-window"
							style="height: 225px;">
							<div class="ask-alert-wrapper">
								<div class="ask-alert-header">알림메세지</div>
								<div class="ask-alert-content">
									<p class="ask-alert-message">수량은 반드시 1 이상이어야 합니다.</p>
								</div>
								<button class="ask-alert-close-button">이 메세지를 닫기</button>
							</div>
							<div class="ask-alert-footer">
								<button type="button" data-ask-callback-key="1557653029378"
									class="styled-button __active">확인</button>
							</div>
						</div>
						<div class="section_view">
							<div id="shareLayer">
								<div class="layer_share">
									<div class="inner_layersns">
										<h3 class="screen_out">SNS 공유하기</h3>
										<!-- <ul class="list_share">
											<li><a class="btn btn_fb" data-sns-name="페이스북"
												data-sns="facebook" href="#none"><img
													src="https://res.kurly.com/mobile/service/goodsview/1804/ico_facebook.png"
													alt="페이스북"><span class="txt">공유하기</span></a></li>
											<li><a class="btn btn_tw" data-sns-name="트위터"
												data-sns="twitter" href="#none"><img
													src="https://res.kurly.com/mobile/service/goodsview/1804/ico_twitter.png"
													alt="트위터"><span class="txt">트윗하기</span></a></li>
											<li class="btn_url"><input type="text" class="inp"
												value="" readonly="readonly"> <a
												class="btn_copy off" data-sns-name="링크 복사" data-sns="copy"
												href="#none">URL 복사<img
													src="https://res.kurly.com/mobile/service/goodsview/1804/ico_checked_x2.png"
													alt=""></a></li>
										</ul> -->
									</div>
								</div>
							</div>

							<div id="sectionView">
								<div class="inner_view">
									<div class="thumb"
										style="background-image: url(img/Item/cream.png);">
										<img
											src="img/Item/cream.png"
											alt="상품 대표 이미지" class="bg">
									</div>
									<p class="goods_name">
										<span class="btn_share"><button id="btnShare">공유하기</button></span>
										<strong class="name">제품이름</strong>
										<span class="short_desc">서브제목</span>
									</p>
									<p class="goods_dcinfo">회원할인가</p>
									<p class="goods_price">
										<span class="position">
											<span class="dc"><!-- 할인된 가격 -->
												<span class="dc_price">가격
													<span class="won">원</span>
												</span>
												<span class="dc_percent">할인율
													<span class="per">%</span>
												</span>
											</span>
											<a class="original_price">
												<span class="price">할인전 가격
													<span class="won">원</span>
												</span>
											</a>
										</span>
										<!---->
										<!---->
										<!---->
										<!---->
										<span class="not_login"> <!----> <span>로그인 후,
												적립혜택이 제공됩니다.</span>
										</span>
									</p>
									<!---->
									<div class="goods_info">
										<dl class="list fst">
											<dt class="tit">판매단위</dt>
											<dd class="desc">1개</dd>
										</dl>
										<dl class="list">
											<dt class="tit">중량/용량</dt>
											<dd class="desc">125g</dd>
										</dl>
										<dl class="list">
											<dt class="tit">배송구분</dt>
											<!---->
											<dd class="desc">샛별배송/택배배송</dd>
										</dl>
										<!---->
										<dl class="list">
											<dt class="tit">포장타입</dt>
											<dd class="desc">
												냉동/종이포장 <strong class="emph"> 택배배송은 에코포장이 스티로폼으로
													대체됩니다. </strong>
											</dd>
										</dl>
										<dl class="list">
											<dt class="tit">알레르기정보</dt>
											<dd class="desc">
												알레르기 정보 불러오기
											</dd>
										</dl>
										<!---->
										<dl class="list">
											<dt class="tit">유통기한</dt>
											<dd class="desc">수령일 포함 최소 146일 남은 제품을 보내 드립니다</dd>
										</dl>
										<!---->
										<!---->
										<dl class="list">
											<dt class="tit">안내사항</dt>
											<dd class="desc">
												<span class="txt">해당 상품의 최소 구매수량은 2개입니다. 구매시 참고
													부탁드립니다.</span>
											</dd>
										</dl>
										<!---->
										<!---->
									</div>
									<!---->
								</div>
								<!---->
							</div>
							<!--  -->
							<!--  -->
							<!--  -->
							<div id="cartPut">
								<div class="cart_option cartList cart_type2">
									<div class="inner_option">
										<!---->
										<strong class="tit_cart">[남향푸드또띠아] 간편 간식 브리또 10종</strong>
										<div class="in_option">
											<div class="list_goods">
												<!---->
												<!---->
												<div class="box_select">
													<strong class="name">상품 선택</strong>
													<div class="inner_select">
														<a href="#none" class="txt_select">상품 선택</a>
														<!---->
													</div>
												</div>
												<ul class="list">
													<li class="on"><span class="btn_position on"><button
																type="button" class="btn_del">
																<span class="txt">삭제하기</span>
															</button></span> <span class="name"> <!----> [남향푸드또띠아] 핫 치킨 브리또 <!---->	</span> <!---->
														<div class="option">
															<span class="count"><button type="button"
																	class="btn down on">수량내리기</button> <input type="number"
																readonly="readonly" onfocus="this.blur()" class="inp" value="1">
																<button type="button" class="btn up on">수량올리기</button></span> <span
																class="price"> <!----> <span class="dc_price">2,900원</span>
															</span>
														</div></li>
												</ul>
											</div>
											<div class="total">
												<div class="price">
													<!---->
													<strong class="tit">총 상품금액 :</strong>
													<span class="sum">
														<span class="num">0</span> 
														<span class="won">원</span>
													</span>
												</div>
												<p class="txt_point">
													<span class="ico">적립</span> <span class="no_login">
														<!----> <span>로그인 후, 적립혜택 제공</span>
													</span>
													<!---->
												</p>
											</div>
										</div>
										<div class="group_btn off">
											<div class="view_function">
												<button type="button" class="btn btn_alarm">재입고 알림</button>
											</div>
											<span class="btn_type1"><button type="button"
													class="txt_type">장바구니 담기</button> <!----></span>
											<!---->
											<!---->
											<!---->
											<!---->
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
								<div class="cart_option cartList cart_type1">
									<div class="inner_option">
										<!---->
										<strong class="tit_cart">[남향푸드또띠아] 간편 간식 브리또 10종</strong>
										<div class="in_option">
											<div class="list_goods">
												<div class="bar_open">
													<button type="button" class="btn_close">
														<span class="ico">상품 선택</span>
													</button>
												</div>
												<!---->
												<div class="box_select off">
													<strong class="name">상품 선택</strong>
													<div class="inner_select">
														<a href="#none" class="txt_select">상품 선택</a>
														<!---->
													</div>
												</div>
												<!---->
											</div>
											<!---->
										</div>
										<div class="group_btn off">
											<div class="view_function">
												<button type="button" class="btn btn_alarm">재입고 알림</button>
											</div>
											<span class="btn_type1"><button type="button"
													class="txt_type">장바구니 담기</button> <!----></span>
											<!---->
											<!---->
											<!---->
											<!---->
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
								<!---->
								<div class="cart_option cart_result cart_type3">
									<div class="inner_option">
										<button type="button" class="btn_close1">pc레이어닫기</button>
										<p class="success">
											상품 구매를 위한 <span class="bar"></span>배송지를 설정해주세요
										</p>
										<div class="group_btn layer_btn2">
											<span class="btn_type2"><button type="button"
													class="txt_type">취소</button></span> <span class="btn_type1"><button
													type="button" class="txt_type">
													<span class="ico_search"></span>주소 검색
												</button></span>
										</div>
									</div>
								</div>
								<form name="frmBuyNow" method="post"
									action="/shop/order/order.php">
									<input type="hidden" name="mode" value="addItem"> <input
										type="hidden" name="goodsno" value="">
								</form>
								<form name="frmWishlist" method="post"></form>
							</div>
						</div>
						<!-- 놓치면 후회할 가격 -->
						<div class="layout-wrapper goods-view-area">


							<script src="/shop/data/skin/designgj/autoslider.js"></script>
							<div class="goods-add-product">
								<h3 class="goods-add-product-title">RELATED PRODUCT</h3>
								<div class="goods-add-product-wrapper __slide-wrapper"
									data-slide-item="5">
									<button
										class="goods-add-product-move goods-add-product-move-left __slide-go-left"
										style="display: none;">왼쪽으로 슬라이드 이동</button>
									<button
										class="goods-add-product-move goods-add-product-move-right __slide-go-right"
										style="display: none;">오른쪽으로 슬라이드 이동</button>
									<div class="goods-add-product-list-wrapper"
										style="height: 320px">
										<!-- 하위 제품 목록 표시 -->
										<ul class="goods-add-product-list __slide-mover">
											<li class="goods-add-product-item __slide-item">
												<div class="goods-add-product-item-figure">
													<a href="#"
														onclick="KurlyTrackerLink('../goods/goods_view.php?goodsno=3327', 'select_related_product', {origin_price: 5400, package_id: 3327, package_name: '[남향푸드] 우리밀 또띠아 (냉동)'}, {openWindow: true})">
														<img
														src="//img-cf.kurly.com/shop/data/goods/1486128824798m0.jpg"
														class="goods-add-product-item-image"
														onerror="this.src='https://res.kurly.com/mobile/service/common/bg_1x1.png'">
													</a>
												</div>
												<div class="goods-add-product-item-content">
													<div class="goods-add-product-item-content-wrapper">
														<p class="goods-add-product-item-name">[남향푸드] 우리밀 또띠아
															(냉동)</p>
														<p class="goods-add-product-item-price">5,400원</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>

							<div class="goods-view-infomation detail_wrap_outer"
								id="goods-view-infomation">
								<div class="goods-view-tab">
									<ul class="goods-view-infomation-tab-group">
										<li class="goods-view-infomation-tab"><a
											href="#goods-description"
											class="goods-view-infomation-tab-anchor __active">상품설명</a></li>
										<li class="goods-view-infomation-tab"><a
											href="#goods-infomation"
											class="goods-view-infomation-tab-anchor">상세정보</a></li>
										<li class="goods-view-infomation-tab goods-view-review-tab"><a
											href="#goods-review" class="goods-view-infomation-tab-anchor">후기
												<span class="count_review">(155175)</span>
										</a></li>

										<li class="goods-view-infomation-tab qna-show"><a
											href="#goods-qna" class="goods-view-infomation-tab-anchor">문의</a></li>
									</ul>
								</div>
								<div class="goods-view-infomation-content __active"
									id="goods-description">


									<div class="goods_wrap">
										<div class="goods_intro">
											<div class="pic">
												<img
													src="//img-cf.kurly.com/shop/data/goodsview/20210308/gv30000163362_1.jpg">
											</div>
											<div class="context last">
												<h3>
													<small>가볍고 든든한 멕시칸 푸드</small> [남향푸드또띠아]<br> 브리또 10종
												</h3>
												<p class="words">브리또는 한국의 김밥만큼이나 속 재료가 다양한 멕시코 요리입니다.
													보통은 소고기나 닭고기, 콩, 치즈를 넣지만 만드는 사람에 따라 맛은 무궁무진하게 바뀔 수 있죠. 얇고
													고소한 또띠아로 속 재료를 둘둘 말아내어 섭취하기에도 편하고, 간단하지만 든든한 한 끼 식사로도 손색이
													없는데요. 컬리는 또띠아 전문 기업으로 외길을 걸어온 남향푸드또띠아의 브리또 10종을 준비했어요.
													콤비네이션 피자가 쏙 담긴 브리또부터 4가지 치즈를 한번에 즐기는 콰트로 치킨 브리또까지, 다양한 종류를
													골라 먹을 수 있어 좋답니다.</p>
											</div>
										</div>
										<div class="goods_point">
											<h3>
												<span>Kurly's Check Point</span>
											</h3>
											<div class="context last">
												<div class="pic">
													<img
														src="//img-cf.kurly.com/shop/data/goodsview/20200225/gv30000082580_1.jpg">
												</div>
											</div>
										</div>
										<div class="goods_pick">
											<h3>
												<span>Kurly’s Pick</span>
											</h3>
											<div class="context ">
												<div class="pic">
													<img
														src="//img-cf.kurly.com/shop/data/goodsview/20210330/gv30000163363_1.jpg">
												</div>
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">01.
															핫치킨 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅 노트</b> :
													닭다리살을 잘게 자른 뒤 매콤하게 양념해 한국인의 입맛에도 잘 맞아요. 아삭아삭한 야채며 치즈와도 잘
													어울린답니다.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">02.
															고구마치즈 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅 노트</b>
													: 부드럽게 으깬 고구마와 치즈, 양파, 파인애플을 섞어 달콤한 감칠맛을 냈어요.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">03.
															콤비네이션 피자 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 너무 자극적이지 않으면서도 햄과 올리브, 야채로 콤비네이션 피자의 맛을 제대로 살려냈어요.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">04.
															하와이안 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅 노트</b>
													: 치즈와 햄, 파인애플로 하와이안 피자의 풍미를 그대로 담은 제품이에요.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">05.
															스파이시 치킨 가라아게 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 매콤하게 튀겨낸 치킨과 야채가 기분 좋은 조화를 이뤄요. 살짝 매콤한 맛이기에 식사 대용으로도
													충분합니다.
												</p>
											</div>

											<div class="context ">
												<div class="pic">
													<img
														src="//img-cf.kurly.com/shop/data/goodsview/20210330/gv40000163368_1.jpg">
												</div>
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">06.
															불고기 크림 브리또 </span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 달콤 짭조름한 불고기를 담백한 또띠아에 싸서 먹는 듯한 기분이 들어요. 매운 맛이 나는 재료가
													하나도 들어가지 않아 아이들에게 챙겨주기 좋아요.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">07.
															까르보나라 치킨 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 고소한 까르보나라 소스에 닭고기, 베이컨, 브로콜리 등의 재료가 어우러져 부드러움이 배가 된
													상품이에요. 순하고 담백한 맛이라, 누구나 쉽게 즐길 수 있지요.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">08.
															콰트로 치킨 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 모짜렐라, 체다 등 다채로운 4가지 치즈와 닭고기를 넣은 브리또예요. 토마토 소스가 첨가되어,
													느끼하지 않게 먹을 수 있답니다.
												</p>
											</div>

											<div class="context ">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">09.
															모닝 에그 베이컨 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 부드러운 스크램블 에그를 베이스로, 베이컨과 3가지 치즈를 넣은 브리또예요. 아침에 가볍게 먹기
													좋아요.
												</p>
											</div>

											<div class="context last">
												<p class="words">
													<strong class="sub_tit"> <span class="option_tit">10.
															바베큐 포크 브리또</span></strong> <b>・중량</b> : 1봉 (125g)<br> <b>・테이스팅
														노트</b> : 잘게 찢은 풀드 포크와 4가지 치즈에 바베큐 양념을 더한 브리또예요. 바베큐 소스 특유의 풍미가
													매력적입니다.
												</p>
											</div>
										</div>
										<div class="goods_tip">
											<h3>
												<span>Kurly’s Tip</span>
											</h3>
											<div class="tip_box">
												<div class="context">
													<p class="words">
														<strong>이렇게 조리하세요</strong> <b>전자레인지 조리법</b><br> 1.
														제품의 포장지를 살짝 뜯어주세요.<br> 2. 전자레인지에 제품을 넣은 후 1000W에서 1분
														50초, 700W에서 2분 30초 동안 조리하세요.<br> <br> <b>가정용
															오븐 조리법</b><br> 1. 제품을 포장지에서 완전히 꺼내 오븐용 용기에 담아주세요.<br>
														2. 180℃로 예열한 오븐에 브리또를 넣고 13분 동안 조리하세요.
													</p>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="goods-view-infomation-content" id="goods-infomation">
									<div id="goods-image">
										<div id="goods_pi">
											<p class="pic">
												<img
													src="//img-cf.kurly.com/shop/data/goodsview/20210809/gv30000209990_1.jpg">
											</p>
										</div>
									</div>
									<table width="100%" border="0" cellpadding="0" cellspacing="1"
										class="extra-information">
										<tbody>
											<tr>
												<th scope="row" class="goods-view-form-table-heading">식품의유형</th>
												<td>즉석조리식품(가열하여 섭취하는 냉동식품)</td>
												<th scope="row" class="goods-view-form-table-heading">생산자및소재지</th>
												<td>남향푸드또띠아 / 인천광역시 남동구 남동서로 24</td>
											</tr>
											<tr>
												<th scope="row" class="goods-view-form-table-heading">제조연월일,유통기한또는품질유지기한</th>
												<td>제품 별도 라벨 표기 참조</td>
												<th scope="row" class="goods-view-form-table-heading">포장단위별용량(중량),수량</th>
												<td>125g</td>
											</tr>
											<tr>
												<th scope="row" class="goods-view-form-table-heading">원재료명및함량</th>
												<td>상품설명 및 상품이미지 참조</td>
												<th scope="row" class="goods-view-form-table-heading">영양성분</th>
												<td>상품설명 및 상품이미지 참조</td>
											</tr>
											<tr>
												<th scope="row" class="goods-view-form-table-heading">유전자변형식품에해당하는경우의표시</th>
												<td>해당사항 없음</td>
												<th scope="row" class="goods-view-form-table-heading">영유아식또는체중조절식품등에해당하는경우표시광고사전심의필유무및부작용발생가능성</th>
												<td>해당사항 없음</td>
											</tr>
											<tr>
												<th scope="row" class="goods-view-form-table-heading">수입식품에해당하는경우“식품위생법에따른수입신고를필함＂의문구</th>
												<td>해당사항 없음</td>
												<th scope="row" class="goods-view-form-table-heading">소비자상담관련전화번호</th>
												<td>마켓컬리 고객행복센터 (1644-1107)</td>
											</tr>
											<tr>
											</tr>
										</tbody>
									</table>

									<div class="whykurly_area">
										<div class="row">
											<strong class="tit_whykurly">WHY KURLY</strong>
											<div id="why_kurly" class="txt_area">
												<div class="why-kurly">
													<div class="col">
														<div class="icon">
															<img src="https://res.kurly.com/pc/ico/1910/01_check.svg">
														</div>
														<div class="info">
															<div class="title">깐깐한 상품위원회</div>
															<div class="desc">
																<p>
																	나와 내 가족이 먹고 쓸 상품을 고르는<br> 마음으로 매주 상품을 직접 먹어보고,<br>
																	경험해보고 성분, 맛, 안정성 등 다각도의<br> 기준을 통과한 상품만을 판매합니다.
																</p>
																<!---->
															</div>
														</div>
													</div>
													<div class="col">
														<div class="icon">
															<img src="https://res.kurly.com/pc/ico/1910/02_only.svg">
														</div>
														<div class="info">
															<div class="title">차별화된 Kurly Only 상품</div>
															<div class="desc">
																<p>
																	전국 각지와 해외의 훌륭한 생산자가<br> 믿고 선택하는 파트너, 마켓컬리.<br>
																	3천여 개가 넘는 컬리 단독 브랜드, 스펙의<br> Kurly Only 상품을 믿고
																	만나보세요.
																</p>
																<span class="etc">(온라인 기준 / 자사몰, 직구 제외)</span>
															</div>
														</div>
													</div>
													<div class="col">
														<div class="icon">
															<img src="https://res.kurly.com/pc/ico/1910/03_cold.svg">
														</div>
														<div class="info">
															<div class="title">신선한 풀콜드체인 배송</div>
															<div class="desc">
																<p>
																	온라인 업계 최초로 산지에서 문 앞까지<br> 상온, 냉장, 냉동 상품을 분리 포장 후<br>
																	최적의 온도를 유지하는 냉장 배송 시스템,<br> 풀콜드체인으로 상품을 신선하게
																	전해드립니다.
																</p>
																<span class="etc">(샛별배송에 한함)</span>
															</div>
														</div>
													</div>
													<div class="col">
														<div class="icon">
															<img src="https://res.kurly.com/pc/ico/1910/04_price.svg">
														</div>
														<div class="info">
															<div class="title">고객, 생산자를 위한 최선의 가격</div>
															<div class="desc">
																<p>
																	매주 대형 마트와 주요 온라인 마트의 가격<br> 변동 상황을 확인해 신선식품은 품질을<br>
																	타협하지 않는 선에서 최선의 가격으로,<br> 가공식품은 언제나 합리적인 가격으로<br>
																	정기 조정합니다.
																</p>
																<!---->
															</div>
														</div>
													</div>
													<div class="col">
														<div class="icon">
															<img src="https://res.kurly.com/pc/ico/1910/05_eco.svg">
														</div>
														<div class="info">
															<div class="title">환경을 생각하는 지속 가능한 유통</div>
															<div class="desc">
																<p>
																	친환경 포장재부터 생산자가 상품에만<br> 집중할 수 있는 직매입 유통구조까지,<br>
																	지속 가능한 유통을 고민하며 컬리를 있게<br> 하는 모든 환경(생산자, 커뮤니티,
																	직원)이<br> 더 나아질 수 있도록 노력합니다.
																</p>
																<!---->
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>


									<div class="happy_center fst">
										<div class="happy">
											<h4 class="tit">고객행복센터</h4>
											<p class="sub">
												<span class="emph">궁금하신 점이나 서비스 이용에 불편한 점이 있으신가요?</span><span
													class="bar"></span> 문제가 되는 부분을 사진으로 찍어<span class="bar"></span>
												아래 중 편하신 방법으로 접수해 주시면<span class="bar"></span> 빠르게 도와드리겠습니다.
											</p>
										</div>
										<ul class="list">
											<li>
												<div class="tit">전화 문의 1644-1107</div>
												<div class="sub">오전 7시~오후 7시 (연중무휴)</div>
											</li>
											<li>
												<div class="tit">카카오톡 문의</div>
												<div class="sub">오전 7시~오후 7시 (연중무휴)</div>
												<div class="expend">
													카카오톡에서 ’마켓컬리’를 검색 후<br> 대화창에 문의 및 불편사항을<br>
													남겨주세요.
												</div>
											</li>
											<li>
												<div class="tit">홈페이지 문의</div>
												<div class="sub">
													24시간 접수 가능<br> 로그인 &gt; 마이컬리 &gt; 1:1 문의
												</div>
												<div class="expend">고객센터 운영 시간에 순차적으로 답변해드리겠습니다.</div>
											</li>
										</ul>
									</div>
									<div class="happy_center on">
										<div class="happy unfold">
											<h4 class="tit">교환 및 환불 안내</h4>
											<p class="sub">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
											<a data-child-id="refund" href="#none" class="asked"> <span
												class="txt" data-open="자세히 보기" data-close="닫기">닫기</span> <img
												src="https://res.kurly.com/pc/ico/2001/pc_arrow_open@2x.png"
												alt="아이콘" class="ico">
											</a>
										</div>
										<div class="happy_faq fst">
											<span class="item">01. 상품에 문제가 있는 경우</span>
											<div id="refund1" class="questions hide">
												<p class="desc">
													받으신 상품이 표시·광고 내용 또는 계약 내용과 <span class="bar_m"></span>다른
													경우에는 상품을 받은 날부터 3개월 이내, <span class="bar_m bar_pc"></span>그
													사실을 알게 된 날부터 30일 이내에 <span class="bar_m"></span>교환 및 환불을
													요청하실 수 있습니다.
												</p>
												<p class="space"></p>
												<p class="desc">
													상품의 정확한 상태를 확인할 수 있도록 <span class="bar_m"></span>사진을 함께
													보내주시면 더 빠른 상담이 가능합니다.
												</p>
												<p class="noti">※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.</p>
											</div>
										</div>
										<div class="happy_faq">
											<span class="item">02. 단순 변심, 주문 착오의 경우</span>
											<div id="refund2" class="questions hide">
												<strong class="subject no_padding">신선 / 냉장 / 냉동 식품</strong>
												<p class="desc">
													재판매가 불가한 상품의 특성상, <span class="bar_m"></span>단순 변심, 주문 착오 시
													<span class="bar_m"></span>교환 및 반품이 어려운 점 양해 부탁드립니다.
												</p>
												<p class="space"></p>
												<p class="desc">
													상품에 따라 조금씩 맛이 다를 수 있으며, <span class="bar_m"></span>개인의 기호에
													따라 같은 상품도 다르게 <span class="bar_m"></span>느끼실 수 있습니다.
												</p>
												<strong class="subject">유통기한 30일 이상 식품 <span
													class="bar_m"></span>(신선 / 냉장 / 냉동 제외) &amp; 기타 상품
												</strong>
												<p class="desc">
													상품을 받은 날부터 7일 이내에 <span class="bar_m"></span>고객행복센터로
													문의해주세요.
												</p>
												<p class="noti">
													※ 단순 변심으로 인한 교환 또는 환불의 경우 <span class="bar_m"></span>고객님께서
													배송비 6,000원을 부담하셔야 합니다. <span class="bar_m bar_pc"></span>(주문
													건 배송비를 결제하셨을 경우 3,000원)
												</p>
											</div>
										</div>
										<div class="happy_faq">
											<span class="item">03. 교환·반품이 불가한 경우</span>
											<div id="refund3" class="questions hide">
												<p class="desc">
													다음에 해당하는 교환·환불 신청은 <span class="bar_m"></span>처리가 어려울 수 있으니
													양해 부탁드립니다.
												</p>
												<ul class="list_questions">
													<li>고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우 <span
														class="bar_m bar_pc"></span>(단, 상품의 내용을 확인하기 위해 포장 등을 훼손한
														경우는 제외)
													</li>
													<li>고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우</li>
													<li>시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우</li>
													<li>복제가 가능한 상품의 포장이 훼손된 경우</li>
													<li>고객님의 주문에 따라 개별적으로 생산되는 <span class="bar_m"></span>상품의
														제작이 이미 진행된 경우
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="happy_center on">
										<div class="happy unfold" style="border-top: none;">
											<h4 class="tit">주문 취소 안내</h4>
											<ul class="sub">
												<li><strong class="emph">- [입금 확인] 단계</strong> 마이컬리
													&gt; 주문 내역 상세페이지에서 직접 취소하실 수 있습니다.</li>
												<li><strong class="emph">- [입금 확인] 이후 단계</strong>
													고객행복센터로 문의해주세요.</li>
												<li><strong class="emph">- 결제 승인 취소 / 환불</strong> 결제
													수단에 따라 영업일 기준 3~7일 내에 처리해드립니다.</li>
											</ul>
											<a href="#none" class="asked"> <span class="txt"
												data-open="자세히 보기" data-close="닫기">닫기</span> <img
												src="https://res.kurly.com/pc/ico/2001/pc_arrow_open@2x.png"
												alt="아이콘" class="ico">
											</a>
										</div>
										<div class="happy_faq">
											<span class="item">주문 취소 관련</span>
											<div class="questions hide">
												<p class="desc">- [상품 준비 중] 이후 단계에는 취소가 제한되는 점 고객님의 양해
													부탁드립니다.</p>
												<p class="desc">- 비회원은 모바일 App / Web &gt; 마이컬리 &gt; 비회원
													주문 조회 페이지에서 주문을 취소하실 수 있습니다.</p>
												<p class="desc">- 일부 예약 상품은 배송 3~4일 전에만 취소하실 수 있습니다.</p>
												<p class="desc">- 주문 상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매해
													주세요.</p>
											</div>
										</div>
										<div class="happy_faq">
											<span class="item">결제 승인 취소 / 환불 관련</span>
											<div class="questions hide">
												<p class="desc">- 카드 환불은 카드사 정책에 따르며, 자세한 사항은 카드사에
													문의해주세요.</p>
												<p class="desc">- 결제 취소 시, 사용하신 적립금과 쿠폰도 모두 복원됩니다.</p>
											</div>
										</div>
									</div>
									<div class="happy_center lst">
										<div class="happy unfold">
											<h4 class="tit">배송관련 안내</h4>
											<p class="sub">배송 과정 중 기상 악화 및 도로교통 상황에 따라 부득이하게 지연 배송이
												발생될 수 있습니다.</p>
										</div>
									</div>

								</div>
								<div class="goods-view-infomation-content" id="goods-review"
									data-load="0"></div>
								<div class="goods-view-infomation-content" id="goods-qna">
									<div class="board-container">
										<div id="productInquiryBoard" data-productno="27449"
											data-boardpagesize="10" data-boardtype="product"
											data-devicetype="pc">
											<div class="board-header-container">
												<strong>PRODUCT Q&amp;A</strong>
												<ul class="list-description">
													<li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당
														게시판으로 이동될 수 있습니다.</li>
													<li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a
														href="/shop/mypage/mypage_qna.php">1:1 문의</a>에 남겨주세요.
													</li>
												</ul>
											</div>
											<div class="board-item-container product">
												<div class="inquiry-board-header">
													<div style="width: 710px;">제목</div>
													<div>작성자</div>
													<div>작성일</div>
													<div>답변상태</div>
												</div>
												<ul class="inquiry-notice-list"></ul>
												<ul class="board-list">
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div></li>
													<li class="inquiry-item loading"><div
															class="product-detail">
															<strong></strong>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
														</div>
														<div class="item-cell">
															<p class="txt_sub text_medium normal "></p>
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
													<button class="btn active">
														<span>문의하기</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 끝 -->
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
	</div>

	<a href="#top" id="pageTop">맨 위로가기</a>


	<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
		style="display: none; width: 100%; height: 600px;"></iframe>
</html>