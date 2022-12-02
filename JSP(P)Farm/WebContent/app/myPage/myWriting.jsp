<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage/myWriting.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    <title>게시판 활동 내역</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <!-- 서브타이틀 -->
    <div class="sub_title">
        <div class="container">
            <div class="inner">
                <!-- "마이페이지" 폰트 -->
                <div class="left_font">
                    <div class="mypage">
                        <nav><div class="top">게시판 활동 내역</div></nav>
                    </div>
                </div>

                <!-- 일러스트 이미지 -->
                <div class="title_right_box">
                    <div class="communityImg"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="wrap">
        <!-- 검색 입력창 -->
        <form class="searchForm">
            <div class="searchOut">
                <div class="searchInner">
                    <span class="selectBox">
                        <span class="selectDrop">
                            <select name="selectChoice" class="selectChoice">
                                <option value="sj">제목</option>
                                <option value="cn">내용</option>
                                <option value="cnsj">제목+내용</option>
                                <option value="nm">작성자</option>
                            </select>
                        </span>
                    </span>
                    <span class="inputLine">
                        <span class="inputBox">
                            <input type="text" class="searchBox">
                        </span>
                    </span>
                    <span class="submit">
                        <button type="button" class="submitBtn"></button>
                    </span>
                </div>
            </div>
        </form>

        <!-- 검색 결과 총 갯수 -->
        <p class="countText"><img src="https://www.returnfarm.com:444/css/wvtex/img/sub/board_count.png">총 <span>2</span>건</p>

        <!-- 검색 결과 리스트 출력 -->
        <div class="boardList">
            <table class="boardTable">
                <colgroup>
                    <col style="width: 8%;">
                    <col style="width: 52%;">
                    <col style="width: 8%;">
                    <col style="width: 12%;">
                    <col style="width: 12%;">
                    <col style="width: 8%;">
                </colgroup>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>첨부파일</th>
                    <th>아이디</th>
                    <th>등록일자</th>
                    <th>조회수</th>
                </tr>
                <tr>
                    <td class="number">2</td>
                    <td class="title"><a href="">농산물을 분말로 가공해서 부가가치를 높여드립니다.</a> (1)</td>
                    <td class="icon"><img src="${pageContext.request.contextPath}/assets/images/common/fileImage.png"></td>
                    <td class="writer">mmkk</td>
                    <td class="date">2022.10.03</td>
                    <td class="viewCnt">10</td>
                </tr>
                <tr>
                    <td class="number">1</td>
                    <td class="title"><a href="">귀농 귀촌 하우스 농사 하실분</a><span class="commentCnt"> (0)</span></td>
                    <td class="icon"><img src="${pageContext.request.contextPath}/assets/images/common/fileImage.png"></td>
                    <td class="writer">mmkk</td>
                    <td class="date">2022.10.01</td>
                    <td class="viewCnt">73</td>
                </tr>
            </table>
        </div>
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
    <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
</html>