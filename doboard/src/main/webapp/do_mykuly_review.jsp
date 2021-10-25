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
					<jsp:include page="myPageTop.jsp"></jsp:include><!-- mypage상단부분 -->

					<div class="page_aticle aticle_type2">	<!-- Main 시작 -->
						<jsp:include page="mainLeft.jsp"></jsp:include>	<!-- Mainleft -->
						<div class="page_aticle aticle_type2">	<!-- MainCenter 시작 -->
							<div class="page_section section_review">
								<div class="head_aticle">
									<h2 class="tit">상품 후기</h2>
								</div>
								<div id="reviewView">
									<div class="review_notice">
										<p>
											<b>후기 작성 시 사진후기 100원, 글후기 50원을 적립해드립니다.</b>
										</p>
										- 퍼플, 더퍼플은 <b>2배</b> 적립 (사진 200원, 글 100원)<br>- 주간 베스트 후기로
										선정 시 <b>5,000원</b>을 추가 적립<br>* 후기 작성은 배송 완료일로부터 30일 이내
										가능합니다.
									</div>
									<ul class="tab_menu">
										<li class="on"><a href="#viewBeforeList">작성가능 후기 <span>(0)</span></a></li>
										<li class=""><a href="#viewAfterList">작성완료 후기 <span>(0)</span></a></li>
									</ul>
								</div>

								<div id="viewBeforeList" class="before_view">
									<ul class="list_before">
										<li class="no_data">작성가능 후기 내역이 없습니다.</li>
									</ul>
								</div>


								<div id="viewAfterList" class="after_view">
									<ul class="list_after">
										<li class="no_data">작성한 후기가 없습니다.</li>
									</ul>
								</div> <!-- 작성가능 후기 내역과 작성완료 후기를 선택하는거에 따라서 내용이 수정됨 -->
								
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