<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<link rel="styleSheet" href="do_customer_inquiry2.css">

</head>
<body class="main-index" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">

	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">
			<jsp:include page="header.jsp"></jsp:include><!-- header부분 -->
			<div id="main">
				<div id="content">
					<jsp:include page="sidemenu.jsp"></jsp:include><!-- 오른쪽 스크롤메뉴 부분 -->

					<div class="page_aticle aticle_type2">	<!-- Main 시작 -->
						<jsp:include page="mainLeft1.jsp"></jsp:include>	<!-- Mainleft -->
						<div class="page_aticle aticle_type2">	<!-- MainCenter 시작 -->

							<div class="page_section">
								<div class="head_aticle">
									<h2 class="tit">대량주문 문의</h2>
								</div>
								<ul class="list_type1">
									<li>
										<span class="ico">·</span>
										<p class="txt">최소 구매금액 100만원 이상 시 해당 서비스를 이용하실 수 있습니다. (기준 충족 시 다중 배송 가능 )</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">여러 주소지에 배송 주문 시, 주소지 1곳 당 결제금액이 4만원 미만일 경우주소지당 개별 배송비가 발생 됩니다.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">문의를 남겨주시면 빠른 시간 내에 상담 전화 드립니다. ( ☎ 1644 - 1108, 메일 : 
											<a href="mailto:kurlygift@kurlycorp.com" class="txt_mail">kurlygift@kurlycorp.com</a>)
										</p>
									</li>
								</ul>
								
								<form name="frm" method="post" enctype="multipart/form-data" action="/api/bulk_order/action.php" onsubmit="return checkRequied()">
									<div class="user_wrap">
										<div class="reg_bulkorder">
											<table class="user_form">
												<tbody>
													<tr>
														<th scope="row">신청하는 분 이름 <span class="ico">*</span></th>
														<td>
															<input type="text" name="name" label="이름" class="inp_area" placeholder="신청하는 분 이름을 입력해주세요." value="">
														</td>
													</tr>
													<tr>
														<th scope="row">신청하는 분 연락처 <span class="ico">*</span></th>
														<td>
															<input type="text" name="phoneOrder" label="연락처"class="inp_area" placeholder="'-' 없이 숫자만">
														</td>
													</tr>
													<tr>
														<th scope="row">신청하는 분 이메일 <span class="ico">*</span></th>
														<td>
															<input type="text" name="email" label="이메일" class="inp_area" placeholder="kurly@example.com">
															<p class="txt_info_email">이메일 주소를 작성해주시면 원활한 소통이가능합니다.</p>
														</td>
													</tr>
													<tr>
														<th scope="row">수령 희망일 <span class="ico">*</span></th>
														<td>
															<div class="btn_calendar">
																<span class="select_calendar">
																	<img src="//res.kurly.com/pc/ico/1117/btn_calendar.png" width="20" height="20" class="ico_calendar">
																	<span class="txt_calendar" onclick="calendar(event)">&nbsp;</span>
																	<a href="#none" onclick="calendar(event)" id="receive_date_anchor" class="calendar_selected_area"></a>
																	<input type="hidden" name="receive_date" id="receive_date" value="">
																</span>
															</div>
															<div class="txt_warning">
																수령 희망일이 명확하지 않을 경우, 가장 빠른 예상 일자를 선택바랍니다.<br> 대량 주문은
																모두 택배로 배송되며, 희망 수령일은 화/수/목/금/토요일 중 선택 가능합니다.(일/월요일 제외)
															</div>
														</td>
													</tr>
													<tr>
														<th>배송지</th>
														<td>
															<ul class="delivery_way">
																<label class="label_radio checked">
																	<input type="radio" name="receive_type" value="2" id="delivery_way2" class="styled-radio-black" checked="checked">
																	여러 곳으로 수령
																</label>
																
																<label class="label_radio">
																	<input type="radio" name="receive_type" value="1" id="delivery_way1" class="styled-radio-black">
																	한 곳으로 수령
																</label>
															</ul>
														</td>
													</tr>
													<tr>
														<th>문의 사항</th>
														<td>
															<textarea class="user_textarea" name="inquery" id="inquery"></textarea>
															<span class="txt_warning">원활한 상담을 위해 상품명, 수량, 상담전화 희망 시간 등을 적어주세요.</span>
														</td>
													</tr>
													<tr>
														<th scope="row" class="">주의 사항</th>
														<td>
															<div class="desc">
																아래 경우 배송이 불가합니다.<br>
																<ul class="txt_lst type_hyphen">
																	<li>제주도 및 도서산간, 상품에 따른 배송 이외지역의 경우</li>
																	<li>수령 배송지가 명확하지 않을 경우</li>
																</ul>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="user_wrap user_form">
										<h1 class="tit_head">
											개인정보 수집·이용 동의 <span class="ico">*</span>
										</h1>
										<hr class="hr_purple">
										<div class="desc">
											<div class="reg_agree order_agree">
												<div class="bg_dim"></div>

												<div class="check check_view">
													<label class="inp_check label_check">
														<input type="checkbox" name="_agree">
														<span class="txt_checkbox">개인정보 수집·이용 동의
															<span class="txt_essential">(필수)</span>
														</span>
													</label>
													<a href="#none" class="link_agree link_essential">보기 &gt;</a>
												</div>

												<div class="layer layer_essential">
													<div class="inner_layer">
														<h4 class="tit_layer">개인정보 수집·이용 동의(필수)</h4>
														<div class="box_tbl">
															<table cellpadding="0" cellspacing="0" width="100%">
																<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
																<colgroup>
																	<col width="30%">
																	<col width="35%">
																	<col width="35%">
																</colgroup>
																<thead>
																	<tr>
																		<th scope="row">수집 목적</th>
																		<th scope="row">수집 항목</th>
																		<th scope="row">보유 기간</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>대량 주문문의</td>
																		<td>신청자 이름, 신청자 연락처, 신청자 이메일</td>
																		<td class="emph">문의 완료 후 30일 내</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<p class="txt_service">
															* 서비스 제공을 위해서 필요한 최소한의 개인정보입니다.
															동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수
															있습니다.
														</p>
														<button type="button" class="btn_ok">확인</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
												</div>

											</div>
											<hr class="hr_grey">
											<div align="center">
												<button class="bhs_button">문의하기</button>
											</div>
										</div>
									</div>
								</form>
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