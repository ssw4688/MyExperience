<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 영어폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/footer.css">
</head>
<body>
    <footer class="footer">
        <div class="bottom_link">
            <div class="footer_container">
                <div class="logo">
                    <img src="${pageContext.request.contextPath}/assets/images/common/logo_white.png" style="vertical-align: middle; width: 130%;"
                        alt="똑똑! 청년농부">
                </div>
                <ul class="list_link">
                    <li>
                        <a class="footer_a" href="admin.jsp" target="_blank">관리자 페이지</a>
                    </li>
                    <li>
                        <a class="footer_a" href="https://www.rda.go.kr/psninfoprot.do" target="_blank">개인정보처리방침</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="address">
            <div class="footer_container">
                <ul>
                    <li>코리아IT아카데미 강남점</li>
                    <li>서울특별시 강남구 테헤란로 146 현역빌딩 3,4층</li>
                    <li>대표전화 00-000-0000</li>
                </ul>
                <p class="copy">COPYRIGHT &copy;. ALL RIGHTS RESERVED</p>

            </div>
        </div>
    </footer>
</body>
</html>