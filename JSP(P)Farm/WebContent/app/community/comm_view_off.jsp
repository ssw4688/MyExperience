<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title></title>

   
    <!-- 영문, 숫자 play 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@400;700&display=swap" rel="stylesheet">
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/comm_view_off.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/community/subheader.css"/>
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
                                        <li ><a href="/young/board/board04.do" class="active">
                                            <span>공지사항</span>
                                        </a>
                                    </li>
                                    <li><a href="/young/board/board07.do" class="active">
                                            <span>멘토 홍보 게시판</span>
                                        </a>
                                    </li>
                                    <li class="nowMenu"><a href="/young/board/board08.do" class="active">
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
    <div class="contentfullwrap">
        <div class="contentwrap">
            <div class="base_boardwrap">
                <div class="printboard">
                    <div class="base_boardview">
                        <table width="100%;">
                            <colgroup>
                                <col width="100%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="title">
                                        청년! 3박4일 예천에 한번 살아볼까요?</th>
                                </tr>
                                <tr class="datatext">
                                    <td class="datatext">
                                        <div class="datatext_l">등록일 : <span>2022.09.30</span></div>
                                        <ul class="datatext_r">
                                            <li>아이디 : 이경철</li>
                                            <li>조회수 : 11</li>
                                        </ul>
                                    </td>
                                </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td class="textarea">
                                        <br>
                                        경상북도 예천군에서 도시청년 3박4일 무료 살아보기를 진행 합니다. ^^ 
    <br>
    <br>□ 행 사 명 : ‘도시청년 예천에 퐁당’
    <br>□ 기 간 : 2022. 10. 11.(화) ~ 10. 14.(금) / 3박4일
    <br>□ 모집기간 : 2022. 9. 26.(월) ~ 10. 9.(일) (조기마감될 수 있습니다) 
    <br>□ 참 가 비 : 숙박비(전통한옥체험관), 식대(예천맛집), 체험비 전액 무료/어메니티/기념품 제공
    <br>□ 시 상 : 마지막날 팜파티와 예천 살이 의견을 발표하고 시상합니다. 푸짐한 시상 선물! 
    <br>                 지역 정착 프로그램 안내 및 청년마을 입주 상담도 진행하여! 로컬크리에이터의 꿈의 기회도! 
    <br>□ 장 소 : 금당실 한옥체험관 및 예천군 일원
    <br>□ 참가인원 : 20명 (20세~35세 예천관외 청년)
    <br>
    <br>행사 링크 : https://blog.naver.com/yecheonnvp/222885332339</td>
                                </tr>
                                <tr class="file">
                                    <td class="tblpd01">
                                        <div id="fileList"><a href="javascript:void(0)" onclick="javascript:FL.vtexDownloadFile(&quot;FILE_000000000088177&quot;,&quot;1&quot;,&quot;FL&quot;)">123.jpg [204155 byte]</a><br></div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <div class="te_right mt25">
                            <button type="button" class="iron-iconized iron-action return" onclick="doList();"><span class="val">목록</span></button>
                        </div>
                        
                    </div>
                </div>
            </div>
        <div id="commentArea" class="comment_area"><!-- 기초데이터 설정 -->
    <!-- 댓글 내용 시작 -->
    <ul class="comment_box">
                <li class="comment_text01">로그인 후 댓글을 등록할 수 있습니다.</li>
                <li>
                    <ul class="comment_inputBox">
                        <li class="common_textarea">
                            <textarea class="comm_textarea" readonly="readonly" title="댓글입력"></textarea>
                        </li>
                    </ul>
                </li>
                <li class="comment_text02 showLength">0/1000byte</li>
            </ul>
        <!-- 댓글 내용 종료 -->
    
    
    
    </div>
            </div>
        </div>
<jsp:include page="${pageContext.request.contextPath}/app/fix/footer.jsp"/>
</body>

</html>