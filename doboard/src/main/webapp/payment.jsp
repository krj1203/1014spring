<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="style/paymentStyle.css">
</head>
<body>

	<div class="tit_page">
		<h2 class="tit">주문서</h2>
	</div>
	<div id="main">
		<div id="content"></div>
		<div class="user_form">

			<h2 class="tit_section fst">주문상품</h2>
			<div id="itemList" class="page_aticle order_goodslist">
				<div class="info_product">
					<a class="btn" href="#none"><span class="screen_out">펼침
							/ 닫힘</span></a>
					<div class="short_info">샤인마토 1kg상품을 주문합니다.</div>
				</div>
				<ul class="list_product">
					<li><div class="thumb">
							<img
								src="https://img-cf.kurly.com/shop/data/goods/1634802969719i0.jpg"
								alt="상품이미지">
						</div>
						<div class="name">
							<div class="inner_name">샤인마토 1kg</div>
						</div>
						<div class="ea">1개</div>
						<div class="info_price">
							<span class="num"><span class="price">9,968원</span><span
								class="cost">17,800원</span></span>
						</div></li>
				</ul>
			</div>
			<h2 class="tit_section" id="titFocusOrderer">주문자 정보</h2>
			<div class="order_section data_orderer">
				<table class="goodsinfo_table ">
					<tbody>
						<tr class="fst">
							<th>보내는 분</th>
							<td>김보광 <input type="hidden" name="orderer_name" value="김보광">
							</td>
						</tr>
						<tr>
							<th>휴대폰</th>
							<td>01077526456 <input type="hidden" name="orderer_phone"
								value="01077526456">
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="hidden" id="email" name="orderer_email"
								value="kbkwkd@naver.com" option="regEmail">
								kbkwkd@naver.com
								<p class="txt_guide">
									<span class="txt txt_case1">이메일을 통해 주문처리과정을 보내드립니다.</span> <span
										class="txt txt_case2">정보 변경은 <span class="txt_desc">마이컬리
											&gt; 개인정보 수정</span> 메뉴에서 가능합니다.
									</span>
								</p></td>
						</tr>
					</tbody>
				</table>
			</div>



			<input type="hidden" name="zonecode" id="zonecode" value="05537">
			<input type="hidden" name="zipcode[]" id="zipcode0" value="">
			<input type="hidden" name="zipcode[]" id="zipcode1" value="">
			<input type="hidden" name="address" id="address"
				value="서울 송파구 풍납동 403-6"> <input type="hidden"
				name="road_address" id="road_address"
				value="서울 송파구 올림픽로47길 24 (토성빌라)"> <input type="hidden"
				name="address_sub" id="address_sub" value="104호"> <input
				type="hidden" name="deliPoli" id="deliPoli" value="0"> <input
				type="hidden" name="deliveryType" id="deliveryType" value="direct">

			<input type="hidden" id="means_inp" name="means" value=""> <input
				type="hidden" id="addressBookNo" name="addressbook_no"
				value="9955623">
			<h2 class="tit_section" id="divAddressWrapper">
				배송 정보 <span class="desc">배송 휴무일: 샛별배송(휴무없음), 택배배송(일요일)</span>
			</h2>

			<div class="address_info">
				<a href="#none" id="btnLayerInfo" class="desc">배송지 변경 안내</a>
				<div class="layer_info" id="layerInfo">
					<strong class="emph">장바구니, 홈</strong>에서 <br> 배송지를 변경할 수 있어요.
				</div>
				<div class="layer_info on" id="layerInfo">
					<strong class="emph">장바구니, 홈</strong>에서 <br> 배송지를 변경할 수 있어요.
				</div>
			</div>


			<div class="order_section order_address" id="dataDelivery">
				<h3 href="#none" class="section_crux">배송지</h3>
				<div class="section_full">
					<span class="address" id="divDestination" style=""> <span
						class="default on" id="addrDefault" data-text="기본배송지">기본배송지</span>
						<span class="addr" id="addrInfo">서울 송파구 올림픽로47길 24 (토성빌라)
							104호</span> <span class="tag" id="addrTags"> <span
							class="badge star" id="addrBadge">샛별배송</span>
					</span>
					</span>
				</div>
			</div>

			<div class="order_section order_reception" id="divReception" style="">
				<h3 class="section_crux">상세 정보</h3>
				<div class="section_full">

					<div class="receiving off" id="receiverInfo">받으실 분 정보를 입력해
						주세요</div>
					<div class="way" id="wayPlace" style="display: none;">
						<span class="place" id="areaInfo" style="display: none;"></span> <span
							class="txt off" id="meanType">받으실 장소를 입력해 주세요</span>
					</div>
					<button type="button" id="btnUpdateSubAddress" data-address-no=""
						class="btn active">입력</button>
				</div>
			</div>
			<div id="package-method" class="order_section reusable_packaging"></div>
			<div id="bnrOrder" class="bnr_order" style="display: block;">
				<img
					src="https://res.kurly.com/kurly/img/2021/banner-order-paper_1050_107%402x.jpg"
					alt="All Paper Challenge">
				<p class="screen_out">사람에게도 환경에도 더 이로운 배송 친환경 포장재 자세히 보기</p>
			</div>

			<div id="divFrozen" class="order_section order_pack">
				<h3 class="section_crux">냉동상품 포장*</h3>
				<div class="section_full">
					<input type="hidden" name="isFrozenPack" value=""> <label
						class="label_radio checked"> <input type="radio"
						name="frozen_product_packing_option" value="0" checked="checked">
						<span class="ico"></span> 종이박스 포장 (기본)
					</label> <label class="label_radio"><input type="radio"
						name="frozen_product_packing_option" value="1"> <span
						class="ico"></span> 스티로폼 박스 포장 </label>
				</div>
			</div>
			<div class="tax_absolute">
				<div class="inner_sticky" id="sticky" style="top: 0px;">
					<h2 class="tit_section">결제금액</h2>
					<div id="orderitem_money_info">
						<dl class="amount fst">
							<dt class="tit">주문금액</dt>
							<dd class="price">
								<span id="productsTotalPrice">9,968</span> 원
							</dd>
						</dl>
						<dl class="amount sub">
							<dt class="tit">상품금액</dt>
							<dd class="price">
								<span id="paper_goodsprice">17,800</span> 원
							</dd>
						</dl>
						<dl class="amount sub">
							<dt class="tit">상품할인금액</dt>
							<dd class="price sales_area">
								<span class="pm_sign normal" style="display: inline;">-</span> <span
									id="special_discount_amount" class="normal">7,832</span> 원
							</dd>
							<dd id="paper_sale" class="screen_out">7832</dd>
						</dl>
						<dl class="amount">
							<dt class="tit">배송비</dt>
							<dd class="price delivery_area">
								<div id="paper_delivery_msg1" style="display: none;">
									<span class="pm_sign" style="display: none;">+</span> <span
										id="paper_delivery" class="">0</span> <span
										id="paper_delivery2" style="display: none">0</span> 원
								</div>
								<div id="paper_delivery_msg2" style="display: block;">0 원</div>
								<div id="paper_delivery_msg_extra" class="small"
									style="display: none;"></div>
								<span id="free_delivery_coupon_msg" class="screen_out">미적용</span>
								<input type="hidden" name="free_delivery" value="0">
							</dd>
						</dl>
						<dl class="amount">
							<dt class="tit">쿠폰할인금액</dt>
							<dd class="price coupon_area">
								<span class="pm_sign" style="display: none;">-</span> <span
									id="apr_coupon_data">0</span> 원 <input type="hidden"
									name="coupon" size="12" value="0" readonly="">
							</dd>
						</dl>
						<dl class="amount">
							<dt class="tit">적립금사용</dt>
							<dd class="price">
								<span class="num pay_sum" id="paper_reserves">0 원</span> <input
									type="hidden" name="coupon_emoney" size="12" value="0"
									readonly="">
							</dd>
						</dl>
						<dl class="amount lst">
							<dt class="tit">최종결제금액</dt>
							<dd class="price">
								<span id="paper_settlement">9,968</span> <span class="won">원</span>
							</dd>
						</dl>
						<p class="reserve" style="display: block;">
							<span class="ico">적립</span> 구매 시 <span class="emph"><span
								id="expectAmount">498</span> 원 (<span class="ratio">5</span>%)
								적립</span>
						</p>
					</div>
				</div>
			</div>

			<div class="data_payment">
				<div class="tbl_left">
					<h2 class="tit_section">쿠폰 / 적립금</h2>

					<table class="goodsinfo_table">
						<tbody>
							<tr>
								<th>쿠폰 적용</th>
								<td>
									<div class="view_popselbox">
										<div id="popselboxView" class="select_box off">
											사용 가능 쿠폰 <span id="useCoupon">0</span>개 / 전체 <span
												id="haveCoupon">0</span>개
										</div>
										<div id="popSelbox" class="layer_coupon">
											<ul id="addpopSelList" class="list">
												<li class="fst checked ">
													<div class="inner_item">
														<span class="txt_tit default">쿠폰 적용 안 함</span>
													</div>
												</li>
											</ul>
											<div class="coupon_list_default" style="display: none;">
												<li class="fst checked ">
													<div class="inner_item">
														<span class="txt_tit default">쿠폰 적용 안 함</span>
													</div>
												</li>
											</div>
											<div id="listItem" style="display: none">
												<div class="inner_item">
													<div class="item_row">
														<div class="item_td left">
															<span class="txt_apr"></span>
														</div>
														<div class="item_td">
															<span class="txt_tit"></span> <span class="txt_desc"></span>
															<span class="txt_expire"></span>
															<div id="apply_delivery_coupon"
																class="is_delivery_coupon" style="display: none;"></div>
															<div class="txt_apply_coupon" style="display: none;"></div>
															<ul id="payment_gateways" style="display: none;"></ul>
															<div id="point_allowed" style="display: none;"></div>
															<span class="credit_card_id" style="display: none;"></span>
														</div>
													</div>
												</div>
											</div>
											<button id="popSelboxCancel" type="button"
												class="btn btn_cancel screen_out">취소</button>
											<button id="popSelboxSelect" type="button"
												class="btn btn_conf screen_out">확인</button>
											<button id="popSelboxClose" type="button"
												class="btn_close screen_out">닫기</button>
										</div>
									</div>
									<div id="notavailableMsg" class="txt_notavailable"
										style="display: none;"></div>
									<p class="txt_inquiry">
										<a href="#none" class="link" id="happyTalk">쿠폰사용문의(카카오톡)</a>
									</p>
								</td>
							</tr>
							<tr class="emoney_use ">
								<th class="no_emoney">적립금 적용 <input type="hidden" value="0"
									name="checkEmoney">
								</th>
								<td>사용 가능한 적립금이 없습니다. <input type="hidden"
									name="using_point" id="emoney" value="0">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


			<div class="data_method">
				<h2 class="tit_section" id="titFocusMethod">결제 수단</h2>

				<input type="hidden" name="escrow" value="N">
				<div class="type_form" style="display: block;">
					<input type="hidden" name="save_payment_method" value="false">
					<label> <input type="checkbox"
						name="check_save_payment_method"> <span class="ico"></span>
						선택한 결제 수단을 다음에도 사용
					</label>
				</div>
				<table class="goodsinfo_table tbl_left">
					<tbody>
						<tr>
							<th>결제수단 선택</th>
							<td>

								<div class="payment_first on">
									<label id="kakaopayPayment" class="kakaopay"
										data-payment="kakao"> <input type="radio"
										name="settlekind" value="kakao-pay"
										onclick="input_escrow(this,'N')" checked="checked"> <img
										src="https://res.kurly.com/mobile/service/order/2109/ico_kakao-pay.png"
										alt="카카오페이" class="logo_kakao"> <span
										id="paymentBenefitKakao" class="icon_benefit"
										style="display: inline;">혜택</span>
									</label>
									<p class="notice_card kakao">카카오페이 전용 쿠폰 사용 시, 카카오페이 결제만
										가능합니다.</p>
								</div>

								<ul class="menu_payment">
									<li class="card"><label class="checked"
										id="settlekindCard" onclick="option_pay_standard('');"
										data-payment="card"> <input type="radio"
											name="settlekind" value="c" onclick="input_escrow(this,'N');">
											신용카드 <span id="paymentBenefitCard" class="icon_benefit"
											style="display: inline;">혜택</span>
									</label></li>
									<li class="simple"><label for="paymentChai"
										data-payment="simple"> 간편결제 <span
											id="paymentBenefitSimple" class="icon_benefit"
											style="display: inline;">혜택</span>
									</label></li>
									<li class="phone"><label data-payment="phone"> <input
											type="radio" name="settlekind" value="h"
											onclick="input_escrow(this,'N')"> 휴대폰
									</label></li>
								</ul>

								

								

								<div class="benefit_event">
									<div id="cardBenefitKakaopay" class="benefit kakao on">
										<strong class="tit_benefit">카카오페이</strong>
										<p class="sub_benefit">
											6만원 이상 결제 시 <span>3천원 즉시할인</span>
										</p>
										<p class="info_benefit">
											<span class="info">· 10/25 11시 ~ 10/31 24시, 카카오페이 ID당
												1회(실명인증 기준), 선착순</span>
										</p>
									</div>

									
										<div id="cardBenefitChai" class="simple">
											<strong class="tit_benefit">차이</strong>
											<p class="sub_benefit">
												2만원 이상 생애 첫 결제 시 <span>3천원 즉시할인</span>
											</p>
											<p class="info_benefit">
												<span class="info">· 10/1 0시 ~ 10/31 24시, 기간 내 차이 ID당
													1회, 선착순</span>
											</p>
										</div>
										

							</td>
						</tr>
						<tr>
							<td class="txt_notice" colspan="2">
								<ul>
									<li>※ 카카오페이, 차이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점
										양해부탁드립니다.</li>
									<li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의
										구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li>

									<li id="coupon_typinfo" style="display: none">※ 무통장입금에서만
										사용가능한 쿠폰을 선택하였습니다. 다른 결제 수단을 선택하시려면 쿠폰을 제거 하여 주십시오.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="undeliver_way" value="2">

				<div id="cash" style="display: none;">
					<h2 class="tit_section">현금영수증발급</h2>
					<table class="goodsinfo_table">
						<tbody>
							<tr>
								<th>현금영수증</th>
								<td><label class="label_radio"> <input type="radio"
										name="cashreceipt" value="Y" onclick="cash_required()">
										신청
								</label> <label class="label_radio checked"> <input type="radio"
										name="cashreceipt" value="N" onclick="cash_required()"
										checked=""> 신청안함
								</label></td>
							</tr>
							<tr>
								<th>발행용도</th>
								<td><label class="label_radio checked"> <input
										type="radio" name="cashuseopt" value="0" onclick="setUseopt()"
										checked=""> 소득공제용
								</label> <label class="label_radio"> <input type="radio"
										name="cashuseopt" value="1" onclick="setUseopt()">
										지출증빙용
								</label></td>
							</tr>
							<tr>
								<th><span id="cert_0" style="display: block;">휴대폰번호</span>
									<span id="cert_1" style="display: none;">사업자번호</span></th>
								<td style="padding-top: 14px;"><input type="text"
									name="cashcertno" value="" option="regNum" class="line"
									placeholder="- 생략"></td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div style="clear: both;"></div>
			<h2 class="tit_section" id="titFocusAgree">개인정보 수집/제공</h2>
			<table class="goodsinfo_table">
				<tbody>
					<tr>
						<td class="reg_agree">
							<div class="bg_dim"></div>
							<div class="check type_form">
								<label class="agree_check"> <input type="checkbox"
									name="ordAgree" value="y" required="" fld_esssential=""
									label="결제 진행 필수 동의" msgr="결제 진행 필수 동의 내용에 동의하셔야 결제가 가능합니다.">
									<span class="ico"></span> 결제 진행 필수 동의
								</label>
								<ul class="list_agree">
									<li><span class="subject">개인정보 수집 · 이용 및 처리 동의 <span
											class="emph">(필수)</span></span> <a href="#terms" class="link_terms">보기</a>
									</li>
									<li id="pgTerms" style="display: none;"><span
										class="subject">결제대행 서비스 약관 동의 <span class="emph">(필수)</span></span>
										<a href="#pgTerms" class="link_terms">보기</a></li>
								</ul>
							</div> <!--<button type="button" class="btn_ok">확인</button> -->
						</td>
					</tr>
				</tbody>
			</table>

			<div id="paymentMethodResult">
				<input type="hidden" name="payment_method" value="">
			</div>
			<input type="submit" value="9,968원 결제하기" class="btn_payment">

			<ul class="notice_order">
				<li>직접 주문취소는 ‘입금확인’ 상태일 경우에만 가능합니다.</li>
				<li>미성년자가 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.</li>
				<li>상품 미배송 시, 결제수단으로 환불됩니다.</li>
				<li>카카오페이, 차이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불됩니다.</li>
			</ul>

		</div>
</body>
</html>