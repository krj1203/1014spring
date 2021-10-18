<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="layerDSR">
			<div class="bg_dim"></div>
			<div class="in_layer">
				<div class="inner_layer layer_star">
					<strong class="dsr_result">샛별배송 지역입니다.</strong>
					<div class="ani">
						<img
							data-src="https://res.kurly.com/mobile/img/1908/img_delivery_kurly.png"
							src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
							alt="샛별배송 이미지">
					</div>
					<p class="dsr_desc default_cutoff_23_7">
						<strong class="emph">오늘 밤 11시 전</strong>까지 주문시<br> <strong
							class="emph">다음날 아침 7시</strong> 이전 도착합니다!
					</p>
					<p class="dsr_desc early_cutoff_20_8">
						<strong class="emph">오늘 밤 8시 전</strong>까지 주문시<br> <strong
							class="emph">다음날 아침 8시</strong> 이전 도착합니다!
					</p>
				</div>
				<div class="inner_layer layer_normal">
					<strong class="dsr_result">택배배송 지역입니다.</strong>
					<div class="ani">
						<img
							data-src="https://res.kurly.com/mobile/img/1908/img_delivery_car.png"
							src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
							alt="택배배송 이미지">
					</div>
					<p class="dsr_desc old_eight">
						<strong class="emph">밤 8시 전</strong>까지 주문시<br> <strong
							class="emph">다음날</strong> 도착합니다!
					</p>
					<p class="dsr_desc new_ten">
						<strong class="emph">밤 10시 전</strong>까지 주문시<br> <strong
							class="emph">다음날</strong> 도착합니다!
					</p>
					<p class="dsr_notice">일요일은 배송 휴무로 토요일에는 주문 불가</p>
				</div>
				<div class="inner_layer layer_none">
					<strong class="dsr_result">배송 불가 지역입니다.</strong>
					<div class="ani">
						<img
							data-src="https://res.kurly.com/mobile/img/1908/img_delivery_none.png"
							src="https://res.kurly.com/mobile/service/common/bg_1x1.png"
							alt="배송불가 이미지">
					</div>
					<p class="dsr_desc">
						<strong class="emph">도로명 주소</strong>로 검색하셨다면,<br> <strong
							class="emph">지번 주소(구 주소)</strong>로 다시 시도해 주세요.
					</p>
					<p class="dsr_notice">배송지역을 확장하도록 노력하겠습니다!</p>
				</div>
				<div class="layer_btn1">
					<button type="button" class="btn_close"
						onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();">확인</button>
				</div>
				<button type="button" class="layer_close"
					onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
			</div>
		</div>
		<div id="footer">
			<div class="inner_footer">
				<div class="footer_cc">
					<h2 class="tit_cc">고객행복센터</h2>
					<div class="cc_view cc_call">
						<h3>
							<span class="tit">1644-1107</span>
						</h3>
						<dl class="list">
							<dt>365고객센터</dt>
							<dd>오전 7시 - 오후 7시</dd>
						</dl>
					</div>
					<div class="cc_view cc_kakao">
						<h3>
							<a class="tit" href="#none">카카오톡 문의</a>
						</h3>

						<dl class="list">
							<dt>365고객센터</dt>
							<dd>오전 7시 - 오후 7시</dd>
						</dl>
					</div>
					<div class="cc_view cc_qna">
						<h3>
							<a href="#none"
								onclick="KurlyTrackerLink('/shop/mypage/mypage_qna_register.php?mode=add_qna', 'select_bottom_onebyone_button')"
								class="tit">1:1 문의</a>
						</h3>
						<dl class="list">
							<dt>24시간 접수 가능</dt>
							<dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
						</dl>
					</div>
					<div class="cc_view cc_bulkorder">
						<h3>
							<a href="/shop/main/html.php?htmid=mypage/bulk_order.htm"
								class="tit">대량주문 문의</a>
						</h3>
						<p class="txt">비회원의 경우 메일로 문의 바랍니다.</p>
					</div>
				</div>
				<div class="company">
					<ul class="list">
						<li><a class="link" href="/shop/introduce/about_kurly.php">컬리소개</a></li>
						<li><a class="link"
							href="https://www.youtube.com/embed/WEep7BcboMQ?rel=0&showinfo=0&wmode=opaque&enablejsapi=1"
							onclick="window.open(this.href, 'pop', 'width=1330,height=660,scrollbars=yes');return false;">컬리소개영상</a></li>
						<li><a class="link"
							href="https://marketkurly.recruiter.co.kr/appsite/company/index"
							target="_blank">인재채용</a></li>
						<li><a class="link" href="/shop/service/agreement.php">이용약관</a></li>
						<li><a class="link emph" href="/shop/service/private.php">개인정보처리방침</a></li>
						<li><a class="link" href="/shop/service/guide.php">이용안내</a></li>
					</ul>
					법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 :
					261-81-23567 <a
						href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2618123567&apv_perm_no="
						target="_blank" class="link">사업자정보 확인</a> <br> 통신판매업 : 제
					2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준 <br>
					주소 : 서울특별시 강남구 테헤란로 133, 18층(역삼동) <span class="bar">I</span> 대표이사 :
					김슬아 <br> 입점문의 : <a href="https://forms.gle/oKMAe1SaicqMX3SC9"
						target="_blank" class="link">입점문의하기</a> <span class="bar">I</span>
					제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
					<br> 채용문의 : <a href="mailto:recruit@kurlycorp.com"
						class="link">recruit@kurlycorp.com</a> <br> 팩스: 070 - 7500 -
					6098 <span class="bar">I</span> 이메일 : <a
						href="mailto:help@kurlycorp.com" class="link">help@kurlycorp.com</a>
					<br> 대량주문 문의 : <a href="mailto:kurlygift@kurlycorp.com"
						class="link">kurlygift@kurlycorp.com</a> <em class="copy">&copy;
						KURLY CORP. ALL RIGHTS RESERVED</em>
					<ul class="list_sns">
						<li><a href="https://instagram.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_instagram.png"
								alt="마켓컬리 인스타그램 바로가기"></a></li>
						<li><a href="https://www.facebook.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_fb.png"
								alt="마켓컬리 페이스북 바로가기"></a></li>
						<li><a href="http://blog.naver.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_blog.png"
								alt="마켓컬리 네이버블로그 바로가기"></a></li>
						<li><a href="https://m.post.naver.com/marketkurly"
							class="link_sns" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_naverpost.png"
								alt="마켓컬리 유튜브 바로가기"></a></li>
						<li><a
							href="https://www.youtube.com/channel/UCfpdjL5pl-1qKT7Xp4UQzQg"
							class="link_sns lst" target="_blank"><img
								src="https://res.kurly.com/pc/ico/1810/ico_youtube.png"
								alt="마켓컬리 유튜브 바로가기"></a></li>
					</ul>
				</div>
			</div>
			<div class="footer_link">
				<div class="authentication">
					<a href="#none"
						onclick="popup('https://res.kurly.com/pc/img/1909/img_isms.jpg',550,700);return false;"
						class="mark" target="_blank"> <img
						src="https://res.kurly.com/pc/ico/2001/logo_isms.png"
						alt="isms 로고" class="logo">
						<p class="txt">
							[인증범위] 마켓컬리 쇼핑몰 서비스 개발 · 운영<br> [유효기간] 2019.04.01 ~
							2022.03.31
						</p>
					</a> <a href="#none"
						onclick="popup('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=EP&certNum=2021-EP-R003',527,720);return false;"
						class="mark" target="_blank"> <img
						src="https://res.kurly.com/pc/ico/2001/logo_eprivacyplus.png"
						alt="eprivacy plus 로고" class="logo">
						<p class="txt">
							개인정보보호 우수 웹사이트 ·<br> 개인정보처리시스템 인증 (ePRIVACY PLUS)
						</p>
					</a> <a href="#none"
						onclick="popup('http://pgweb.uplus.co.kr/ms/escrow/s_escrowYn.do?mertid=go_thefarmers',460,550);return false;"
						class="mark lguplus" target="_blank"> <img
						src="https://res.kurly.com/pc/service/main/2009/logo_payments.png"
						alt="payments 로고" class="logo">
						<p class="txt">
							고객님의 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한<br> 토스 페이먼츠
							구매안전(에스크로) 서비스를 이용하실 수 있습니다.
						</p>
					</a>
				</div>
			</div>
		</div>