<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
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

							<div class="page_section section_echo">
								<div class="head_aticle">
									<h2 class="tit">에코포장 피드백</h2>
								</div>
								<ul class="list_type1">
									<li>
										<span class="ico">·</span>
										<p class="txt">에코 박스에 대한 피드백이나 새로운 포장재에 대한 제안을 남겨주세요.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">더욱 세심하게 포장되었으면 하는 상품이 있다면 언제든 말씀주세요.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">제안해 주신 의견은 담당자가 실시간으로 모니터링할 예정이나 별도 답변 안내는되지 않음을 양해 부탁드립니다.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청 사항은1:1문의/카카오톡/고객센터(1644-1107)로 문의 바랍니다.</p>
									</li>
								</ul>

								<div class="xans-board-write">
									<form name="fm" id="fm" method="post" action="/shop/mypage/indb.php" enctype="multipart/form-data"
										onsubmit="return chkForm(this)" style="height: 100%;">
										<input type="hidden" name="mode" value="add_ep">
										<input type="hidden" name="itemcd" value="">
										<input type="hidden" name="sno" value="undefined">
										<table id="table_after" class="boardWrite2" width="100%">
											<colgroup>
												<col width="14%" align="right">
											</colgroup>
											<tbody>
												<tr>
													<th class="input_txt">제목</th>
													<td>
														<select name="itemcd" required="" fld_esssential="" label="질문유형" class="select"style="width: 100px">
																<option value="">선택해주세요.</option>
																<option value="01">디자인</option>
																<option value="02">사이즈</option>
																<option value="03">신선도</option>
																<option value="04">완충성</option>
																<option value="05">분리수거</option>
																<option value="06">포장재제안</option>
																<option value="99">기타</option>
														</select>
														<br>
														<input type="text" name="subject"style="width: 100%" required="" fld_esssential=""label="제목" value="">
													</td>
												</tr>
												<tr>
													<th class="input_txt">상품명</th>
													<td>
														<input type="text" name="goodsnm"style="width: 100%" label="상품명" value=""></td>
												</tr>
												<tr>
													<th class="input_txt">내용</th>
													<td>
														<textarea name="contents"style="width: 100%; height: 140px;" required=""fld_esssential="" label="내용"></textarea>
													</td>
												</tr>
												<tr>
													<th class="input_txt">이미지</th>
													<td>
														<table width="95%" id="table" cellpadding="0"cellspacing="0" border="0"style="border: solid 1px #f4f4f4; border-collapse: collapse;">
															<tbody>
																<tr id="tr_0">
																	<td width="20" nowrap="" align="center">1</td>
																	<td width="100%"><input type="file" name="file[]"style="width: 50%" class="linebg">
																		<a href="javascript:add()">
																			<img src="img/do/do_customer_inquiry1_1.gif" align="absmiddle">
																		</a>
																	</td>
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
													<td align="right" style="padding-top: 5px; border: none;"id="avoidDbl" class="btn_save">
														<input type="submit" class="bhs_button yb" value="등록" style="float: none;">
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