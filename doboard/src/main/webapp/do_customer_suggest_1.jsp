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
							
							<div class="page_section section_offer">
								<div class="head_aticle">
									<h2 class="tit">상품 제안</h2>
								</div>
								<ul class="list_type1">
									<li>
										<span class="ico">·</span>
										<p class="txt">마켓컬리에서 추가적으로 판매되면 좋을 상품을 제안해주세요.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">고객님의 의견을 발 빠르게 반영하여 더욱 편리한 마켓컬리가 되겠습니다.</p>
									</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">주의)알콜 제품은 법령상 온라인 판매가 불가하오니, 이 점 참고하여작성부탁드립니다.</p>
										</li>
									<li>
										<span class="ico">·</span>
										<p class="txt">담당 MD가 제안해주신 의견을 실시간으로 모니터링할 예정이나, 별도 답변안내는 되지 않음을 양해부탁드립니다.</p>
									</li>
								</ul>
								<div class="xans-board-write">
									<form name="fm" id="fm" method="post" action="/shop/mypage/indb.php" enctype="multipart/form-data"
										onsubmit="return chkForm(this)" style="height: 100%;">
										<input type="hidden" name="mode" value="add_offer">
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
														<select name="itemcd" required="" fld_esssential="" label="질문유형" class="select">
															<option value="">선택해주세요.</option>
															<option value="001">신선식품</option>
															<option value="007">정육/달걀</option>
															<option value="011">가공식품</option>
															<option value="012">양념/반찬</option>
															<option value="031">Home Dining</option>
															<option value="014">Deli/Bakery</option>
															<option value="087">Daily+</option>
															<option value="999">기타</option>
														</select>
														<br>
														<input type="text" name="subject"style="width: 100%" required="" fld_esssential="" label="제목" value="">
													</td>
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
														<table width="95%" id="table" cellpadding="0"cellspacing="0" border="0"
															style="border: solid 1px #f4f4f4; border-collapse: collapse;">
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