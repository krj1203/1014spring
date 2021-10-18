<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="top.jsp"></jsp:include><!-- 기본 필요 meta, css는 include로 받아옴 -->

<!-- 여기부터 해당 페이지의 css 추가하면 됨-->
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
					
					<div id="kurlyMain" class="page_aticle page_main"
						style="width: 100%;">
						<div id="shellMain"
							style="width: 100%; height: 370px; margin-bottom: 80px; overflow: hidden; background: #eee;">
							<img src="img/BigBenu/benu1.png"
								style="width: 100%; height: 100%; object-fit: cover">
							<!-- <div class="shell_ani" style="width: 10%; height: inherit; background: none; background: linear-gradient(to right, rgba(225, 225, 225, 0), rgba(255, 255, 255, .1), rgba(255, 255, 255, 0))"> -->
						</div>
						<!-- 이 상품 어때요? -->
						<div class="MainIntroTitle">
							<div class="TitleDiv" align="center">
								<span>이 상품 어때요?</span>
							</div>
						</div>
						<div class="MainIntroContain">
							<ul class="foodList">
								<c:forEach begin="1" end="3" step="1">
									<li>
										<div class="foodImg">
											<a href="#"><img src="img/Item/foodItem.png"></a>
										</div> <a class="info" href="#"> <span class="name">[네이처]
												오이 묶음</span> <span class="cost"> <span class="dc">36%</span>
												<span class="price">7,500원</span> <span class="origin">11,800원</span>
												<span class="desc">오이는 별로 맛없음</span>
										</span>
									</a>
									</li>
								</c:forEach>
							</ul>
						</div>
						<!-- 놓치면 후회할 가격 -->
						<div class="MainIntroTitle">
							<div class="TitleDiv" align="center">
								<span>놓치면 후회할 가격 > </span>
							</div>
						</div>
						<div class="MainIntroContain">
							<ul class="foodList">
								<c:forEach begin="1" end="3" step="1">
									<li>
										<div class="foodImg">
											<a href="#"><img src="img/Item/foodItem.png"></a>
										</div> <a class="info" href="#"> <span class="name">[네이처]
												오이 묶음</span> <span class="cost"> <span class="dc">36%</span>
												<span class="price">7,500원</span> <span class="origin">11,800원</span>
												<span class="desc">오이는 별로 맛없음</span>
										</span>
									</a>
									</li>
								</c:forEach>
							</ul>
						</div>
						<!-- MD -->
						<div class="Maincategory">
							<div class="MainIntroTitle">
								<div class="TitleDiv" align="center">
									<span>MD추천</span>
								</div>
							</div>
							<div class="categoryMenu">
								<ul class="categoryList">
									<li><a class="Menu" href="#">채소</a></li>
									<li><a class="Menu" href="#">과일ㆍ견과ㆍ쌀</a></li>
									<li><a class="Menu" href="#">육류</a></li>
									<li><a class="Menu" href="#">유제품</a></li>
								</ul>
							</div>
							<div class="MainIntroContain">
								<ul class="foodList">
									<c:forEach begin="1" end="3" step="1">
										<li>
											<div class="foodImg">
												<a href="#"><img src="img/Item/foodItem.png"></a>
											</div> <a class="info" href="#"> <span class="name">[네이처]
													오이 묶음</span> <span class="cost"> <span class="dc">36%</span>
													<span class="price">7,500원</span> <span class="origin">11,800원</span>
													<span class="desc">오이는 별로 맛없음</span>
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
		</div>
		<jsp:include page="footer.jsp"></jsp:include><!-- footer부분 -->
	</div>

	<a href="#top" id="pageTop">맨 위로가기</a>


	<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank"
		style="display: none; width: 100%; height: 600px;"></iframe>
</html>