<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include>

</head>
<body class="main-index" oncontextmenu="return false"
	ondragstart="return false" onselectstart="return !disableSelection">
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
						<div class="page_section section_myinfo">
							<div class="head_aticle">
								<h2 class="tit">개인 정보 수정</h2>
							</div>
							<div class="type_form member_join member_pw">
								<div class="field_pw">
									<h3 class="tit">비밀번호 재확인</h3>
									<p class="sub">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요.</p>
									<form name="confirmForm" method="post"
										action="/shop/member/indb.confirm.php?&amp;">
										<table class="tbl_comm">
												<tr class="fst">
													<th>아이디</th>
													<td><input type="text" value="" readonly=""
														class="inp_read"></td>
												</tr>
												<tr>
													<th>비밀번호<span class="ico">*<span
															class="screen_out">필수항목</span></span></th>
													<td><input type="hidden" name="mode" id="mode"
														value="confirmPassword"> <input type="password"
														name="confirm_password" id="confirm_password"
														class="inp_pw"></td>
												</tr>
										
										</table>
										<button type="submit" class="btn active">확인</button>
									</form>
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