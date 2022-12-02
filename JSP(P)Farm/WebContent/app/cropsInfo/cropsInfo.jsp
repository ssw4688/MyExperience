<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작물 정보</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cropsInfo/cropsInfo.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/page.css"/>


    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <!-- 바디 -->
        
<div class="sub_title">
    <div class="container">
        <div class="inner">
            <div class="title_left_box">
                <div class="snb_wrap">
                    <nav class="snb">
                        <div class="top" style="display: inline-block">농업정보</div>
                        <div class="lgr_snb" style="display: inline-block; margin-left: 20px;">
                            <ul class="lgr_ul">
                                <li class="nowMenu after_slash"><span class="checkText">작물 정보</span></li>
                                <li class="subMenu after_slash"><span>지역별 특산물 정보</span></li>
                                <li><span class="subMenu">계절별 작물 추천</span></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="title_right_box">
                <img src="https://www.rda.go.kr/young/file/imageView.do?fpath=78mfPU1tH5tpGdf2EjZQb0R3AXuZGhjU7I8pBv4Rl9tqEaXhOUrKyqO8iZWgudng&fname=9WQzvMM7l2peGVnsOK9OIlCgIjetBkDg5Ctzg52GA8BQcOYk2JAfThrzr%2FPw8mLrGt6NK%2BJmQj8FAxin7nLW%2Fw%3D%3D&fmime=Lg45aghPCGTl0b%2FVATARWg%3D%3D">
            </div>
        </div>
    </div>
</div>

<div class="search">
    <form action="">
        <div style="display: flex;">

            <div class="first">
                <div class="search_title">카테고리</div>
                <div class="input_group">
                    <select name="" class="kindName" onchange="cropsChange(this)">
                        <option>선택하세요</option>
                        <option value="crops">식량작물</option>
                        <option value="vegetable">채소</option>
                        <option value="fruit">과수</option>
                    </select>
                </div>
            </div>
            <div class="box_margin">
                <div class="search_title">작물 분류</div>
                <div class="input_group">
                    <select name="" class="kindName" id="selectCrops">
                        <option>선택하세요</option>
                    </select>
                </div>
            </div>
            <div class="box_margin">
                <div class="search_title">육성년도</div>
                <div class="input_group">
                    <select name="" class="kindName">
                        <option>선택하세요</option>
                        <option>2022</option>
                        <option>2021</option>
                        <option>2020</option>
                        <option>2019</option>
                        <option>2018</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="search_button"></button>
        </div>
    </form>
