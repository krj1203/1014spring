<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<script type="text/javascript">
	var $targetBtn = $('.search_date .btn_layer');
	var $targetLayer = $('.search_date .layer_search');
	var $targetSelector = $('.layer_search a');

	$targetSelector.each(function() {
		if ($(this).data('selected')) {
			$targetBtn.text($(this).data('selected'));
		}
	});
	$targetBtn.on('click', function(e) {
		e.preventDefault();
		$(this).toggleClass('on');
		$targetLayer.slideToggle(100);
	});
	$targetSelector.on('click', function(e) {
		e.preventDefault();
		var value = $(this).data('value');
		var text = $(this).text();
		$targetBtn.trigger('click').text(text);
		$('[name=sitemcd]').val(value);
		$('[name=frmList]').submit();
	});
</script>
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
							<form name="frmList" id="form" method="get" action="?">
								<div class="page_section">
									<div class="head_aticle">
										<h2 class="tit">
											자주하는 질문 
											<span class="tit_sub">고객님들께서 가장 자주하시는 질문을 모두모았습니다.</span>
										</h2>
									</div>
									<div class="search_date">
										<a href="#none" class="btn_layer">선택</a>
										<ul class="layer_search">
											<li><a href="#none" @click="searchResult" data-value="01" data-selected="">회원문의</a></li>
											<li><a href="#none" @click="searchResult" data-value="02" data-selected="">주문/결제</a></li>
											<li><a href="#none" @click="searchResult" data-value="03" data-selected="">취소/교환/반품</a></li>
											<li><a href="#none" @click="searchResult" data-value="04" data-selected="">배송문의</a></li>
											<li><a href="#none" @click="searchResult" data-value="05" data-selected="">쿠폰/적립금</a></li>
											<li><a href="#none" @click="searchResult" data-value="07" data-selected="">서비스 이용 및 기타</a></li>
										</ul>
										<input type="hidden" name="sitemcd" value="">
									</div>

									<div class="xans-element- xans-myshop xans-myshop-couponserial ">
										<table width="100%" class="xans-board-listheader">
											<tbody>
												<tr>
													<th width="70" class="input_txt">번호</th>
													<th width="135" class="input_txt">카테고리</th>
													<th class="input_txt">제목</th>
												</tr>
											</tbody>
										</table>
										<div>
											<div>
												<table width="100%" class="table_faq"
													onclick="view_content(this)" id="faq_7">
													<tbody>
														<tr>
															<td width="70" align="center">68</td>
															<td width="135" align="center">회원문의</td>
															<td style="cursor: pointer">아이디와 비밀번호가 생각나지 않아요. 어떻게찾을 수 있나요?</td>
														</tr>
													</tbody>
												</table>
												<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
													<table cellpadding="0" cellspacing="0" border="0">
														<tbody>
															<tr valign="top">
																<th style="color: #0000bf; width: 40px; padding-top: 1px;">
																	<img src="/shop/data/skin/designgj/img/common/faq_a.gif">
																</th>
																<td>(PC) 오른쪽 위의 [로그인] &gt; 화면 아래 [아이디 찾기] [비밀번호 찾기]<br>
																	<br> (모바일) 아래 탭에서 [마이컬리] &gt; 로그인 화면 아래 [아이디 찾기]
																	[비밀번호 찾기]<br> <br> <br> 를 통해 확인이 가능하며,
																	임시 비밀번호의 경우 회원가입시 등록하신 메일로 발송이 됩니다.<br> <br>
																	<br> 가입시 기재한 메일 주소가 기억나지 않으시거나 오류가 발생하는 경우, <br>
																	<br> 고객행복센터(1644-1107) 또는 카카오톡으로 문의 주시면 신속하게 도움
																	드리겠습니다.<br> - 카카오톡 상담(httpl//bit.ly/2LuOEA6)<br>
																	<br> <br> 상담시에는 고객님의 개인정보보호를 위해 기존에 사용하시던
																	비밀번호는 안내가 불가하며, 개인정보 확인 후 임시비밀번호를 설정해드립니다.
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div>
												<table width="100%" class="table_faq" onclick="view_content(this)" id="faq_31">
													<tbody>
														<tr>
															<td width="70" align="center">67</td>
															<td width="135" align="center">주문/결제</td>
															<td style="cursor: pointer">(샛별배송) 어제 주문했는데 오늘 아침에 배송이 안 됐어요. 왜 그런가요?</td>
														</tr>
													</tbody>
												</table>
												<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
													<table cellpadding="0" cellspacing="0" border="0">
														<tbody>
															<tr valign="top">
																<th
																	style="color: #0000bf; width: 40px; padding-top: 1px;"><img
																	src="/shop/data/skin/designgj/img/common/faq_a.gif"></th>
																<td>주문 마감시간 이후의 샛별배송 주문건은 다다음날 새벽에 배송됩니다.<br>
																	[샛별배송 주문 마감시간]<br> · 서울, 경기, 인천, 충청, 대전 : 밤 11시 <br>
																	· 대구 : 밤 8시<br> <br> <br> <br> (PC)
																	홈페이지 상단 고객님 성함 (마이컬리) &gt; 나의 주문내역 &gt; 주문내역상세<br>
																	(모바일) 마이컬리 &gt; 주문 내역 &gt; 주문내역상세<br> 에서 결제완료시간을
																	확인해주세요. <br> <br> <br> ※ 만일, 전일자 주문 마감시간
																	이전에 결제했음에도 불구하고 배송이 안 되었을 경우, 고객센터 (1644-1107) 또는 1:1
																	문의에 문의 남겨주세요.<br>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
										<div style="padding: 1px; border-top: 1px solid #e6e6e6"></div>
										<div class="layout-pagination">
											<div class="pagediv">
												<a href="/shop/service/faq.php?&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨처음 페이지로 가기</a>
												<a href="/shop/service/faq.php?&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
												<strong class="layout-pagination-button layout-pagination-number __active">1</strong>
												<a href="/shop/service/faq.php?&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a>
												<a href="/shop/service/faq.php?&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a>
												<a href="/shop/service/faq.php?&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a>
												<a href="/shop/service/faq.php?&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a>
												<a href="/shop/service/faq.php?&amp;page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
												<a href="/shop/service/faq.php?&amp;page=5" class="layout-pagination-button layout-pagination-last-page">맨끝 페이지로 가기</a>
											</div>
										</div>
										<table class="xans-board-search xans-board-search2">
											<tbody>
												<tr>
													<td class="input_txt">&nbsp;</td>
													<td>
														<div class="search_bt">
															<input type="image" src="img/do/do_customer_notice2.gif" name="sword" value="" required="">
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>

								</div>
							</form>

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