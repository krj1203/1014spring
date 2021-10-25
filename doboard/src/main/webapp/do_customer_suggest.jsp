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
								
								<!-- 상품 제안 내역이 존재하지 않는경우↓↓↓↓↓↓↓↓ -->
								<div class="no_data" style="border-top: 1px solid #e6e6e6; border-bottom: 1px solid #e6e6e6">
									상품 제안 내역이 존재하지 않습니다.
								</div>
								
								<!-- 상품 제안 내역이 존재하는 경우는 만들어야함↓↓↓↓↓↓↓↓ -->
								
								<div style="position: relative">
									<div style="position: absolute; right: 0; top: 60px;">
										<a href="javascript:popup_register( 'add_offer' );">
											<span class="bhs_buttonsm yb" style="float: none;">글쓰기</span>
										</a>
									</div>
								</div>
								<div class="layout-pagination">
									<div class="pagediv"></div>
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