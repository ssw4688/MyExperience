<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <!-- 영문, 숫자 play 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/page.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mentor/mentor_list.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mentor/subheader.css"/>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>

<body>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <!-- subheader -->
    <div class="sub_title">
        <div class="container">
            <div class="inner">
                <div class="title_left_box">
                    <div class="snb_wrap">
                        <nav class="snb">
                            <div class="top" style="display: inline-block">커뮤니티</div>
                            <div class="lgr_snb" style="display: inline-block; margin-left: 20px;">
                                <ul class="lgr_ul" data-level="1">
                                    <li><a href="/young/board/board04.do" class="active">
                                            <span>공지사항</span>
                                        </a>
                                    </li>
                                    <li class="nowMenu"><a href="/young/board/board07.do" class="active">
                                            <span>멘토 홍보 게시판</span>
                                        </a>
                                    </li>
                                    <li><a href="/young/board/board08.do" class="active">
                                            <span>소통공간</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="title_right_box">
                    <img
                        src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=9RfoLYoam0TsoWU0M9CunXVDpRV%2BMYjz%2Fwx9V8vcTVN9PUStsh042e3NWGD7IukskEQAGJfLet60yqWGs%2Bedtw%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D">
                </div>
            </div>
        </div>
    </div>
    <!-- subheader -->

    <div class="sub_content">
        <div class="container">
            <div class="inner">
                <div class="board_wrap">
                    <div class="board_cont">
                        <form name="boardSearchForm" class="board_search_form" method="post" autocomplete="off">

                            <!-- sort 버튼 -->
                            <div class="search_box">
                                <input type="text" name="sv" placeholder="제목,품목 등으로 검색." value=""
                                    onkeydown="if(event.keyCode==13){fn_search();}" title="검색어 입력">
                                <button type="button" class="search_btn" onclick="fn_search();">검색</button>
                                <!-- button type="button" class="reset_btn" onclick="gf_reset();">전체</button-->
                            </div>
                        </form>
                        <form id="listForm" name="listForm" action="/young/board/board02.do" method="post" autocomplete="off">
                            <div class="btns">
                                <!-- 등록버튼 -->
                                <div class="btn_register">
                                    <button type="button" class="iron-iconized iron-action return" onclick="doList();"><span class="val">등록</span></button>
                                </div>
                                
                            </div>
                            <!-- 보기방식: 갤러리형 -->
                            <div class="hn_photo_list">
                                <ul>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000068');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="명품 성주 참외 가업 잇는 안규찬 대표">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>경북 &nbsp; 성주</span></p>
                                                </li>
                                                <li>
                                                    <p><span>참외</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000068');">
                                                    명품 성주 참외 가업 잇는 안규찬 대표</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 안규찬 </span><br>
                                                이메일 : <span class="mentor_email">zzzzzzzzzzz@naver.com</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000
                                                <span class="write_info_img1"></span>
                                                <span class="write_info_img2"></span>
                                            </span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000067');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="스마트하게 키우는 소비자들의 완숙토마토, 소비자들의 인생토마토">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>경남 &nbsp; 창원</span></p>
                                                </li>
                                                <li>
                                                    <p><span>토마토</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000067');">
                                                    스마트하게 키우는 소비자들의 완숙토마토, 소비자들의 인생토마토</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 서진웅 </span><br>
                                                이메일 : <span class="mentor_email">zzzzzzzzzzz@gmail.com</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000066');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="꾸지뽕이 식문화에 가깝게 다가가길 바랍니다">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>전북 &nbsp; 진안</span></p>
                                                </li>
                                                <li>
                                                    <p><span>꾸지뽕나무</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000066');">
                                                    꾸지뽕이 식문화에 가깝게 다가가길 바랍니다</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 안지인 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000065');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="고운 정성과 마음으로 일군 땅콩">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>전북 &nbsp; 고창</span></p>
                                                </li>
                                                <li>
                                                    <p><span>땅콩</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000065');">
                                                    고운 정성과 마음으로 일군 땅콩</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000064');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="곤충 산업에서 찾은 미래 가능성에 도전하다">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>충북 &nbsp; 청주</span></p>
                                                </li>
                                                <li>
                                                    <p><span>반려동물 간</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000064');">
                                                    곤충 산업에서 찾은 미래 가능성에 도전하다</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000063');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="정직하게 키우고 정성으로 달이다 건강한 단맛, 흑도라지강청">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>전북 &nbsp; 장수</span></p>
                                                </li>
                                                <li>
                                                    <p><span>흑도라지강청</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000063');">
                                                    정직하게 키우고 정성으로 달이다 건강한 단맛, 흑도라지강청</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000062');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="생강청에 지리산의 자연을 담다">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>경남 &nbsp; 함양</span></p>
                                                </li>
                                                <li>
                                                    <p><span>생강</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000062');">
                                                    생강청에 지리산의 자연을 담다</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000061');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="버섯산업 발전과 청년농업인 유입을 위해 최선을 다하겠습니다">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>전북 &nbsp; 김제</span></p>
                                                </li>
                                                <li>
                                                    <p><span>버섯</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000061');">
                                                    버섯산업 발전과 청년농업인 유입을 위해 최선을 다하겠습니다</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_photo">
                                            <a class="link" href="javascript:fn_detailView('BOARD02_0000000060');">
                                                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9uatpWP5y%2FBsLxA7Vla4IuDEe3XyLlcyhgajvjHTrVwew%3D%3D&fname=VaQZG4aE8tLnk0UPRWfmFcrbSVNEoHKXY6mhu5KW2lUhL15U171p56%2Fumq7ABh5d2Rm1FAG7xjNLtT8OpRD6EQ%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D"
                                                    alt="산청에서 청년농부가 유기농으로 생산한 국산 바나나의 특별한 맛">
                                            </a>
                                        </div>
                                        <div class="item_tech">
                                            <ul>
                                                <li>
                                                    <p><span>경남 &nbsp; 산청</span></p>
                                                </li>
                                                <li>
                                                    <p><span>바나나</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item_cont">
                                            <div class="tit" data-depth="1">
                                                <a class="link" href="javascript:fn_detailView('BOARD02_0000000060');">
                                                    산청에서 청년농부가 유기농으로 생산한 국산 바나나의 특별한 맛</a>
                                            </div>
                                            <div class="writer_info">
                                                멘토 : <span class="mentor_name"> 이누리 </span><br>
                                                이메일 : <span class="mentor_email">-</span><br>
                                                연락처 : <span class="menter_phone">010-0000-0000</span>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="btn_wrap">
                                <ul>
                                </ul>
                            </div>
                               <!-- 페이징 -->
                <div id="page" class="page_height">
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

<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="${pageContext.request.contextPath}/assets/js/mentor/mentor.js"></script>
</html>