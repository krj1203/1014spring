<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<style type="text/css">
/* 2cc 전용 라디오 버튼 이미지를 체크박스처럼... */
.type_radio input[type="radio"] {
    position: absolute;
    z-index: -1;
    opacity: 0;
}
.type_radio input[type="radio"] + .ico {
    display: inline-block;
    position: relative;
    width: 24px;
    height: 24px;
    margin-right: 12px;
    border: 0 none;
    background: url('https://res.kurly.com/mobile/service/common/2003/ico_checkbox.png?v=1') no-repeat 50% 50%;
    background-size: 24px 24px;
    vertical-align: -7px;
}
.type_radio input[type="radio"]:focus {
    outline: 0;
}
.type_radio input[type="radio"]:checked + .ico {
    background: url('https://res.kurly.com/mobile/service/common/2003/ico_checkbox_checked.png') no-repeat 50% 50%;
    background-size: 24px 24px;
}
.type_radio input[type="radio"]:disabled + .ico {
    background: url('https://res.kurly.com/mobile/service/common/2003/ico_checkbox_disabled.png') no-repeat 50% 50%;
    background-size: 24px 24px;
}
.type_radio label {
    font-size: 14px;
    line-height: 22px;
}
/* 배송지관리 */
.section_destination .new_address {
    position: relative
}
.section_destination .new_address .btn {
    position: absolute;
    right: 3px;
    bottom: 7px;
    border: 0 none;
    background-color: #fff;
    font-weight: 700;
    font-size: 16px;
    color: #333;
    line-height: 24px;
    letter-spacing: -0.5px;
    text-align: right
}
.section_destination .new_address .ico {
    margin-right: 2px;
    vertical-align: -2px
}
.section_destination .tbl_type1 {
    border-bottom: 1px solid #f4f4f4
}
.section_destination .tbl_type1 th {
    padding: 17px 0 20px;
    vertical-align: top
}
.section_destination .tbl_type1 .tit_select {
    display: none;
    width: 60px
}
.section_destination .tbl_type1 .tit_address {
    width: auto;
    padding-left: 10px
}
.section_destination .tbl_type1 .tit_receive {
    width: 120px
}
.section_destination .tbl_type1 .tit_phone {
    width: 100px
}
.section_destination .tbl_type1 .tit_delivery {
    width: 100px
}
.section_destination .tbl_type1 .tit_modify {
    width: 60px
}
.section_destination .tbl_type1 tr:first-child td,
.section_destination .tbl_type1 td {
    height: 90px;
    font-size: 14px;
    color: #333;
    line-height: 22px;
    letter-spacing: -0.4px;
    vertical-align: middle;
    text-align: center
}
.section_destination .tbl_type1 .type_radio input[type="radio"] + .ico {
    margin: 0;
    vertical-align: middle
}
.section_destination .tbl_type1 .select {
    display: none
}
.section_destination .tbl_type1 .address {
    padding: 20px 10px 20px 20px;
    text-align: left
}
.section_destination .tbl_type1 .badge_default {
    display: block;
    width: 74px;
    height: 22px;
    margin-bottom: 7px;
    border-radius: 11px;
    background-color: #f7f7f7;
    font-weight: 700;
    font-size: 12px;
    color: #666;
    line-height: 22px;
    letter-spacing: 0;
    text-align: center
}
.section_destination .tbl_type1 .addr {
    padding: 0;
    font-size: 16px;
    color: #333;
    line-height: 24px;
    letter-spacing: -0.3px;
    text-align: left;
    word-break: break-all
}
.section_destination .tbl_type1 .star {
    color: #5f0080
}
.section_destination .tbl_type1 .regular {
    color: #666
}
.section_destination .tbl_type1 .none {
    color: #ccc
}
.section_destination .tbl_type1 .modify {
    width: 24px;
    height: 24px;
    border: 0 none;
    background: url('https://res.kurly.com/mobile/ico/2006/ico_modify.png') no-repeat 50% 50%;
    font-size: 0;
    line-height: 0
}
.section_destination .tbl_type1 tr:first-child td.empty,
.section_destination .tbl_type1 .empty {
    padding: 123px 0 124px;
    font-weight: 700;
    font-size: 16px;
    line-height: 22px;
    letter-spacing: 0;
    text-align: center
}
/* 선택영역이 있는 경우 */
.section_destination .type_select .tit_select {
    display: table-cell
}
.section_destination .type_select .tit_address {
    padding-left: 0;
    text-indent: -8px
}
.section_destination .type_select .select {
    display: table-cell
}
.section_destination .type_select .address {
    padding-left: 2px
}
@media only screen and(-webkit-min-device-pixel-ratio: 1.5),
only screen and(min-device-pixel-ratio: 1.5),
only screen and(min-resolution: 1.5dppx) {
    .section_destination .tbl_type1 .modify {
        background: url("https://res.kur
</style>
<link rel="styleSheet" href="style/ItemListStyle.css">
</head>
<body class="main-index" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection">

	<div id="wrap" class="">
		<div id="pos_scroll"></div>
		<div id="container">

			<jsp:include page="header.jsp"></jsp:include><!-- header부분 -->

			<div id="main">
				<div id="content">

					<jsp:include page="sidemenu.jsp"></jsp:include><!-- sidemenu부분 -->
					<jsp:include page="myPageTop.jsp"></jsp:include><!-- mypage상단부분 -->


					<div class="page_aticle aticle_type2">
						<!-- Main시작 -->
						<jsp:include page="mainLeft.jsp"></jsp:include>
						<!-- Mainleft -->

						<div id="" class="page_section section_destination">
							<div class="head_aticle">
								<h2 class="tit">
									배송지 관리 <span id="addrListInfo" class="tit_sub"> 배송지에 따라
										상품정보가 달라질 수 있습니다.</span>
								</h2>
								<div class="new_address">
									<button type="button" class="btn" id="newAddressAdd">
										<img src="https://res.kurly.com/pc/ico/2006/ico_add_16x16.svg"
											alt="" class="ico"> 새 배송지 추가
									</button>
								</div>
							</div>

							<span class="destination_add screen_out"></span>

							<div id="tblParent" class="type_select">
								<table class="tbl tbl_type1">
									<thead>
										<tr>
											<th class="tit_select">선택</th>
											<th class="tit_address">주소</th>
											<th class="tit_receive">받으실 분</th>
											<th class="tit_phone">연락처</th>
											<th class="tit_delivery">배송유형</th>
											<th class="tit_modify">수정</th>
										</tr>
									</thead>
									<tbody id="addrList">
										<tr>
											<td class="select type_radio"><label
												class="skin_checkbox"> <input type="radio"
													name="addrNo" data-delivery-type="direct" value="9622171"
													checked=""> <span class="ico"></span> <span
													class="screen_out">선택하기</span>
											</label></td>
											<td class="address"><span class="badge_default">기본배송지</span>
												<p class="addr">서울 관악구 국회단지길 98 (팰리스타운) 7차 102호</p></td>
											<td class="name">도경석</td>
											<td class="phone">010-5227-6762</td>
											<td><span class="delivery star">샛별배송</span></td>
											<td>
												<button type="button" class="ico modify"
													data-addr-no="9622171" data-addr-type="D"
													data-is-current-addr="true">수정하기</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
		</div>

		<a href="#top" id="pageTop">맨 위로가기</a>


		<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
			style="display: none; width: 100%; height: 600px;"></iframe>
</body>
</html>