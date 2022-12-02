<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역별 특산물 정보</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/local_specialties/local_specialties.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/page.css"/>
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
                                <li class="nowMenu after_slash"><span>작물 정보</span></li>
                                <li class="after_slash"><span class="checkText">지역별 특산물 정보</span></li>
                                <li>계절별 작물 추천</li>
                                
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
        <div class="first">
            <div class="search_title">특산물 검색</div>
            <div class="input_group">
                <input type="text" style="border: 1px solid #e3e3e3; height: 25px; width: 250px;">
            </div>
        </div>
        <div class="second">
            <div class="search_title">시/도 선택</div>
            <div class="input_group">
                <select name="" id="korea_city" class="dropbox_height" onchange="clickCityChange(this)">
                    <option>선택해주세요</option>
                    <option value="busan">부산광역시</option>
                    <option value="daegu">대구광역시</option>
                    <option value="incheon">인천광역시</option>
                    <option value="daejeon">대전광역시</option>
                    <option value="ulsan">울산광역시</option>
                    <option value="sejong">세종특별자치시</option>
                    <option value="gyeonggi">경기도</option>
                    <option value="gangwon">강원도</option>
                    <option value="chungcheongbuk-do">충정북도</option>
                    <option value="chungcheongdam-do">충청남도</option>
                    <option value="Jeollabuk-do">전라북도</option>
                    <option value="Jeollanam-do">전라남도</option>
                    <option value="Gyeongsangbuk-do">경상북도</option>
                    <option value="Gyeongsangnam-do">경상남도</option>
                </select>
            </div>
        </div>
        <div class="last">
            <div class="search_title">시/군/구 선택</div>
            <div class="input_group">
                <select name="" id="korea_smail_city" class="dropbox_height">
                    <option>선택해주세요</option> 
                </select>
            </div>
        </div>
        <button type="submit" class="search_button"></button>
    </form>
</div>
<div class="table_wrap">
    
    <table class="grid_topLine">
        <colgroup><col width="20%"><col width="20%"><col width="20%"><col width="20%"><col width="20%"></colgroup>
        <thead>
            <th scope="col">번호</th>
            <th scope="col">사진</th>
            <th scope="col">특산물명</th>
            <th scope="col">지역</th>
            <th scope="col">등록일</th>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/234413_MF_BIMG_01.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>향토 지키미</td>
                <td>전라남도 > 여수시</td>
                <td>2022-01-10</td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/234412_MF_BIMG_01.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>귀리다움 귀리</td>
                <td>전라남도 > 여수시</td>
                <td>2022-01-10</td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <img src="https://www.imsil.go.kr/images/02_tour/content/sub04/special_img04.jpg" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>임실딸기</td>
                <td>전라북도 > 임실군</td>
                <td>2022-01-05</td>
            </tr>
            <tr>
                <td>4</td>
                <td>
                    <img src="http://www.traveli.co.kr/repository/show/contents/SHOW_CONN201707251744586388232.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>임실토마토</td>
                <td>전라북도 > 임실군</td>
                <td>2022-01-05</td>
            </tr>
            <tr>
                <td>5</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/229490_MF_BIMG_01.gif" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>부추</td>
                <td>울산광역시</td>
                <td>2021-06-21</td>
                
            </tr>
            <tr>
                <td>6</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/229405_MF_BIMG_01.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>밤</td>
                <td>경상남도 > 합천군</td>
                <td>2021-06-17</td>
               
            </tr>
            <tr>
                <td>7</td>
                <td>
                    <img src="https://health.chosun.com/site/data/img_dir/2019/06/11/2019061102132_0.jpg" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>녹차</td>
                <td>경상남도 > 합천군</td>
                <td>2021-06-17</td>
                
            </tr>
            <tr>
                <td>8</td>
                <td>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Tteokcha_5.png/390px-Tteokcha_5.png" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>발효차</td>
                <td>경상남도 > 합천군</td>
                <td>2021-06-17</td>
           
            </tr>
            <tr>
                <td>9</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/229402_MF_BIMG_01.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>허굴농차</td>
                <td>경상남도 > 합천군</td>
                <td>2021-06-17</td>
                
            </tr>
            <tr>
                <td>10</td>
                <td>
                    <img src="http://www.nongsaro.go.kr/cms_contents/1015/229401_MF_BIMG_01.JPG" alt="" style="width: 128px; height: 108px;">
                </td>
                <td>기능성 소금 선물세트</td>
                <td>경상남도 > 합천군</td>
                <td>2021-06-17</td>
            </tr>
        </tbody>
    </table>
