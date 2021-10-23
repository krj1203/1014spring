<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
<link rel="styleSheet" href="style/ItemListStyle.css">
<link rel="stylesheet" href="style/sortMenu.css">
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

					<div style="margin:0 auto; width: 1050px;">
						<div id="lnbMenu" class="lnb_menu">
							<div id="bnrCategory" class="bnr_category"
								style="display: block;">
								<div class="thumb">
									<img
										src="img/benumini.png"
										alt="카테고리배너">
								</div>
							</div>
						</div>
						<!-- 신상품 -->
						<div style="padding-top: 26px;">
							<div class="MainIntroTitle">
								<div class="TitleDiv" align="center">
									<span>신상품</span>
								</div>
							</div>
						</div>
						
						
						<div id="sortbar">
							<div class="list_ability">
								<div class="sort_menu">
									<div class="">
										<p class="count">
											<span class="inner_count"> 총 463건 </span>
										</p>
										<div class="select_type user_sort">
											<!---->
											<a class="name_select">신상품순</a>
											<ul class="list">
												<li><a class="">추천순</a></li>
												<li><a class="on">신상품순</a></li>
												<li><a class="">인기상품순</a></li>
												<li><a class="">혜택순</a></li>
												<li><a class="">낮은 가격순</a></li>
												<li><a class="">높은 가격순</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="MainIntroContain">
							<ul class="foodList">
								<c:forEach begin="1" end="20" step="1">
									<li>
										<div class="foodImg">
											<a href="#"><img src="img/Item/Kimchi.png"></a>
										</div> <a class="info" href="#"> <span class="name">[네이처]
												오이 묶음</span> <span class="cost"> <span class="dc">36%</span>
												<span class="price">7,500원</span> <span class="origin">11,800원</span>
												<span class="desc">김치는 별로 맛없음</span>
										</span>
									</a>
									</li>
								</c:forEach>
							</ul>
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
</html>