<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div id="snb" class="snb_cc">
			<h2 class="tit_snb">고객센터</h2>
			<div class="inner_snb">
				<ul class="list_menu">
					<li class="on">
						<a href="#none" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">공지사항</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">자주하는질문</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1문의</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_service_bulk_order')">대량주문문의</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_service_product_offer')">상품제안</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_service_eco_packing_feedback')">에코포장 피드백</a>
					</li>
				</ul>
			</div>
			<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire">
				<span class="emph">도움이 필요하신가요 ?</span> 1:1문의하기
			</a>
		</div>