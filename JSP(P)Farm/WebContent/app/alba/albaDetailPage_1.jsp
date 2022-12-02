<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 신청 상세페이지1</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/alba/albaDetailPage_1.css"/>
</head>
<body>
 <jsp:include page="${pageContext.request.contextPath}/app/fix/header.jsp"/>
    <div class="wrap">
        <div class="sub_title">
            <div class="container">
                <div class="inner">
                    <div class="title_left_box">
                        <div class="snb_wrap">
                            <nav class="snb">
                                <div class="top" style="display: inline-block">아르바이트 신청</div>
                                <div class="lgr_snb" style="display: inline-block; margin-left: 20px;">
                                    <ul class="lgr_ul">
                                        <li class="nowMenu"><span>농촌 체험 프로그램</span></li>
                                        <li class="secondMenu"><span class="checkText">농촌 아르바이트</span></li>
                                    </ul>
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
        <div class="main_wrap">
            <div class="main_guide">
                <p class="tit">
                    아르바이트 신청
                </p>
                <p class="desc">
                    <strong>전문가와 함께 프로그램 체험 및 아르바이트를 해보세요!</strong>
                    <br>
                    너와농부싶어! 에서는 피곤한 일상생활으로부터 벗어나고 싶으신 도시민들의 안정적인 농촌 정착 및 체험을 돕기위해
                    <br>
                    전문가와 함께하는 체험 프로그램이 있으며, 소소한 일거리가 필요하신 분들께는 아르바이트도 준비되어 있습니다
                </p>
            </div>
            <div class="conwrap">
                <p class="contit">아르바이트 신청 절차</p>
                <div class="process">
                    <ul class="clearfix">
                        <li>
                            <p class="stepnum" id="firstStep">Step<br><strong>1</strong></p>
                            <p class="conarea">
                                <strong>아르바이트 상세 내용 안내</strong>
                                <br>
                                상세 내역 확인 후
                                <br>
                                아르바이트 신청 클릭
                                <br>
                                (지원신청서 작성으로 이동)
                            </p>
                        </li>
                        <li>
                            <p class="stepnum" id="secondStep">Step<br><strong>2</strong></p>
                            <p class="conarea">
                                <strong>지원신청서 작성</strong>
                                <br>
                                신청서 내역 작성 후
                                <br>
                                프로그램 지원 버튼 클릭
                                <br>
                                (관리자 승인 후 신청 완료)
                            </p>
                        </li>
                        <li style="float: right;">
                            <p class="stepnum" id="lastStep">Step<br><strong>3</strong></p>
                            <p class="conarea">
                                <strong>신청 완료</strong>
                                <br>
                                마이페이지에서 
                                <br>
                                관리자 승인 여부 확인
                                <br>
                                (부득이한 사정으로 취소될 수 있음)
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="sub_guide">
            <form action="">
                <h3 class="view_tit">아르바이트 상세 페이지</h3>
                <div class="view_main">
                    <img src="${pageContext.request.contextPath}/assets/images/alba_Apply/alba_banner.png" alt="">
                    <div class="detail_info">
                        <div class="info_apply">
                            <a href="" class="apply_on">
                                <span>아르바이트 신청</span>
                            </a>
                        </div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 160px;">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td><span class="list_icon">지역</span></td>
                                    <td><span>충남 영동 안정리27길</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">아르바이트 날짜</span></td>
                                    <td><span>2022-10-09</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">아르바이트 시간</span></td>
                                    <td><span>13:00~17:00</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">시급</span></td>
                                    <td><span>10,000원</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">신청 기간</span></td>
                                    <td><span>2022-09-29 09:00 ~ 2022-10-09 18:00</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">모집 인원 수</span></td>
                                    <td><span>2명</span></td>
                                </tr>
                                <tr>
                                    <td><span class="list_icon">문의 전화</span></td>
                                    <td><span>1600-1234</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>

     <jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</html>