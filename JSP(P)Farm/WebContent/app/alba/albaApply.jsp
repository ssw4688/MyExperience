<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>프로그램 신청 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/alba/albaApply.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/page.css"/>
</head>
<body>
<!--헤더 넣는쪽-->
  <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <!-- 바디 -->
    <div class="wrap">
        <div class="main">
            <div class="sub_wrap">
                <div class="sub_title">
                    <div class="container">
                        <div class="inner">
                            <div class="title_left_box">
                                <div id="sub_wrap" class="sub_wrap">
                                    <nav id="snb" class="snb">
                                        <div class="top">
                                            아르바이트 신청
                                        </div>
                                        <div class="lgr_sub">
                                            <ul class="lgr_ul">
                                                <li class="nowMenu">
                                                    <span>농촌 체험 프로그램</span>
                                                </li>
                                                <li>
                                                    <span class="checkText">농촌 아르바이트</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                            <div class="title_right_box">
                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=8nFVTgUIDUlBiYgKluFrhBdHVni9G2K67o64OtO8tD1DEXBRoHgiiIK%2BvPxFADkbugGa28PnSO6qNVxcSqtCKg%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub_content">
                    <div class="container">
                        <div class="inner">
                            <div class="board_wrap">
                                <div class="board_cont">
                                    <form id="listForm" name="listForm">
                                        <div class="sub01_con inner clearfix">
                                            <div>
                            
                                                <div class="sort_list">
                                                    <button type="button" class="sort_btn" data-id="viewCnt">조회순</button>
                                                    <button type="button" class="sort_btn" data-id="asc">가장최근등록일순</button>
                                                    <button type="button" class="sort_btn" data-id="applEdDt">가장최근마감일순</button>
                                                </div>
                                            </div>
                                            <div class="k_result inner clearfix">
                                                <p class="count">
                                                    총  
                                                <span>5866</span>
                                                     건 (진행중 
                                                <span>247</span>
                                                     건) 
                                                </p>
                                                <br>
                                                <ul style = "margin : 0px">
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        전국</p>
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                                </div>
                                                            <div class="title">
                                                                <p>농산물 소포장 아르바이트(당일 현금지급)</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">D-1</span> &nbsp; | &nbsp; 2022-10-01</p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 31</p>
                                                            </div>
                                                            <div class="file">
                                                            </div>
                                                    </li>
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        충청남도</p>
                                                            
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                             
                                                                </div>
                                                            <div class="title">
                                                                <p>농산물 도매시장 단기알바</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">당일마감</span>
                                                                            </p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 73</p>
                                                            </div>
                                                            <div class="file">
                                                                </div>
                                                    </li>
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        전라북도</p>
                                                        
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                                </div>
                                                            <div class="title">
                                                                <p>딸기농장 수확 알바</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">D-7</span> &nbsp; | &nbsp; 2022-10-07</p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 21</p>
                                                            </div>
                                                            <div class="file">
                                                                </div>
                                                    </li>
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        강원도</p>
                                                              
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                                </div>
                                                            <div class="title">
                                                                <p>영월 감자채굴 오전알바</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">D-42</span> &nbsp; | &nbsp; 2022-11-11</p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 183</p>
                                                            </div>
                                                    </li>
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        전라남도</p>
                                                             
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                              
                                                                </div>
                                                            <div class="title">
                                                                <p>대나무 자르기 보조 아르바이트</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">당일마감</span>
                                                                            </p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 742</p>
                                                            </div>
                                                            <div class="file">
                                                                </div>
                                                    </li>
                                                    <li>
                                                            <div class="info">
                                                                <p class="local">
                                                                        경상남도</p>
                                                                
                                                                <!-- 진행사항 -->
                                                                    <p class="progress">											
                                                                        진행중</p>
                                                                <!-- 지원금액 -->
                                                                </div>
                                                            <div class="title">
                                                                <p>창원 감따기 보조 아르바이트</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">D-92</span> &nbsp; | &nbsp; 2022-12</p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 70</p>
                                                            </div>
                                                    </li>
                                                    <li>
                                                        
                                                        <div class="info">
                                                            <p class="local">
                                                                    경기도</p>
                                                            
                                                            <!-- 진행사항 -->
                                                                <p class="progress">											
                                                                    진행중</p>
                                                            <!-- 지원금액 -->
                                                            </div>
                                                        <div class="title">
                                                            <p>농산물 식당배송 당일 아르바이트</p>
                                                        </div>
                                                        <div class="num">
                                                            <p class="prd">
                                                                <span class="endstatus">D-1</span> &nbsp; | &nbsp; 2022-10-01</p>
                                                            <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 31</p>
                                                        </div>
                                                        <div class="file">
                                                        </div>
                                                </li>
                                                <li>
                                                        <div class="info">
                                                            <p class="local">
                                                                    충청남도</p>
                                                            <!-- 진행사항 -->
                                                                <p class="progress">											
                                                                    진행중</p>
                                                            <!-- 지원금액 -->
                                                         
                                                            </div>
                                                        <div class="title">
                                                            <p>고추 이랑 만들기 및 모종심기 아르바이트</p>
                                                        </div>
                                                        <div class="num">
                                                            <p class="prd">
                                                                <span class="endstatus">당일마감</span>
                                                                        </p>
                                                            <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 73</p>
                                                        </div>
                                                        <div class="file">
                                                            </div>
                                                </li>
                                                <li>
                                                        <div class="info">
                                                            <p class="local">
                                                                    충청북도</p>
                                                            
                                                            <!-- 진행사항 -->
                                                                <p class="progress">											
                                                                    진행중</p>
                                                            <!-- 지원금액 -->
                                                            </div>
                                                        <div class="title">
                                                            <p>영동 호두따기 아르바이트(식비 지원)</p>
                                                        </div>
                                                        <div class="num">
                                                            <p class="prd">
                                                                <span class="endstatus">D-7</span> &nbsp; | &nbsp; 2022-10-07</p>
                                                            <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 21</p>
                                                        </div>
                                                        <div class="file">
                                                            </div>
                                                </li>
                                                <li>
                                                        <div class="info">
                                                            <p class="local">
                                                                    강원도</p>
                                                           
                                                            <!-- 진행사항 -->
                                                                <p class="progress">											
                                                                    진행중</p>
                                                            <!-- 지원금액 -->
                                                            </div>
                                                        <div class="title">
                                                            <p>영월 감자채굴 오전알바</p>
                                                        </div>
                                                        <div class="num">
                                                            <p class="prd">
                                                                <span class="endstatus">D-42</span> &nbsp; | &nbsp; 2022-11-11</p>
                                                            <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 183</p>
                                                        </div>
                                                </li>
                                                <li>
                                                    <div class="info">
                                                        <p class="local">
                                                                강원도</p>
                                                       
                                                        <!-- 진행사항 -->
                                                            <p class="progress">											
                                                                진행중</p>
                                                        <!-- 지원금액 -->
                                                        </div>
                                                    <div class="title">
                                                        <p>농산물 하차 아르바이트(군필 환영)</p>
                                                    </div>
                                                    <div class="num">
                                                        <p class="prd">
                                                            <span class="endstatus">D-42</span> &nbsp; | &nbsp; 2022-11-11</p>
                                                        <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 183</p>
                                                    </div>
                                            </li>
                                            <li>
                                                    <div class="info">
                                                        <p class="local">
                                                                전라남도</p>
                                                        <!-- 진행사항 -->
                                                            <p class="progress">											
                                                                진행중</p>
                                                        <!-- 지원금액 -->
                                                        </div>
                                                    <div class="title">
                                                        <p>대나무 자르기 보조 아르바이트</p>
                                                    </div>
                                                    <div class="num">
                                                        <p class="prd">
                                                            <span class="endstatus">당일마감</span>
                                                                    </p>
                                                        <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png"> 742</p>
                                                    </div>
                                                    <div class="file">
                                                        </div>
                                            </li>
                                                </ul>
                                            </div>
                                    
                                        </div>
                                        <!-- 페이징 -->
                                        <div id="page" style="margin-bottom : 30px">
                                            <div class="page_nation">
                                            <a class="page-num arrow pprev" href="#"></a>
                                            <a class="page-num arrow prev" href="#"></a>
                                            <a class="page-num active" href="#">1</a>
                                            <a class="page-num" href="#">2</a>
                                            <a class="page-num" href="#">3</a>
                                            <a class="page-num" href="#">4</a>
                                            <a class="page-num" href="#">5</a>
                                            <a class="page-num" href="#">6</a>
                                            <a class="page-num" href="#">7</a>
                                            <a class="page-num" href="#">8</a>
                                            <a class="page-num" href="#">9</a>
                                            <a class="page-num" href="#">10</a>
                                            <a class="page-num arrow next" href="#"></a>
                                            <a class="page-num arrow nnext" href="#"></a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
      <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</html>