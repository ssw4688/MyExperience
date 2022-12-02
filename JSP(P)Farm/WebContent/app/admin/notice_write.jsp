<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/font.css"/>
   <!-- 글 작성 폼 -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/notice_write.css"/>
   <!-- 썸머노트 API -->
   <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
   <title>관리자-공지 글 작성</title>
</head>

<body style="background-color: rgba(253, 223, 223, 0.23);">

   <div id="wrapper">
		<!-- 세로 메뉴바 -->
		<jsp:include page="${pageContext.request.contextPath}/app/admin/admin_menu.jsp"/>

      <!-- 헤더 ~ 밑에 메인 컨텐츠 -->
      <div id="container">
         <!-- 헤더 -->
         <header>
            <span id="admin-header-title">공지 글 작성</span>
            <span id="admin-mode">관리자 모드</span>
            <span id="userCount">가입된 회원 수 총 <strong> 21343 </strong>명</span>
         </header>

         <!-- 메인화면 컨텐츠 -->
         <div id="write">
            <form action="" name="noticeForm" method="post">
               <table>
                  <colgroup>
                     <col width="20%;">
                     <col width="80%">
                  </colgroup>
                  <tbody>
                     <tr>
                        <th>제목</th>
                        <td>
                           <div class="title">
                              <input type="text" name="n_title" class="notice_title" placeholder="제목을 입력하세요" autocomplete="off">
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <th>내용</th>
                        <td>
                           <div id="editor">
                              <textarea class="summernote" name="editorForm"></textarea>
                              <div id="letter-count">
                                 <p id="letter-length" style="display: inline;">0</p> / 100
                              </div>
                           </div>
                        </td>
                     </tr>
                     <tr>
                        <th>첨부파일</th>
                        <td>
                           <div class="file">
                              <input type="file" name="file">
                           </div>
                           <div id="file-content"></div>
                           <span class="file-limit"> 첨부파일은 총 1개까지 가능합니다.</span>
                        </td>
                     </tr>
                  </tbody>
               </table>
               <div class="btns-group">
                  <input type="button" onclick="saveCheck()" class="g-btn list" value="공지 목록">
                  <input type="button" onclick="save()" class="g-btn submit" value="저장">
               </div>
            </form>
         </div>

      </div>

   </div>

</body>
<!-- 삭제 버튼 클릭 시 확인 알림창 -->
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin/check.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin/notice.js"></script>
<!-- 썸머노트 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/admin/summerNote.js"></script>
<html>