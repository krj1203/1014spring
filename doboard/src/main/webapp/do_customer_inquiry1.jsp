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
							<div class="page_section section_qna">
								<div class="head_aticle">
									<h2 class="tit">1:1 문의</h2>
								</div>

								<table class="xans-board-listheader" width="100%">
									<tbody>
										<tr class="input_txt">
											<th width="8%">번호</th>
											<th width="15%">카테고리</th>
											<th>제목</th>
											<th width="12%">작성자</th>
											<th width="12%">작성일</th>
										</tr>
									</tbody>
								</table>
								
								<!-- 문의 내역이 없을때 ↓↓↓↓↓↓↓↓↓-->
								<!--  <div class="no_data" style="padding: 150px 0 148px; border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6; font-size: 12px; color: #4c4c4c">
									1:1 문의 내역이 존재하지 않습니다.
								</div>
								<div style="position: relative">
									<div style="position: absolute; right: 0; top: 60px;">
										<a href="javascript:popup_register( 'add_qna' );">
											<span class="bhs_buttonsm yb" style="float: none;">글쓰기</span>
										</a>
									</div>
								</div>
								<div class="layout-pagination">
									<div class="pagediv"></div>
								</div> -->
								
								<!-- 문의 내역이 있을때 ↓↓↓↓↓↓↓↓↓-->
								<div class="mypage_wrap" style="float: none; width: 100%">
									<table class="table_faq" width="100%" onclick="view_content(this, event)">
										<tbody>
											<tr>
												<td width="8%" align="center">1</td>
												<td width="15%" align="center" class="stxt">
													<b>[컬리패스(무료배송)]</b>
												</td>
												<td style="padding-top: 5px; padding-bottom: 5px;">
													컬리패스가뭐에요? <span style="color: #007FC8;" class="stxt">[0]</span>
												</td>
												<td width="12%" align="center">rudtjr313</td>
												<td width="12%" align="center">2021-10-25</td>
											</tr>
										</tbody>
									</table>
									<div style="display: none; padding: 30px; border-top: 1px solid #e6e6e6">
										<div width="100%" style="padding-left: 55px;">컬리패스가 뭐에요?</div>
										<div class="goods-review-grp-btn" style="text-align: right;">
											<button type="button" class="styled-button" onclick="popup_register( 'mod_qna', '5098622' );">수정</button>
											<button type="button" class="styled-button" onclick="popup_register( 'del_qna', '5098622' );">삭제</button>
										</div>
									</div>
								</div>
								<div style="position: relative">
									<div style="position: absolute; right: 0; top: 60px;">
										<a href="javascript:popup_register( 'add_qna' );">
											<span class="bhs_buttonsm yb" style="float: none;">글쓰기</span>
										</a>
									</div>
								</div>
								<div class="layout-pagination">
									<div class="pagediv">
										<a href="/shop/mypage/mypage_qna.php?&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨  처음 페이지로 가기</a>
										<a href="/shop/mypage/mypage_qna.php?&amp;page=1"class="layout-pagination-button layout-pagination-prev-page">이전페이지로 가기</a>
										<strong class="layout-pagination-button layout-pagination-number __active">1</strong>
										<a href="/shop/mypage/mypage_qna.php?&amp;page=1" class="layout-pagination-button layout-pagination-next-page">다음페이지로 가기</a>
										<a href="/shop/mypage/mypage_qna.php?&amp;page=1" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
									</div>
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