</div>

  <!-- 페이징 -->
                                        <div id="page">
                                            <div class="page_nation" style="margin-top: 30px; margin-bottom: 30px">
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
    // /* 지역(도,시) 누르면 세부 도시 드롭박스로 나오게 하기  */
    function clickCityChange(e){
        var busan = ["선택하세요","강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산센터", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구"];
        var daegu = ["선택하세요","남구", "달서구", "달성군", "대구센터", "동구", "북구", "서구", "수성구", "중구"];
        var incheon = ["선택하세요","강화군","옹진군"];
        var daejeon = ["선택하세요","계양구", "남구", "남동구", "동구", "부평구", "서구", "연수구", "옹진군", "인천센터", "중구"];
        var ulsan = ["선택하세요", "동구", "북구", "울산센터", "울주군"];
        var sejong = ["선택하세요", "세종센터", "조치원읍"];
        var gyeonggi = ["선택하세요","고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시", "남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시", "안양시", "양주시", "양평군", "여주시", "연천군", "오산시", "용인시", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천시", "하남시", "화성시"];
        var gangwon = ["선택하세요","강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군", "영월군", "원주시", "인제군", "정선군", "철원군", "춘천시", "태백시", "평창군", "홍천군", "화천군", "횡성군"];
        var chungcheongbuk = ["선택하세요","괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청주시", "충주시"];
        var chungcheongdam = ["선택하세요","계룡시", "공주시", "금산군", "논산시", "당진시", "동남구", "보령시", "부여군", "서북구", "서산시", "서천군", "아산시", "예산군", "천안시", "청양군", "태안군", "홍성군"];
        var Jeollabuk = ["선택하세요","고창군", "김제시", "남원시", "덕진구", "무주군", "부안군", "순창군", "완산구", "완주군", "익산시", "임실군", "장수군", "전주시", "정읍시", "진안군"];
        var Jeollanam = ["선택하세요","강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", "여수시", "영광군", "영암군", "완도군", "장성군", "장흥군", "전라남도", "진도군", "함평군", "해남군", "화순군"];
        var Gyeongsangbuk = ["선택하세요","경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군", "영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시"];
        var Gyeongsangnam = ["선택하세요","거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시", "산청군", "양산시", "의령군", "진주시", "창녕군", "창원시", "통영시", "하동군", "함안군", "함양군", "합천군"];

        var target = document.getElementById("korea_smail_city");

        if(e.value == "busan") var list = busan;
        if(e.value == "daegu") var list = daegu;
        if(e.value == "incheon") var list = incheon;
        if(e.value == "daejeon") var list = daejeon;
        if(e.value == "ulsan") var list = ulsan;
        if(e.value == "sejong") var list = sejong;
        if(e.value == "gangwon") var list = gangwon;
        if(e.value == "gyeonggi") var list = gyeonggi;
        if(e.value == "chungcheongbuk-do") var list = chungcheongbuk;
        if(e.value == "chungcheongdam-do") var list = chungcheongdam;
        if(e.value == "Jeollabuk-do") var list = Jeollabuk;
        if(e.value == "Jeollanam-do") var list = Jeollanam;
        if(e.value == "Gyeongsangbuk-do") var list = Gyeongsangbuk;
        if(e.value == "Gyeongsangnam-do") var list = Gyeongsangnam;

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