<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.notice .layout-pagination {
	margin: 0
}

.eng2 {
	color: #939393
}

.xans-board-listheader {
	font-size: 12px
}
</style>
</head>
<body>
	<div class="page_aticle aticle_type2">
		<div id="snb" class="snb_cc">
			<h2 class="tit_snb">������</h2>
			<div class="inner_snb">
				<ul class="list_menu">
					<li class="on">
						<a href="#none" onclick="KurlyTrackerLink('/shop/board/list.php?id=notice', 'select_service_notice_list')">��������</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/service/faq.php', 'select_service_frequently_qna')">�����ϴ�����</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_qna.php', 'select_service_personal_inquiry_history')">1:1����</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/main/html.php?htmid=mypage/bulk_order.htm', 'select_service_bulk_order')">�뷮�ֹ�����</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/offer.php', 'select_service_product_offer')">��ǰ����</a>
					</li>
					<li>
						<a href="#none" onclick="KurlyTrackerLink('/shop/mypage/echo_packing.php', 'select_service_eco_packing_feedback')">�������� �ǵ��</a>
					</li>
				</ul>
			</div>
			<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" class="link_inquire">
				<span class="emph">������ �ʿ��ϽŰ��� ?</span> 1:1�����ϱ�
			</a>
		</div>
		
		<div class="page_section">
			<div class="head_aticle">
				<h2 class="tit">
					�������� <span class="tit_sub">�ø��� ���ο� �ҽĵ�� ������ �������� �Ѱ����� Ȯ���ϼ���.</span>
				</h2>
			</div>
			<form name="frmList" action="/shop/board/list.php?&amp;" onsubmit="return chkFormList(this)">
				<input type="hidden" name="id" value="notice">
				<table width="100%" align="center" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td>
								<div class="xans-element- xans-myshop xans-myshop-couponserial ">
									<table width="100%" class="xans-board-listheader jh" cellpadding="0" cellspacing="0">
										<thead>
											<tr>
												<th>��ȣ</th>
												<th>����</th>
												<th>�ۼ���</th>
												<th>�ۼ���</th>
												<th>��ȸ</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td width="50" nowrap="" align="center">897</td>
												<td style="padding-left: 10px; text-align: left; color: #999">
													<a href="view.php?id=notice&amp;no=1073">��������~</a>
												</td>
												<td width="100" nowrap="" align="center">MarketKurly</td>
												<td width="100" nowrap="" align="center" class="eng2">2021-10-12</td>
												<td width="30" nowrap="" align="center" class="eng2">173</td>
											</tr>
										</tbody>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="layout-pagination">
					<div class="pagediv">
						<a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-first-page">��ó�� �������� ����</a>
						<a href="list.php?id=notice&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">������������ ����</a>
						<strong class="layout-pagination-button layout-pagination-number __active">1</strong>
						<a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a>
						<a href="list.php?id=notice&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a>
						<a href="list.php?id=notice&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a>
						<a href="list.php?id=notice&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a>
						<a href="list.php?id=notice&amp;page=6" class="layout-pagination-button layout-pagination-number">6</a>
						<a href="list.php?id=notice&amp;page=7" class="layout-pagination-button layout-pagination-number">7</a>
						<a href="list.php?id=notice&amp;page=8" class="layout-pagination-button layout-pagination-number">8</a>
						<a href="list.php?id=notice&amp;page=9" class="layout-pagination-button layout-pagination-number">9</a>
						<a href="list.php?id=notice&amp;page=10" class="layout-pagination-button layout-pagination-number">10</a>
						<a href="list.php?id=notice&amp;page=2" class="layout-pagination-button layout-pagination-next-page">���� �������� ����</a>
						<a href="list.php?id=notice&amp;page=91" class="layout-pagination-button layout-pagination-last-page">�ǳ� �������� ����</a>
					</div>
				</div>
				
				<table class="xans-board-search xans-board-search2">
					<tbody>
						<tr>
							<td class="input_txt"><img
								src="/shop/data/skin/designgj/images/board/ico_function.gif">�˻���</td>
							<td class="stxt">
								<input type="checkbox" name="search[name]">�̸�
								<input type="checkbox" name="search[subject]">���� 
								<input type="checkbox" name="search[contents]">����&nbsp;</td>
							<td class="input_txt">&nbsp;</td>
							<td>
								<div class="search_bt">
									<a href="javascript:document.frmList.submit()"><img
										src="/shop/data/skin/designgj/images/board/search.png"
										align="absmiddle"></a> <input type="text"
										name="search[word]" value="" required="">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</body>
</html>