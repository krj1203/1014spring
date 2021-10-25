<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<script>
	var qnaNotice = new Vue({
		el : '#qnaNotice',
		data : {
			getData : null,
			layerOn : true
		},
		methods : {
			update : function() {
				var $self = this;
				$.ajax({
					type : 'GET',
					url : campaginUrl + 'pc/notice/qna_info.html',
					datatype : 'html',
					async : true,
				}).done(function(result) {
					$self.getData = result;
				});
			}
		}
	});
	$(document).ready(function() {
		qnaNotice.update();
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
							<div class="page_section section_qna">
								<div class="head_aticle">
									<h2 class="tit">1:1 문의</h2>
								</div>

								<div class="xans-board-write">
									<form name="fm" id="fm" method="post" action="/shop/mypage/indb.php" enctype="multipart/form-data" onsubmit="return chkSubmitData(this)" style="height: 100%;">
										<input type="hidden" name="mode" value="add_qna"> 
										<input type="hidden" name="itemcd" value="">
										<input type="hidden" name="sno" value="0">
										<table id="table_after" class="boardWrite2" width="100%">
											<colgroup>
												<col width="14%" align="right">
											</colgroup>
											<tbody>
												<tr>
													<th class="input_txt">제목</th>
													<td>
														<select name="itemcd" required="" fld_esssential="" label="질문유형" class="select" 
														onclick="KurlyTracker.setAction('select_personal_inquiry_case_list').sendData();"
														onchange="KurlyTracker.setAction('select_personal_inquiry_case_value').sendData();">
															<option value="">선택해주세요.</option>
															<option value="01">배송지연/불만</option>
															<option value="11">컬리패스 (무료배송)</option>
															<option value="02">반품문의</option>
															<option value="03">A/S문의</option>
															<option value="06">환불문의</option>
															<option value="07">주문결제문의</option>
															<option value="08">회원정보문의</option>
															<option value="04">취소문의</option>
															<option value="05">교환문의</option>
															<option value="09">상품정보문의</option>
															<option value="10">기타문의</option>
														</select><br> 
														<input type="text" name="subject" style="width: 100%" required="" fld_esssential="" label="제목" value=""
														onfocus="KurlyTracker.setAction('select_personal_inquiry_title').sendData();">
													</td>
												</tr>
												
												<tr>
													<th class="input_txt">주문번호</th>
													<td>
														<input type="text" name="ordno" style="width: 25%" value="" readonly="readonly" onclick="$(this).blur()" onfocus="$(this).blur()">
														<input onclick="order_open()" type="button" class="bhs_button yb" value="주문조회" style="float: none; line-height: 27px; width: 100px;">
														<div style="position: relative; z-index: 1">
															<iframe id="ifm_order" frameborder="0" scrolling="no" style="display: none; position: absolute; 
															width: 560px; height: 380px; background-color: #fff; position: absolute; left: 0; top: 0; border: 1px solid #000">
															</iframe>
														</div>
													</td>
												</tr>
												
												<tr>
													<th class="input_txt">이메일</th>
													<td>
														<input type="text" name="email" value="????@?????.com" size="26" readonly="readonly" class="read_only">
														<spanclass="noline smalle" style="padding-left: 10px">
															<input type="checkbox" name="mailling">
															<span style="font-size: 8pt;">답변수신을 이메일로 받겠습니다.</span>
														</span>
													</td>
												</tr>
												
												<tr>
													<th class="input_txt">문자메시지</th>
													<td>
														<input type="text" name="mobile[]" value="010-5227-6762" readonly="readonly" class="read_only">
														<span class="noline smalle" style="padding-left: 10px">
															<input type="checkbox" name="sms">
															<span style="font-size: 8pt;">답변수신을문자메시지로 받겠습니다.</span>
														</span>
													</td>
												</tr>
												
												<tr>
													<th class="input_txt">내용</th>
													<td class="edit_area" style="position: relative;">

														<style>
														#qnaNotice .qna_goods {
															display: none
														}
														</style>
														
														<div id="qnaNotice">
															<div class="inner_qnaNotice">
																<div class="notice_qna">
																	<!--
																	1:1문의하기에 들어가는 class="qna_public"
																	상품문의하기에 들어가는 class="qna_goods"
																	-->
																	<strong class="tit qna_public">1:1 문의 작성 전확인해주세요!</strong> 
																	<strong class="tit qna_goods">상품문의 작성전 확인해 주세요!</strong>

																	<dl class="list qna_goods">
																		<dd>
																			<span>답변은 영업일 기준 2~3일 소요됩니다.</span> 
																			<span>해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</span>
																			<span>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1 문의에 남겨주세요.</span>
																		</dd>
																	</dl>

																	<dl class="list qna_goods">
																		<dt>제품</dt>
																		<dd>
																			<span>입고일: 품절 상품 입고 일이 확정된 경우, 섬네일에 기재되어있습니다.(종 모양을 클릭하여, 재입고 알람 설정 가능)</span>
																			<span>제품 상세정보: 영양성분 및 함량, 용량, 보관 및 취급 방법 등 제품 정보는 상세 이미지 또는 상세정보에서 확인 가능합니다.</span>
																		</dd>
																	</dl>

																	<dl class="list qna_public">
																		<dt>반품 / 환불</dt>
																		<dd>
																			<span>제품 하자 혹은 이상으로 반품 (환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</span>
																		</dd>
																	</dl>

																	<dl class="list" id="branchByVersion15">
																		<dt>주문취소</dt>
																		<dd class="old" style="display: none">
																			<!-- 구버전 분기처리 -->
																			<span>샛별 지역 : 배송일 전날 19시까지 <br> 택배 지역 :
																				배송일 전날 18시까지 <br> 고객행복센터(1644-1107)/ 1:1문의 게시판/
																				카카오톡(마켓컬리) 으로 취소 요청 바랍니다.
																			</span> 
																			<span>생산이 시작된 이후에는 취소가 불가능 한 점 고객님의 양해부탁드립니다.</span> 
																			<span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
																			<span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매해주세요.</span>
																			<span>비회원 주문건의 경우 1:1문의 게시판 접수가 불가하기에 고객행복센터(1644-1107), 카카오톡(마켓컬리) 로 취소 요청 부탁드립니다.</span>
																		</dd>
																		<dd class="new">
																			<span> 배송 단계별로 주문취소 방법이 상이합니다. <br>
																				[입금확인] 단계 : [마이컬리 &gt; 주문내역 상세페이지] 에서 직접 취소 가능 <br>
																				[입금확인] 이후 단계 : 고객행복센터로 문의
																			</span>
																			<br>
																			<span>생산이 시작된 [상품 준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</span>
																			<span>비회원은 모바일 App 또는 모바일 웹사이트에서 [마이컬리 &gt; 비회원 주문 조회 페이지] 에서 취소가 가능합니다.</span>
																			<span>일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</span>
																			<span>주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</span>
																		</dd>
																	</dl>

																	<dl class="list">
																		<dt>배송</dt>
																		<dd>
																			<span>주문 완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.</span>
																			<span>배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)</span>
																			<p class="info">※ 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</p>
																		</dd>
																	</dl>
																</div>
															</div>
														</div>
														<!-- 위에 자바스크립트가 원래 있던 부분 -->
														<textarea name="contents" style="width: 100%; height: 474px;" class="editing_area"
															required="" fld_esssential="" label="내용" onfocus="KurlyTracker.setAction('select_personal_inquiry_text').sendData();">
														</textarea>
													</td>
												</tr>
												
												<tr>
													<th class="input_txt">이미지</th>
													<td>
														<table width="95%" id="table" cellpadding="0" cellspacing="0" border="0" style="border: solid 1px #f4f4f4; border-collapse: collapse;">
															<tbody>
																<tr id="tr_0">
																	<td width="20" nowrap="" align="center">1</td>
																	<td width="100%"><input type="file" name="file[]" style="width: 50%" class="linebg">
																		<a href="javascript:add()">
																			<img src="img/do/do_customer_inquiry1_1.gif" align="absmiddle">
																		</a>
																	</td>
																</tr>
															</tbody>
														</table>
														<table>
															<tbody>
																<tr>
																	<td height="2"></td>
																</tr>
															</tbody>
														</table>
														<div width="100%" style="padding: 5px;" class="stxt">
															- 파일은 최대 5개까지 업로드가 지원됩니다.<br>
														</div>
													</td>
												</tr>
											</tbody>
										</table>

										<table width="100%">
											<tbody>
												<tr>
													<td align="right" style="padding-top: 5px; border: none;" id="avoidDbl">
														<input type="submit" class="bhs_button yb" value="저장" style="float: none;">
													</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>

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