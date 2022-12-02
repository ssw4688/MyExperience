/**
 * 댓글 
 */

$.ajax({
   url: "/reply/listOk.re",
   type: "get",
   data: {boardNumber: boardNumber},
   contentType: "application/json; charset=utf-8",
   dataType: "json",
   success: showList
});

function showList(replies){
   if(replies.length > 0){
      let text = "";
      
      replies.forEach(reply => {
         text += `<div id="reply">`;
         text += `<div class="info">`
         text += `<p class="writer">` + reply.memberId + `</p>`;
         text += `<p class="date">` + reply.replyDate + `</p>`;
         text += `</div>`
         text += `<div class="content" style="width:100%">`;
         text += `<pre>` + reply.replyContent + `</pre>`;
         text += `</div>`;
         text += `</div>`;
      });
      
      $("#replies").html(text);
   }
}


$.ajax({
   url: "/reply/delete.re",
   type: "get",
   data: {boardNumber: boardNumber},
   contentType: "application/json; charset=utf-8",
   dataType: "json",
   success: showList
});

