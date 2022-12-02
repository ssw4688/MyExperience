<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

    <!-- 영문, 숫자 play 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/page.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/notice_list.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/subheader.css"/>
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
                                    <li class="nowMenu"><a href="/young/board/board04.do" class="active">
                                        <span>공지사항</span>
                                    </a>
                                </li>
                                <li><a href="/young/board/board07.do" class="active">
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
                    <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=9RfoLYoam0TsoWU0M9CunXVDpRV%2BMYjz%2Fwx9V8vcTVN9PUStsh042e3NWGD7IukskEQAGJfLet60yqWGs%2Bedtw%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D">
                </div>
            </div>
        </div>
    </div>
    <!-- subheader -->

    <!-- list -->
    <!-- 검색어 입력 폼 -->
<div class="contentfullwrap">
    <div class="contentwrap">
    <form action="" name="searchForm" method="post">
        <div class="search-form">
            <span class="s-form">
                <select name="searchSelect" class="val">
                    <option value="sj">제목</option>
                    <option value="cn">내용</option>
                    <option value="cnsj">제목+내용</option>
                    <option value="nm">작성자</option>
                </select>
            </span>
            <span class="s-f-input">
                <span class="search-input">
                    <input type="text" name="programSearch" placeholder="검색어를 입력하세요">
                </span>
            </span>
            <button type="button" class="">
                <img src="${pageContext.request.contextPath}/assets/images/common/search.png">
            </button>
        </div>
    </form>

    <span class="list-count">총
        <span>2476</span>건
    </span>

    <table>
        <thead>
            <tr class="title">
                <th class="number" >번호</th>
                <th class="title" >제목</th>
                <th class="file" >첨부파일</th>
                <th class="registrant" >등록자</th>
                <th class="regist-date" >등록일자</th>
                <th class="viewcount" >조회수</th>
            </tr>
        </thead>
        <!-- ↓ 데이터 출력 -->
        <tbody>
            <tr>
                <td class="number"><span class="noti">공지</span></td>
                <td class="title"><a href="">★ 2022년 청년귀농 장기교육 운영기관별 교육생 모집 안내 </a> </td>
                <td class="file">
                    <img src="${pageContext.request.contextPath}/assets/images/common/fileImage.png" alt="">
                </td>
                <td class="registrant">관리자</td>
                <td class="regist-date">2022-09-01</td>
                <td class="viewcount">105</td>
            </tr>
            <tr>
                <td class="number">2</td>
                <td class="title"><a href="">[전라남도] 2022 전라남도 귀농산어촌 고향사람 박람회 </a> </td>
                <td class="file">-</td>
                <td class="registrant">관리자</td>
                <td class="regist-date">2022-10-02</td>
                <td class="viewcount">51</td>
            </tr>
        </tbody>
    </table>

      <!-- 페이징 -->
      <div id="page">
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
</div>
</div>
<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
</html>