<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>지역 정보</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/regionInfo/region.css">
</head>
<body>
  <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <div class="sub_title">
        <div class="container">
            <div class="inner">
                <div class="title_left_box">
                    <div class="snb_wrap">
                        <nav class="snb">
                            <div class="top" style="display: inline-block">지역정보</div>
                            <div class="lgr_snb" style="display: inline-block; margin-left: 20px;">
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="title_right_box">
                    <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=8nFVTgUIDUlBiYgKluFrhBdHVni9G2K67o64OtO8tD1DEXBRoHgiiIK%2BvPxFADkbugGa28PnSO6qNVxcSqtCKg%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D">
                </div>
            </div>
        </div>
    </div>

<div class="inner">
<div class="sub03_tax_box">
    <ul>
        <li class="tax_b1">
            <div class="tax_text">
            <p class="f_01">마을회관 위치 확인하기</p>
        
            <p class="f_02">간단하게 마을회관 위치를 확인 할 수 있습니다.</p>
            </div>
        
            <div class="btn_wrap">
           <input type="text" placeholder="원하는 지역을 입력하세요.">
           <button id="search_button"></button>
            </div>
            </li>
    </ul>
</div>

    <div class="map">
        <img src="${pageContext.request.contextPath}/assets/images/region/wleh.png" class="map_photos">
    </div>
</div>     

  <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>

</html>