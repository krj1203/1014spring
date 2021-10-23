<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<style type="text/css">
.wrap_empty {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 557px;
    text-align: center;
    font-family: NotoSansCJKkr
}
.wrap_empty {}
.wrap_empty strong {
    display: block;
    margin-bottom: 10px;
    color: #666;
    font-size: 16px;
    font-weight: 500;
    line-height: 1.25;
    letter-spacing: -0.3px
}
.wrap_empty strong:before {
    display: block;
    width: 48px;
    height: 48px;
    margin: 0 auto 16px;
    background: url('https://res.kurly.com/kurly/ico/2021/present_48_48_gray.svg') 0 0 no-repeat;
    content: ""
}
.wrap_empty p {
    margin-bottom: 24px;
    font-size: 14px;
    color: #b5b5b5
}

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


					<div class="page_aticle aticle_type2"> <!-- Main시작 -->
						<jsp:include page="mainLeft.jsp"></jsp:include> <!-- Mainleft -->
						
						<div id="viewGiftList" class="page_section">
							<div class="wrap_gift">
								<div class="head_aticle">
									<h2 class="tit">선물 내역 
										<span class="tit_sub">지난 3년 간의 선물 내역 조회가 가능합니다.</span>
									</h2>
									<div class="search_date">
										<h3 class="screen_out">기간 선택</h3>
										<a href="#none" class="btn_layer">전체 기간</a>
									</div>
								</div>
								<div class="wrap_empty">
									<strong>선물 내역이 없습니다.</strong>
									<p>선물하기 서비스는 마켓컬리 앱에서 이용할 수 있습니다.</p>
								</div>
							</div>
						</div>
						
						<div>
							<!-- 선물했을경우 창인데 이건 선물하기 이용해보고 페이지 구상해야할듯 -->
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