</div>
<div class="table_wrap">
    
    <table class="grid_topLine">
        <colgroup><col width="5%"><col width="6%"><col width="10%"><col width="6%"><col width="15%"><col width="13%"><col width="*"></colgroup>
        <thead>
            <th scope="col">번호</th>
            <th scope="col">사진</th>
            <th scope="col">작물명</th>
            <th scope="col">육성년도</th>
            <th scope="col">육성기관</th>
            <th scope="col">품종명</th>
            <th scope="col">주요특성</th>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvkKAkPIKuCwUYSA7aOtJgU83fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2021</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>참누리(Chamnuri)</td>
                <td>ㅇ 중생종, 숙색 및 밥맛 양호 ㅇ 도열병 중, 흰잎마름병(K1-K3a)․줄무늬잎마름병․오갈병 강 ㅇ 내도복성, 내수발아성 ㅇ 밥쌀용</td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvVaHLPSeTpq52I/2UwOGdS83fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 특수미</td>
                <td>2021</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>제이제이644더블유엑스(JJ644wx)(JJ644wx)</td>
                <td>가. 중만생, 찰벼, 단간 내도복 나. 복합내병성(도열병 중강, 벼흰잎마름병(K1∼K3, K3a) 및 줄무늬잎마름병 강)</td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvZIimsQoaEgaal7lnInhpfs3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2021</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>보르미(Boreumi)</td>
                <td>ㅇ 조생종, 남부평야지 조기재배용, 내도복성, 내수발아성 ㅇ 도열병․흰잎마름병(K1-K3)․줄무늬잎마름병 강 ㅇ 도정특성(백미완전미율, 완전미도정수율) 우수 ㅇ 용도 : 밥쌀용</td>
            </tr>
            <tr>
                <td>4</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lv4UCAer8CoTN1k53d7I4/Ec3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2021</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>백진미(Baegjinmi)</td>
                <td>o 중만생, 쌀 외관 및 도정특성 양호 o 숙색 및 초형 양호, 내도복성, 저온발아성 우수 o 도열병 중, 흰잎마름병 및 줄무늬잎마름병 강 o 용도 : 밥쌀용</td>
            </tr>
            <tr>
                <td>5</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvujih4Gb28gjxndeVvcpibc3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원 남부작물부 논이용작물과</td>
                <td>미소진미(Misojinmi)</td>
                <td>가. 용도: 밥쌀용 나. 주요특성: 중만생, 식미 및 도정수율 양호</td>
            </tr>
            <tr>
                <td>6</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvzcqo5bE5I9LH0LjPFIDWy83fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 통일형벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원 남부작물부 논이용작물과</td>
                <td>보끄미(Bokkeumi)</td>
                <td>가. 용도: 가공용(볶음밥 등) 나. 주요특성: 중만생, 통일형, 흰잎마름병(K3a) 및 줄무늬잎마름병 강</td>
            </tr>
            <tr>
                <td>7</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvt6XTmNj124vjqcl/RrPOEc3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>미소찬(Misochan)</td>
                <td>○ 중생종, 외관품위 및 밥맛우수 ○ 도열병 강, 흰잎마름병(K1, K2, K3)저항성, 내수발아성 ○ 용도 : 밥쌀용</td>
            </tr>
            <tr>
                <td>8</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvuVjCV0E/xfCjD29QWIJkCs3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>제이제이621엠알(JJ621MR)</td>
                <td>○ 중생, 고품질, 도정특성 우수 ○ 도열병․흰잎마름병(K1-K3a)․줄무늬잎마름병․벼멸구 강, 내수발아성 ○ 용도 : 밥쌀용</td>
            </tr>
            <tr>
                <td>9</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvt6XTmNj124vjqcl/RrPOEc3fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼 > 일반벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>월하미(Weolhami)</td>
                <td>o 일대잡종, 중만생, 열대아시아 적응, 장립형 o 도열병 강, 흰잎마름병(K1, K2, K3) 및 줄무늬잎마름병 저항성 o 용도: 밥쌀용(동남아시아 종자수출용)</td>
            </tr>
            <tr>
                <td>10</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/portal/imgView.do?ep=a5gb/CMEYLclIUPoWw9/DTnomi9S/YDfHD2ofIDhNOqPWPXCk6r5f9/5EwSYQ8lvkKAkPIKuCwUYSA7aOtJgU83fCBe83GYJtr@G9Xgc/x4!" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>논벼</td>
                <td>2020</td>
                <td>농촌진흥청 국립식량과학원</td>
                <td>제이제이643더블유디에스(JJ643WDS)</td>
                <td>가. 중만생, 담수직파 초기입모 우수 (담수토중출아율 76.4% * 동안 대비 30% 증진) 나. 저온발아 및 발아속도 우수(저온 발아율 90%, 저온발아일수 7.8일) 다. 용도: 담수직파 적응 고품질 벼 품종육성을 위한 중간모본</td>
            </tr>
        </tbody>
    </table>
</div>
  <!-- 페이징 -->
                                        <div id="page">
                                            <div class="page_nation" style="margin-top: 40px; margin-bottom: 30px">
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
<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

     // /* 카테고리 누르면 해당 작물분류 드롭박스로 나오게 하기  */
     function cropsChange(e){
        var crops = ["선택하세요","벼", "맥류", "두류", "잡곡류", "서류"];
        var vegetable = ["선택하세요","고추", "딸기", "마늘", "토마토", "무", "방울토마토", "상추", "양배추", "양파","파"];
        var fruit = ["선택하세요","귤","감","매실","배","복숭아","사과","살구","자두","포도","키위"];
        
        var target = document.getElementById("selectCrops");

        if(e.value == "crops") var list = crops;
        if(e.value == "vegetable") var list = vegetable;
        if(e.value == "fruit") var list = fruit;

        target.options.length = 0;

        for(x in list){
            var opt = document.createElement("option")
            opt.value = list[x];
            opt.innerHTML = list[x];
            target.appendChild(opt);
        }

    }
</script>
</html>