<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/font.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/main_contents.css"/>
        
   <title>관리자-메인</title>
</head>

<body>

   <div id="wrapper">
      <!-- 세로 메뉴바 -->
		<jsp:include page="${pageContext.request.contextPath}/app/admin/admin_menu.jsp"/>

      <!-- 헤더 ~ 밑에 메인 컨텐츠 -->
      <div id="container">
         <!-- 헤더 -->
         <header>
            <span id="admin-header-title" class="short">메인</span>
            <span id="admin-mode">관리자 모드</span>
            <span id="userCount">가입된 회원 수 총 <strong> 21343 </strong>명</span>
         </header>

         <!-- 메인화면 컨텐츠 -->
         <div id="content-wrap-top" class="content-wrap">

            <div class="contents">
               <div class="content-title">
                  <div class="title">방문자 현황</div>
               </div>
               <div class="c-content">
                  <!-- 차트 -->
                  <div id="lineChart"></div>
               </div>
            </div>

            <div class="contents">
               <div class="content-title none">
                  <div class="title">일자별 통계</div>
                  <div class="title2">월별</div>
               </div>
               <div class="c-content">
                  <table>
                     <tr>
                        <th>일자</th>
                        <th>체험 신청</th>
                        <th>알바 신청</th>
                        <th>가입</th>
                        <th>방문자</th>
                        <th>게시글</th>
                        <th>댓글 수</th>
                     </tr>
                     <tr class="check">
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>4</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>2022-09-30</td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                     </tr>
                     <tr>
                        <td>이번달 합계</td>
                        <td>12건</td>
                        <td>7건</td>
                        <td>7명</td>
                        <td>1명</td>
                        <td>8</td>
                        <td>8</td>
                     </tr>
                  </table>
               </div>
            </div>

         </div>
         <div class="content-wrap">

            <div class="c-w-wrap">

               <!-- 최신 유저 -->
               <div class="contents small">
                  <div class="content-title">
                     <div class="title">최근 가입한 사용자</div>
                     <div class="title2">
                           <a href="">더보기 →</a>
                     </div>
                  </div>
                  <div class="c-content">
                     <table>
                        <colgroup>
                           <col width="18%;">
                           <col width="34%;">
                           <col width="18%;">
                           <col width="10%;">
                           <col width="20%;">
                        </colgroup>
                        <tbody>
                           <!-- 멘토홍보 게시글 최근 순 출력 (5개) -->
                           <tr>
                              <td class="name">[홍길동]</td>
                              <td class="email">java11@gamil.com</td>
                              <td>010-1234-1234</td>
                              <td>서울</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[이순재]</td>
                              <td class="email">abc123@gamil.com</td>
                              <td>010-1234-1234</td>
                              <td>경기</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[가나다]</td>
                              <td class="email">imnongbu123@gamil.com</td>
                              <td>010-1234-1234</td>
                              <td>서울</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[한동석]</td>
                              <td class="email">dongstone@gamil.com</td>
                              <td>010-1234-1234</td>
                              <td>인천</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[김땡땡]</td>
                              <td class="email">nongsarang@gamil.com</td>
                              <td>010-1234-1234</td>
                              <td>경기</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>

               <!-- 댓글 -->
               <div class="contents small">
                  <div class="content-title">
                     <div class="title">댓글 관리</div>
                     <div class="title2">
                           <a href="">더보기 →</a>
                     </div>
                  </div>
                  <div class="c-content">
                     <table>
                        <colgroup>
                           <col width="17%;">
                           <col width="65%;">
                           <col width="18%;">
                        </colgroup>
                        <tbody class="reply">
                           <!-- 소통공간 게시글 최근 순 출력 (5개) -->
                           <tr>
                              <td class="name">[김지연]</td>
                              <td class="content">안녕하세요~</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[서승우]</td>
                              <td class="content">도움 많이 얻었습니다!! 감사합니다!</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[정호석]</td>
                              <td class="content">혹시 바구니 무료나눔 받을 수 있나요??</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[김민혁]</td>
                              <td class="content">오늘 가입했습니다!!</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[연태관]</td>
                              <td class="content">궁금점이 많이 해결된 것 같아요!!</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>

            </div>

            <div class="c-w-wrap">

               <!-- 멘토 홍보 -->
               <div class="contents small">
                  <div class="content-title">
                     <div class="title">멘토홍보</div>
                     <div class="title2">
                           <a href="">더보기 →</a>
                     </div>
                  </div>
                  <div class="c-content">
                     <table>
                        <colgroup>
                           <col width="80%;">
                           <col width="20%;">
                        </colgroup>
                        <tbody>
                           <!-- 멘토홍보 게시글 최근 순 출력 (5개) -->
                           <tr> <!-- [지역][주작목] - 이름 -->
                              <td class="name">[경기도][블루베리] - 홍길동</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[홍천군][특수작물] - 나문희</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[횡성군][더덕] - 김미영</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[화천군][와송] 이순재</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="name">[홍천군][밭작물] 한동석</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>

               <!-- 소통 공간 -->
               <div class="contents small">
                  <div class="content-title">
                     <div class="title">소통공간</div>
                     <div class="title2">
                           <a href="">더보기 →</a>
                     </div>
                  </div>
                  <div class="c-content">
                     <table>
                        <colgroup>
                           <col width="80%;">
                           <col width="20%;">
                        </colgroup>
                        <tbody>
                           <!-- 소통공간 게시글 최근 순 출력 (5개) -->
                           <tr>
                              <td class="title" onclick="location.href='#'">요즘 관심가지고 있는 파테크 아시냐요?</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="title" onclick="location.href='#'">아이들과 함께하는 꽃밭 가꾸기 팁</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="title" onclick="location.href='#'">청년! 3박4일 예천에 한번 살아볼까요?</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="title" onclick="location.href='#'">● [ 농산물상자 & 파렛트 ] 저렴히 판매합니다..●</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                           <tr>
                              <td class="title" onclick="location.href='#'">귀농 귀촌 하우스 농사 하실분</td>
                              <td class="date">2022-10-03 10:00</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
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