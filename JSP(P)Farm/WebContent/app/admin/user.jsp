<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/font.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/contents.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/user.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/form.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/page.css"/>
        
    <!-- 버튼 클릭 시 확인 알림창 -->
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
     <script src="${pageContext.request.contextPath}/assets/js/admin/check.js"></script>
    <title>관리자-사용자 관리</title>
</head>

<body>

    <div id="wrapper">
        <!-- 세로 메뉴바 -->
		<jsp:include page="${pageContext.request.contextPath}/app/admin/admin_menu.jsp"/>

        <!-- 헤더 ~ 밑에 메인 컨텐츠 -->
        <div id="container">
            <!-- 헤더 -->
            <header>
                <span id="admin-header-title">사용자 관리</span>
                <span id="admin-mode">관리자 모드</span>
            </header>

            <!-- 컨텐츠 상단 통계 -->
            <div id="contents-top">
                <div class="content c-left">
                    <div id="counts-group">
                        <div class="counts">
                            <!-- 오늘 추가 되는 프로그램 수 -->
                            <div class="count-title">오늘 가입</div>
                            <span class="count">1</span>
                        </div>
                        <div class="counts">
                            <!-- 오늘 종료 되는 프로그램 수 -->
                            <div class="count-title">총 회원수</div>
                            <span class="count">2</span>
                        </div>
                    </div>
                </div>
                <!-- 차트 - 일주일 동안의 가입 통계-->
                <div class="content">
                    <div id="lineChart"></div>
                </div>
            </div>

            <!-- 컨텐츠 검색 부분 -->
            <div class="p-contents">

                <!-- 검색어 입력 폼 -->
                <form action="" name="searchForm" method="post">
                    <div class="search-form">
                        <span class="s-form">
                            <select name="searchSelect" class="s-select">
                                <option value="id">ID</option>
                                <option value="email">이메일</option>
                                <option value="name">이름</option>
                                <option value="phone">연락처</option>
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

            </div>

            <!-- 프로그램 리스트 출력 틀 -->
            <div class="p-contents contents-bottom">

                <span class="list-count">총
                    <span>2476</span>건
                </span>

                <table>
                    <tr class="title">
                        <th class="num">회원번호</th>
                        <th class="id">ID</th>
                        <th class="email">이메일</th>
                        <th class="phone">연락처</th>
                        <th class="name">이름</th>
                        <th class="birth">구분</th>
                        <th class="address">주소</th>
                        <th class="program-count">체험</th>
                        <th class="part-count">알바</th>
                        <th class="delete"></th>
                    </tr>
                    <!-- ↓ 데이터 출력 -->
                    <tr>
                        <td>1</td>
                        <td>나랑농부할래</td>
                        <td>java123@gmail.com</td>
                        <td>010-1234-1234</td>
                        <td>김농부</td>
                        <td>일반인</td>
                        <td>서울특별시 강남구 테헤란로 146</td>
                        <td>2</td>
                        <td>5</td>
                        <td class="delete"><input type="button" value="탈퇴" onClick="outCheck()"></td>
                    </tr>
                    <tr>
                        <td>13534</td>
                        <td>알콩달콩심자</td>
                        <td>beanLoVe@gmail.com</td>
                        <td>010-1122-3344</td>
                        <td>김콩빈</td>
                        <td>농장주</td>
                        <td>서울특별시 강남구 역삼동 736-6 06236</td>
                        <td>2</td>
                        <td>5</td>
                        <td class="delete"><input type="button" value="탈퇴" onClick="outCheck()"></td>
                    </tr>
                </table>

                <!-- 페이징 -->
                <div id="page">
                    <div class="page_nation">
                        <a class="arrow pprev" href="#"></a>
                        <a class="arrow prev" href="#"></a>
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                        <a href="#">8</a>
                        <a href="#">9</a>
                        <a href="#">10</a>
                        <a class="arrow next" href="#"></a>
                        <a class="arrow nnext" href="#"></a>
                    </div>
                </div>

            </div>

        </div>

    </div>

</body>
<!-- 차트 -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="${pageContext.request.contextPath}/assets/js/admin/chartAPI.js"></script>
<html>