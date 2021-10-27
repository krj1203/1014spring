<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
pace-inactive
<title>Admin_Market</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" /> -->
<link href="style/tstyles.css" rel="stylesheet" />
<link href="style/tstyles2.css" rel="stylesheet" />
<link href="style/tstyles3.css" rel="stylesheet" />
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script> -->
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="ben_index.jsp">Admin_kurlyty</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="검색"
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">셋팅</a></li>
					<li><a class="dropdown-item" href="#!">활동로그</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="#!">로그아웃</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">
							Market관리
							</h3>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 상품관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">상품조회/수정</a> <a
									class="nav-link" href="layout-sidenav-light.html">상품등록</a> <a
									class="nav-link" href="*">템플릿관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts2" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 판매관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts2"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">상품통합관리</a> <a
									class="nav-link" href="layout-sidenav-light.html">취소관리</a> <a
									class="nav-link" href="*">환불관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts3" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 정산관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts3"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">정산내역</a> <a
									class="nav-link" href="layout-sidenav-light.html">주별정산</a> <a
									class="nav-link" href="*">월별정산</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts4" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 카테고리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts4"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="*">상위 카테고리</a> <a class="nav-link"
									href="*">중위 카테고리</a> <a class="nav-link" href="*">하위 카테고리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts5" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 회원관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts5"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="*">회원관리</a> <a class="nav-link"
									href="*">회원등급 관리</a> <a class="nav-link" href="*">약관관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts7" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 리뷰/문의관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts7"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="*">리뷰</a> <a class="nav-link" href="*">문의</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts6" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 게시글
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts6"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="*">공지사항</a> <a class="nav-link"
									href="*">자주하는 질문</a> <a class="nav-link" href="*">1:1문의</a>
							</nav>
						</div>

					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					First Group
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h5 class="mt-4">Dashboard</h5>
					<br>
					<div class="row">
						<div ui-view="" name="naverpay-salesinfo"
							class="panel-wrap flex-col-6 flex-col-xs-12 order-md-3 order-xs-1">
							<div class="panel panel-dashboard">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">주문/배송</h3>
									</div>
									<div class="pull-right">
										<ncp-dashboard-refresh component-name="vm.componentName"
											refresh-interval="vm.refreshIntervalMinutes"
											on-block="vm.blockRefresh()" on-refresh="vm.refresh()"
											nclicks-code="orddel.ref">
										<span class="text-muted sub-text">최근 19:48</span> <a href=""
											role="button" class="btn-refresh font-icon-button"
											ng-click="vm.refresh()" data-nclicks-code="orddel.ref"><i
											class="fn fn-refresh" aria-hidden="true"></i> <span
											class="sr-only">새로고침</span></a></ncp-dashboard-refresh>
									</div>
								</div>
								<div class="panel-body flex flex-wrap">
									<div class="list-wrap deposit-list flex-col-6 flex-col-md-12">
										<!---->
										<div ng-if="vm.saleStats &amp;&amp; vm.saleStats.$resolved"
											class="" style="">
											<div class="panel-icon-area">
												<span class="square-ico-area"><i
													class="seller-icon icon-order" aria-hidden="true"></i></span>
											</div>
											<ul class="panel-list">
												<li><span class="info-title">결제대기</span> <span
													class="number-area">
														<!---->
														<a ng-if="::vm.isDesktop"
														ui-sref="main.naverpay_sale_unpayment" class="text-number"
														ng-bind="::vm.saleStats.paymentWaitCases"
														data-nclicks-code="orddel.paymentwait"
														href="#/naverpay/sale/unpayment">0</a>
													<!----> <!---->
														<span>건</span>
												</span></li>
												<li><div class="clearfix">
														<span class="info-title"><em class="pull-left">신규주문</em>
															<a href="javascript:void(0)" role="button"
															class="font-icon-button"
															uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li><strong>&amp;apos;선물 수락대기&amp;apos; 상태의 주문 건은 포함되지 않습니다.</strong></li><li><a href=&quot;https://help.sell.smartstore.naver.com/faq/content.help?faqId=3355&quot; target=&quot;_blank&quot; role=&quot;button&quot; class=&quot;btn-link text-primary&quot;><span>그럼
																	선물 주문은 어디서 확인하나요?<i class=&quot;fn-shopping
																	fn-shopping-forward2&quot; aria-hidden=&quot;true&quot;></i><span></span></li>
											</ul>
											'" popover-trigger="'outsideClick'"
											popover-placement="bottom" data-nclicks-code="orddel.newtip"><i
												class="fn fn-info1" aria-hidden="true"></i><span
												class="sr-only">툴팁</span> </a></span><span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery" class="text-number"
												ng-bind="::vm.saleStats.newOrderCases"
												data-nclicks-code="orddel.new"
												href="#/naverpay/sale/delivery">0</a>
											<!----> <!---->
												<span>건</span>
											</span>
										</div>
										<div class="clearfix panel-sub-info">
											<span class="info-title"><em class="sub-icon">⌞</em>
												오늘출발<a href="javascript:void(0)" role="button"
												class="font-icon-button"
												uib-popover-html="'<ul class=&quot;seller-ul-list&quot;><li>&amp;apos;정기구독&amp;apos; 주문건은 &amp;apos;오늘출발&amp;apos;에 포함되지 않습니다.</li></ul>'"
												popover-trigger="'outsideClick'" popover-placement="bottom"
												data-nclicks-code="orddel.departtodaytip"><i
													class="fn fn-info1" aria-hidden="true"></i><span
													class="sr-only">툴팁</span> </a></span><span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'TODAY_DISPATCH'})"
												class="text-number"
												ng-bind="::vm.saleStats.todayDispatchCases"
												data-nclicks-code="orddel.departtoday"
												href="#/naverpay/sale/delivery?summaryInfoType=TODAY_DISPATCH">0</a>
											<!----> <!---->
												<span>건</span>
											</span>
										</div>
										<div class="clearfix panel-sub-info">
											<span class="info-title"><em class="sub-icon">⌞</em>
												예약구매</span> <span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'PRE_ORDER'})"
												class="text-number" ng-bind="::vm.saleStats.preOrderCases"
												data-nclicks-code="orddel.preord"
												href="#/naverpay/sale/delivery?summaryInfoType=PRE_ORDER">0</a>
											<!----> <!---->
												<span>건</span>
											</span>
										</div>
										<div class="clearfix panel-sub-info">
											<span class="info-title"><em class="sub-icon">⌞</em>
												정기구독</span> <span class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'SUBSCRIPTION'})"
												class="text-number"
												ng-bind="::vm.saleStats.subscriptionCases"
												data-nclicks-code="orddel.subscription"
												href="#/naverpay/sale/delivery?summaryInfoType=SUBSCRIPTION">0</a>
											<!----> <!---->
												<span>건</span>
											</span>
										</div>
										</li>
										</ul>
									</div>
									<!---->
									<!---->
								</div>
								<div class="list-wrap delivery-list flex-col-6 flex-col-md-12">
									<!---->
									<div ng-if="vm.saleStats &amp;&amp; vm.saleStats.$resolved"
										class="" style="">
										<div class="panel-icon-area">
											<span class="square-ico-area"><i
												class="seller-icon icon-delivery" aria-hidden="true"></i></span>
										</div>
										<ul class="panel-list">
											<li><span class="info-title">배송준비</span> <span
												class="number-area">
													<!---->
													<a ng-if="::vm.isDesktop"
													ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'DELIVERY_READY'})"
													class="text-number"
													ng-bind="::vm.saleStats.deliveryPreparingCases"
													data-nclicks-code="orddel.wait"
													href="#/naverpay/sale/delivery?summaryInfoType=DELIVERY_READY">0</a>
												<!----> <!---->
													<span>건</span>
											</span></li>
											<li><span class="info-title">배송중</span> <span
												class="number-area">
													<!---->
													<a ng-if="::vm.isDesktop"
													ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERING'})"
													class="text-number"
													ng-bind="::vm.saleStats.deliveringCases"
													data-nclicks-code="orddel.ing"
													href="#/naverpay/sale/delivery/situation?summaryInfoType=DELIVERING">1</a>
												<!----> <!---->
													<span>건</span>
											</span></li>
											<li><span class="info-title">배송완료</span> <span
												class="number-area">
													<!---->
													<a ng-if="::vm.isDesktop"
													ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERED'})"
													class="text-number" ng-bind="::vm.saleStats.deliveredCases"
													data-nclicks-code="orddel.completed"
													href="#/naverpay/sale/delivery/situation?summaryInfoType=DELIVERED">0</a>
												<!----> <!---->
													<span>건</span>
											</span></li>
										</ul>
									</div>
									<!---->
								</div>
							</div>
							<!---->
							<!---->
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3 col-md-6">
						<div class="card bg-primary text-white mb-4">
							<div class="card-body">Primary Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-warning text-white mb-4">
							<div class="card-body">Warning Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-success text-white mb-4">
							<div class="card-body">Success Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-md-6">
						<div class="card bg-danger text-white mb-4">
							<div class="card-body">Danger Card</div>
							<div
								class="card-footer d-flex align-items-center justify-content-between">
								<a class="small text-white stretched-link" href="#">View
									Details</a>
								<div class="small text-white">
									<i class="fas fa-angle-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> Area Chart Example
							</div>
							<div class="card-body">
								<canvas id="myAreaChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i> Bar Chart Example
							</div>
							<div class="card-body">
								<canvas id="myBarChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> DataTable Example
					</div>
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
									<td>$320,800</td>
								</tr>
								<tr>
									<td>Garrett Winters</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
									<td>$170,750</td>
								</tr>
								<tr>
									<td>Ashton Cox</td>
									<td>Junior Technical Author</td>
									<td>San Francisco</td>
									<td>66</td>
									<td>2009/01/12</td>
									<td>$86,000</td>
								</tr>
								<tr>
									<td>Cedric Kelly</td>
									<td>Senior Javascript Developer</td>
									<td>Edinburgh</td>
									<td>22</td>
									<td>2012/03/29</td>
									<td>$433,060</td>
								</tr>
								<tr>
									<td>Airi Satou</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>33</td>
									<td>2008/11/28</td>
									<td>$162,700</td>
								</tr>
								<tr>
									<td>Brielle Williamson</td>
									<td>Integration Specialist</td>
									<td>New York</td>
									<td>61</td>
									<td>2012/12/02</td>
									<td>$372,000</td>
								</tr>
								<tr>
									<td>Herrod Chandler</td>
									<td>Sales Assistant</td>
									<td>San Francisco</td>
									<td>59</td>
									<td>2012/08/06</td>
									<td>$137,500</td>
								</tr>
								<tr>
									<td>Rhona Davidson</td>
									<td>Integration Specialist</td>
									<td>Tokyo</td>
									<td>55</td>
									<td>2010/10/14</td>
									<td>$327,900</td>
								</tr>
								<tr>
									<td>Colleen Hurst</td>
									<td>Javascript Developer</td>
									<td>San Francisco</td>
									<td>39</td>
									<td>2009/09/15</td>
									<td>$205,500</td>
								</tr>
								<tr>
									<td>Sonya Frost</td>
									<td>Software Engineer</td>
									<td>Edinburgh</td>
									<td>23</td>
									<td>2008/12/13</td>
									<td>$103,600</td>
								</tr>
								<tr>
									<td>Jena Gaines</td>
									<td>Office Manager</td>
									<td>London</td>
									<td>30</td>
									<td>2008/12/19</td>
									<td>$90,560</td>
								</tr>
								<tr>
									<td>Quinn Flynn</td>
									<td>Support Lead</td>
									<td>Edinburgh</td>
									<td>22</td>
									<td>2013/03/03</td>
									<td>$342,000</td>
								</tr>
								<tr>
									<td>Charde Marshall</td>
									<td>Regional Director</td>
									<td>San Francisco</td>
									<td>36</td>
									<td>2008/10/16</td>
									<td>$470,600</td>
								</tr>
								<tr>
									<td>Haley Kennedy</td>
									<td>Senior Marketing Designer</td>
									<td>London</td>
									<td>43</td>
									<td>2012/12/18</td>
									<td>$313,500</td>
								</tr>
								<tr>
									<td>Tatyana Fitzpatrick</td>
									<td>Regional Director</td>
									<td>London</td>
									<td>19</td>
									<td>2010/03/17</td>
									<td>$385,750</td>
								</tr>
								<tr>
									<td>Michael Silva</td>
									<td>Marketing Designer</td>
									<td>London</td>
									<td>66</td>
									<td>2012/11/27</td>
									<td>$198,500</td>
								</tr>
								<tr>
									<td>Paul Byrd</td>
									<td>Chief Financial Officer (CFO)</td>
									<td>New York</td>
									<td>64</td>
									<td>2010/06/09</td>
									<td>$725,000</td>
								</tr>
								<tr>
									<td>Gloria Little</td>
									<td>Systems Administrator</td>
									<td>New York</td>
									<td>59</td>
									<td>2009/04/10</td>
									<td>$237,500</td>
								</tr>
								<tr>
									<td>Bradley Greer</td>
									<td>Software Engineer</td>
									<td>London</td>
									<td>41</td>
									<td>2012/10/13</td>
									<td>$132,000</td>
								</tr>
								<tr>
									<td>Dai Rios</td>
									<td>Personnel Lead</td>
									<td>Edinburgh</td>
									<td>35</td>
									<td>2012/09/26</td>
									<td>$217,500</td>
								</tr>
								<tr>
									<td>Jenette Caldwell</td>
									<td>Development Lead</td>
									<td>New York</td>
									<td>30</td>
									<td>2011/09/03</td>
									<td>$345,000</td>
								</tr>
								<tr>
									<td>Yuri Berry</td>
									<td>Chief Marketing Officer (CMO)</td>
									<td>New York</td>
									<td>40</td>
									<td>2009/06/25</td>
									<td>$675,000</td>
								</tr>
								<tr>
									<td>Caesar Vance</td>
									<td>Pre-Sales Support</td>
									<td>New York</td>
									<td>21</td>
									<td>2011/12/12</td>
									<td>$106,450</td>
								</tr>
								<tr>
									<td>Doris Wilder</td>
									<td>Sales Assistant</td>
									<td>Sidney</td>
									<td>23</td>
									<td>2010/09/20</td>
									<td>$85,600</td>
								</tr>
								<tr>
									<td>Angelica Ramos</td>
									<td>Chief Executive Officer (CEO)</td>
									<td>London</td>
									<td>47</td>
									<td>2009/10/09</td>
									<td>$1,200,000</td>
								</tr>
								<tr>
									<td>Gavin Joyce</td>
									<td>Developer</td>
									<td>Edinburgh</td>
									<td>42</td>
									<td>2010/12/22</td>
									<td>$92,575</td>
								</tr>
								<tr>
									<td>Jennifer Chang</td>
									<td>Regional Director</td>
									<td>Singapore</td>
									<td>28</td>
									<td>2010/11/14</td>
									<td>$357,650</td>
								</tr>
								<tr>
									<td>Brenden Wagner</td>
									<td>Software Engineer</td>
									<td>San Francisco</td>
									<td>28</td>
									<td>2011/06/07</td>
									<td>$206,850</td>
								</tr>
								<tr>
									<td>Fiona Green</td>
									<td>Chief Operating Officer (COO)</td>
									<td>San Francisco</td>
									<td>48</td>
									<td>2010/03/11</td>
									<td>$850,000</td>
								</tr>
								<tr>
									<td>Shou Itou</td>
									<td>Regional Marketing</td>
									<td>Tokyo</td>
									<td>20</td>
									<td>2011/08/14</td>
									<td>$163,000</td>
								</tr>
								<tr>
									<td>Michelle House</td>
									<td>Integration Specialist</td>
									<td>Sidney</td>
									<td>37</td>
									<td>2011/06/02</td>
									<td>$95,400</td>
								</tr>
								<tr>
									<td>Suki Burks</td>
									<td>Developer</td>
									<td>London</td>
									<td>53</td>
									<td>2009/10/22</td>
									<td>$114,500</td>
								</tr>
								<tr>
									<td>Prescott Bartlett</td>
									<td>Technical Author</td>
									<td>London</td>
									<td>27</td>
									<td>2011/05/07</td>
									<td>$145,000</td>
								</tr>
								<tr>
									<td>Gavin Cortez</td>
									<td>Team Leader</td>
									<td>San Francisco</td>
									<td>22</td>
									<td>2008/10/26</td>
									<td>$235,500</td>
								</tr>
								<tr>
									<td>Martena Mccray</td>
									<td>Post-Sales support</td>
									<td>Edinburgh</td>
									<td>46</td>
									<td>2011/03/09</td>
									<td>$324,050</td>
								</tr>
								<tr>
									<td>Unity Butler</td>
									<td>Marketing Designer</td>
									<td>San Francisco</td>
									<td>47</td>
									<td>2009/12/09</td>
									<td>$85,675</td>
								</tr>
								<tr>
									<td>Howard Hatfield</td>
									<td>Office Manager</td>
									<td>San Francisco</td>
									<td>51</td>
									<td>2008/12/16</td>
									<td>$164,500</td>
								</tr>
								<tr>
									<td>Hope Fuentes</td>
									<td>Secretary</td>
									<td>San Francisco</td>
									<td>41</td>
									<td>2010/02/12</td>
									<td>$109,850</td>
								</tr>
								<tr>
									<td>Vivian Harrell</td>
									<td>Financial Controller</td>
									<td>San Francisco</td>
									<td>62</td>
									<td>2009/02/14</td>
									<td>$452,500</td>
								</tr>
								<tr>
									<td>Timothy Mooney</td>
									<td>Office Manager</td>
									<td>London</td>
									<td>37</td>
									<td>2008/12/11</td>
									<td>$136,200</td>
								</tr>
								<tr>
									<td>Jackson Bradshaw</td>
									<td>Director</td>
									<td>New York</td>
									<td>65</td>
									<td>2008/09/26</td>
									<td>$645,750</td>
								</tr>
								<tr>
									<td>Olivia Liang</td>
									<td>Support Engineer</td>
									<td>Singapore</td>
									<td>64</td>
									<td>2011/02/03</td>
									<td>$234,500</td>
								</tr>
								<tr>
									<td>Bruno Nash</td>
									<td>Software Engineer</td>
									<td>London</td>
									<td>38</td>
									<td>2011/05/03</td>
									<td>$163,500</td>
								</tr>
								<tr>
									<td>Sakura Yamamoto</td>
									<td>Support Engineer</td>
									<td>Tokyo</td>
									<td>37</td>
									<td>2009/08/19</td>
									<td>$139,575</td>
								</tr>
								<tr>
									<td>Thor Walton</td>
									<td>Developer</td>
									<td>New York</td>
									<td>61</td>
									<td>2013/08/11</td>
									<td>$98,540</td>
								</tr>
								<tr>
									<td>Finn Camacho</td>
									<td>Support Engineer</td>
									<td>San Francisco</td>
									<td>47</td>
									<td>2009/07/07</td>
									<td>$87,500</td>
								</tr>
								<tr>
									<td>Serge Baldwin</td>
									<td>Data Coordinator</td>
									<td>Singapore</td>
									<td>64</td>
									<td>2012/04/09</td>
									<td>$138,575</td>
								</tr>
								<tr>
									<td>Zenaida Frank</td>
									<td>Software Engineer</td>
									<td>New York</td>
									<td>63</td>
									<td>2010/01/04</td>
									<td>$125,250</td>
								</tr>
								<tr>
									<td>Zorita Serrano</td>
									<td>Software Engineer</td>
									<td>San Francisco</td>
									<td>56</td>
									<td>2012/06/01</td>
									<td>$115,000</td>
								</tr>
								<tr>
									<td>Jennifer Acosta</td>
									<td>Junior Javascript Developer</td>
									<td>Edinburgh</td>
									<td>43</td>
									<td>2013/02/01</td>
									<td>$75,650</td>
								</tr>
								<tr>
									<td>Cara Stevens</td>
									<td>Sales Assistant</td>
									<td>New York</td>
									<td>46</td>
									<td>2011/12/06</td>
									<td>$145,600</td>
								</tr>
								<tr>
									<td>Hermione Butler</td>
									<td>Regional Director</td>
									<td>London</td>
									<td>47</td>
									<td>2011/03/21</td>
									<td>$356,250</td>
								</tr>
								<tr>
									<td>Lael Greer</td>
									<td>Systems Administrator</td>
									<td>London</td>
									<td>21</td>
									<td>2009/02/27</td>
									<td>$103,500</td>
								</tr>
								<tr>
									<td>Jonas Alexander</td>
									<td>Developer</td>
									<td>San Francisco</td>
									<td>30</td>
									<td>2010/07/14</td>
									<td>$86,500</td>
								</tr>
								<tr>
									<td>Shad Decker</td>
									<td>Regional Director</td>
									<td>Edinburgh</td>
									<td>51</td>
									<td>2008/11/13</td>
									<td>$183,000</td>
								</tr>
								<tr>
									<td>Michael Bruce</td>
									<td>Javascript Developer</td>
									<td>Singapore</td>
									<td>29</td>
									<td>2011/06/27</td>
									<td>$183,000</td>
								</tr>
								<tr>
									<td>Donna Snider</td>
									<td>Customer Support</td>
									<td>New York</td>
									<td>27</td>
									<td>2011/01/25</td>
									<td>$112,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		</main>
		<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid px-4">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; Your Website 2021</div>
					<div>
						<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
							&amp; Conditions</a>
					</div>
				</div>
			</div>
		</footer>
	</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
