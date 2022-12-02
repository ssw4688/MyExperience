/**
 * 댓글
 */
 
 
//textarea 글자수 세기
$('.comm_textarea').keyup(function (e){
    var content = $(this).val();
    $('.comment_text02').html("("+$(this).val().length+" / 1000byte)");
    //글자수 실시간 카운팅    
if ($(this).val().length > 1000){
    alert("최대 1000자까지 입력 가능합니다.");
    $(this).val($(this).val().substring(0, 1000)); 
    $('.comment_text02').html("(1000 / 최대 1000자)");
    }
    });

/* 댓글 목록 출력 */
showList();

function showList(){
	let text="";
	
	text+= `<div id="reply">`;
	
	/* *****여기서부터 */
	text+= `<div class="re-list">`;
	
	text+= `<div class="re-top">`;
	text+= `<span class="re-writer">사용자 ID</span>`;
	/* 게시글의 작성자와 댓글의 작성자가 일치할 때 */
		text+= `<span class="re-b-writer">게시글 작성자</span>`;
		
	text+= `<span class="re-date">2022-10-15 22:45 날짜</span>`;
	/* 내가 작성한 댓글일 때만 */
		text+= `<span class="re-btn-group">`;
		text+= `<a href="javascript:void(0);" class="re-modify-ready re-btn">수정</a>`;
		text+= `<a href="javascript:void(0);" class="re-delete">삭제</a>`;
		text+= `<a href="javascript:void(0);" class="re-modify re-btn">저장</a>`;
		text+= `<a href="javascript:void(0);" class="re-cancel">취소</a>`;
		text+= `</span>`;
	
	text+= `</div>`;
	text+= `<div class="re-content">`;
	text+= `<pre>댓글 내용 적는 칸</pre>`;
	text+= `</div>`;
	
	text+= `</div>`;
	/* *****여기까지 댓글 출력부분 */
	
	text+= `</div>`;
	
	
	$("#replyList").html(text);
}

/* 댓글 작성 등록 */
function send(){
	let replyContent = replyForm.replyContent.value;

	if(!replyContent){
		alert("댓글 내용을 작성해주세요.");
		return;
	}
}

/* 댓글 수정 */
$("#replyList").on("click", ".re-modify-ready", function(){
	const buttonWrap = $(this).parent();
	const buttons = buttonWrap.children();
	const content = buttonWrap.parent().next().children();
	
	buttons.eq(0).hide();
	buttons.eq(1).hide();
	buttons.eq(2).show();
	buttons.eq(3).show();
	
	content.replaceWith("<textarea>댓글 내용 적는 칸</textarea>")
});

/* 댓글 삭제 */
$("#replyList").on("click", ".re-delete", function(){
	console.log("댓글 삭제");

});

/* 댓글 수정 저장 */
$("#replyList").on("click", ".re-modify", function(){
	console.log("댓글 수정 완료");
	
});


/* 댓글 수정 취소 */
$("#replyList").on("click", ".re-cancel", function(){
	const buttonWrap = $(this).parent();
	const buttons = buttonWrap.children();
	const content = buttonWrap.parent().next().children();
	
	buttons.eq(0).show();
	buttons.eq(1).show();
	buttons.eq(2).hide();
	buttons.eq(3).hide();
	
	content.replaceWith("<pre>댓글 내용 적는 칸</pre>")
});