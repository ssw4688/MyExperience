<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>너와 농부싶어</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/swiperbundlemin.css">
</head>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<body>
<section class="main" id="site_main">

<div id="lgr_body">
	<!-- 상단 이미지 위 요소들 -->
	<div id="lgr_top" >
		<div id="lgr_main_logo">
			<a href="/young/index.do"><img id="lgr_domain_logo" src="${pageContext.request.contextPath}/assets/images/common/logo_black.png" /></a>
		</div>
		<div id="lgr_top_textwrap">
			<img id="lgr_background_img" src="https://www.rda.go.kr/young/images/site/main/ma_img_background.png" />
			<!-- 좌측 텍스트 -->
            <div id="lgr_left">
                <div id="lgr_top_text" >
                    청년 농업인의<br>
                    내일을 <div><img  src="https://www.rda.go.kr/young/images/site/main/ma_img_effect.png"></div>합니다
                </div>
                <div id="lgr_top_subtext">
                    <span>창농·창업 준비부터 성공적인 영농정착까지!<br>청년농업인과 함께 만들고 이끌어 나가겠습니다.</span>
                </div>
            </div>
		</div> 
		<!-- 버튼 그룹 -->
        <div id="lgr_right">
            <div id="lgr_top_btn_season" onclick="window.open('https://seasonmarket.co.kr/home/promotion?exhbFormSeq=74', '_blank');">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_seasonmarket.png">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_seasonmarket.png">
                    </div>
                    <div class="lgr_top_btntext">
                        <span>청년농 지원정책</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi">
                                <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_btn2" onclick="location.href='/young/custom.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu01.png" >
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu01_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>농업정보</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi">
                            <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_btn3"  onclick="location.href='/young/content/content01.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu02.png">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu02_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>프로그램</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                            <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_btn4"  onclick="location.href='/young/board/board15.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu03.png">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu03_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>커뮤니티</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                            <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_btn5"  onclick="location.href='/young/board/board21.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="	https://www.rda.go.kr/young/images/site/main/ma_ico_menu04.png">
                        <img src="	https://www.rda.go.kr/young/images/site/main/ma_ico_menu04_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>지역정보</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                                <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_btn6"  onclick="location.href='/young/board/board04.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu05.png">
                        <img src="https://www.rda.go.kr/young/images/site/main/ma_ico_menu05_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>귀농 테스트</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                                <span>더보기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_login" onclick="location.href='/young/board/board04.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="${pageContext.request.contextPath}/assets/images/main/login.png" >
                        <img src="${pageContext.request.contextPath}/assets/images/main/login_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>로그인</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                                <span>바로가기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
            <div id="lgr_top_join" onclick="location.href='/young/board/board04.do'">
                <div class="lgr_top_menubtn">
                    <div class="lgr_top_imgwrap">
                        <img src="${pageContext.request.contextPath}/assets/images/main/user.png">
                        <img src="${pageContext.request.contextPath}/assets/images/main/user_over.png" >
                    </div>
                    <div class="lgr_top_btntext">
                        <span>회원가입</span>
                    </div>
                    <div class="lgr_top_btnbtn">
                        <div>
                            <div class="lgr_thebogi" style="display: inline">
                                <span>바로가기</span>
                            </div>
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more.png">
                            <img style="display: inline-block;" src="https://www.rda.go.kr/young/images/site/main/ma_ico_more_pink.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
    <div id="lgr_topbtn"><img src="https://www.rda.go.kr/young/images/site/main/common_btn_top.png"></div>
	<!-- 정책 정보 -->
	<div id="lgr_main_content">
		
		<div id="lgr_title">
			<span  id="lgr_jungbo">지원</span><span>사업</span>
			<!-- <div id="lgr_circle" onclick="location.href='/young/custom.do'"><img src="/young/images/site/main/ma_ico_plus.png"></div> -->
		</div>
		<div id="lgr_subtitle"><span>청년 농업인들을 위한 프로그램을 모았습니다!</span></div>
		
		<form id="searchasForm" name="searchasForm"  method="post" autocomplete="off">
		<input type="hidden" name="search_category" value="">
		<input type="hidden" name="search_area1" value="">
		<input type="hidden" name="search_area2" value="">
		</form>
	<!-- 최근 게시글 -->
	
	<div id="lgr_recengroup">
		<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-41fc337125c5d9bd" aria-disabled="false"></div>
		<div class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-41fc337125c5d9bd" aria-disabled="true"></div>
		<!-- Swiper -->
		<div class="swiper customSwiper">
		  <ul class="swiper-wrapper">
		    <li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/edu/view.do?sId=7102'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									전국</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">교육</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 농산업 취창업캠프</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-01</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/edu/view.do?sId=7101'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">구미</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">교육</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>농업용 무인항공기(드론) 교육</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-04</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7088'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">청송</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 사회적농업 활성화 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-14</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7087'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">경산</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 치유농장 육성 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-09-30</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7086'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">울릉</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 판로</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 청년농업인 자립기반 구축 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-04</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7085'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">울진</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 컨설팅, 판로</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 농가맛집 육성 시범사업(재신청)</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-06</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7084'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">봉화</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금 </p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>청년농업인 농지 임대료 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-31</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7071'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">안동</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금 </p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 영농현장 애로사항 기술개발 과제 시범사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-12-16</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=7066'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									강원<span style="margin-left: 5px;">고성</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 컨설팅</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 곤충 유통사업 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-11</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=6966'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경북<span style="margin-left: 5px;">김천</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 네트워크</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>23년 청년농업인 커뮤니티 활성화 지원사업</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-09-30</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=6958'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									충북<span style="margin-left: 5px;">음성</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">네트워크</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 음성군 품목별 청년농업인 모집</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-09-30</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=6614'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									강원<span style="margin-left: 5px;">삼척</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금 , 네트워크</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 귀농귀촌 마을환영회 신청 안내</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-10-31</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=6595'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									전북<span style="margin-left: 5px;">남원</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금 , 네트워크</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 마을환영회 지원사업 모집공고</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-12-31</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=6497'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									전북<span style="margin-left: 5px;">군산</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 주거</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 [주택 및 공통작업장 보수·수선] 신청</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-09</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=5997'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									경기</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">컨설팅</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 경기도 귀농귀촌 초보귀농인(멘티) 모집</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-12</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	<li class="swiper-slide lgr_content"  onclick="location.href='/young/custom/policy/view.do?sId=5901'">
					<!-- 카테고리 -->
					<div class="lgr_categorywrap">
						<div class="place_box">
							<div class="lgr_place">
								<p class="place_txt">
									강원<span style="margin-left: 5px;">영월</span>
									</p>
							</div>
						</div>
						<div class="type_box">
							<p class="lgr_type">자금, 네트워크</p>
						</div>
					</div>
					<!-- 내용 -->
					<div class="lgr_subject"><span>22년 귀농귀촌인 주민 초청 행사</span></div>
					<div class="lgr_datebadge"><span>기간</span></div>
					<div class="lgr_date">~&nbsp;2022-12</div>
					<div class="lgr_more">
						더보기
					</div>
				</li>
		  	</ul>
		  <div class="swiper-pagination"></div>
		</div>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		<script type="text/javascript">
			//슬라이드
			var swiper = new Swiper(".customSwiper", {
				slidesPerView: 4,
				spaceBetween: 20,
				pagination: {
					el: ".swiper-pagination",
					type: "fraction",
				 },
				navigation: {
					nextEl: ".swiper-button-next",
					prevEl: ".swiper-button-prev",
				},
			});
			
		</script>
	</div>
	</div>
	
	<!-- 이미지 -->
	<div id="lgr_middle" style="background-image: url(https://www.rda.go.kr/young/images/site/main/ma_img_listbg.png); height: 188px;">
		<div id="lgr_middle_textwrap">
			<span>청년 농이<br>
			<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_curiosity.png" style="display: inline-block;"> 해하는 정보!
			</span>
			
		</div>
			
			
			<!-- 버튼 -->
			
			<div id="lgr_middlebtn_group">
					<div id="lgr_middlebtn1" onclick="location.href='/young/board/board15.do'">
						<div class="lgr_middlebtn_imgwrap">
							<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_list03.png">
						</div>
						<div class="lgr_middelbtn_textwrap">
							<span>작물 정보</span>
						</div>
					</div>
				<div id="lgr_middlebtn2" onclick="location.href='/young/board/board17.do'">
					<div class="lgr_middlebtn_imgwrap">
						<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_list05.png">
					</div>
					<div class="lgr_middelbtn_textwrap">
						<span>계절별 <br>작물 추천</span>
					</div>
				</div>
				
				<div id="lgr_middlebtn3" onclick="location.href='/young/content/content05.do'">
					<div class="lgr_middlebtn_imgwrap">
						<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_list04.png">
					</div>
					<div class="lgr_middelbtn_textwrap">
						<span>지역별 <br>특산물 정보</span>
					</div>
				</div>
				<div id="lgr_middlebtn4" onclick="location.href='/young/board/board14.do'">
					<div class="lgr_middlebtn_imgwrap">
						<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_list02.png">
					</div>
					<div class="lgr_middelbtn_textwrap">
						<span>작물 시세<br> 확인</span>
					</div>
				</div>
				
				<div id="lgr_middlebtn5" onclick="location.href='/young/board/board16.do'">
					<div class="lgr_middlebtn_imgwrap">
						<img src="https://www.rda.go.kr/young/images/site/main/ma_ico_list07.png">
					</div>
					<div class="lgr_middelbtn_textwrap">
						<span>병해충 정보</span>
					</div>
				</div>
				
				<div id="lgr_middlebtn6" onclick="location.href='/young/board/board19.do'">
					<div class="lgr_middlebtn_imgwrap">
						<img src="${pageContext.request.contextPath}/assets/images/main/spary.png">
					</div>
					<div class="lgr_middelbtn_textwrap">
						<span>농약 정보</span>
					</div>
				</div>
		</div>
	</div>
	
	
</div>


</section>
<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script type="text/javascript" src="/young/js/dist/local.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main/main.js"></script>
</html>