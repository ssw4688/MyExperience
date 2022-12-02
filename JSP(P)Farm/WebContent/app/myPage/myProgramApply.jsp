<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage/myProgramApply.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    <title>내가 신청한 프로그램</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
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
                                            프로그램 내역
                                        </div>
                                        <div class="lgr_sub">
                                            <ul class="lgr_ul">
                                                <li class="nowMenu"><a href=""><span class="checkText">농촌 체험 프로그램</span></a></li>
                                                <li><a href=""><span>농촌 아르바이트</span></a></li>
                                            </ul>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                            <div class="title_right_box">
                                <div class="requestImg"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub_content">
                    <div class="container">
                        <div class="inner">
                            <link href="/young/css/custom/custom.css" media="all" rel="stylesheet" type="text/css">
                            <div class="board_wrap">
                                <div class="board_cont">
                                    <form id="listForm" name="listForm">
                                        <div class="sub01_con inner clearfix">
                                            <div>
                                                <div class="asa_listView">
                                                    
                                                </div>
                                                <div class="sort_list">
                                                    <button type="button" class="sort_btn" data-id="viewCnt">조회순</button>
                                                    <button type="button" class="sort_btn" data-id="asc">가장최근등록일순</button>
                                                    <button type="button" class="sort_btn" data-id="applEdDt">가장최근마감일순</button>
                                                </div>
                                            </div>
                                            <div class="k_result inner clearfix">
                                                <p class="count">총 <span>2</span>건 (진행중 <span>1</span>건)</p>
                                                <br>
                                                <ul>
                                                    <a href="" class="programDiv">
                                                        <li>
                                                            <div class="info">
                                                                <p class="local">전국</p>
                                                                <!-- 진행사항 -->
                                                                <p class="progress">진행중</p>
                                                                <!-- 지원금액 -->
                                                                <p class="sup_price">
                                                                </p>
                                                            </div>
                                                            <div class="title">
                                                                <p>22년 청년들을 위한 취창업캠프!</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd">
                                                                    <span class="endstatus">D-6</span> &nbsp; | &nbsp;
                                                                    2022-10-10
                                                                </p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png">
                                                                    11
                                                                </p>
                                                            </div>
                                                        </li>
                                                    </a>
                                                    <a href="">
                                                        <li>
                                                            <div class="info">
                                                                <p class="local">경기도</p>
                                                                <!-- 진행사항 -->
                                                                <p class="progress">모집마감</p>
                                                                <!-- 지원금액 -->
                                                            </div>
                                                            <div class="title">
                                                                <p>22년 농식품 수출 통합·선도조직 육성사업 참여업체 모집</p>
                                                            </div>
                                                            <div class="num">
                                                                <p class="prd"> 2022-10-01 </p>
                                                                <p class="hits"><img src="https://www.rda.go.kr/young/images/site/sub/common_ico_view.png">
                                                                    62
                                                                </p>
                                                            </div>
                                                        </li>
                                                    </a>
                                                </ul>
                                            </div>

                                            <div class="paging">
                                                <a href="#" title="처음페이지로 이동" class="page_btn page_first">
                                                    <img src="https://www.returnfarm.com:444/css/wvtex/img/sub/prev10_page.png" alt="처음페이지로 이동">
                                                </a>
                                                <a href="#" title="이전페이지로 이동" class="page_btn page_prev">
                                                    <img src="https://www.returnfarm.com:444/css/wvtex/img/sub/prev1_page.png" alt="이전페이지로 이동">
                                                </a>
                                                <a href="javascript:fn_movePage(1);" title="(현재페이지)1 페이지로 이동" class="page_btn page_num current_page">
                                                    <span>1</span>
                                                </a>
                                                <a href="#" title="다음페이지로 이동" class="page_btn page_next">
                                                    <img src="https://www.returnfarm.com:444/css/wvtex/img/sub/next1_page.png" alt="다음페이지로 이동">
                                                </a>
                                                <a href="#" title="마지막페이지로 이동" class="page_btn page_last">
                                                    <img src="https://www.returnfarm.com:444/css/wvtex/img/sub/next10_page.png" alt="마지막페이지로 이동">
                                                </a>
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