/*
* item/list.html
* */
const $checkboxes = $("input[type='checkbox']");
const $table = $("#cart");
const $pay = $("input#pay");
const names = ["itemNumber", "itemName", "itemCount"]

$checkboxes.on("click", function(){
    let index = $checkboxes.index($(this));
    let $tds = $(this).closest("tr").children();
    let text = "";
    if($(this).is(":checked")){
        text += `<tr id="` + index + `">`;
        text += `<td><input value="` + $tds.eq(1).text() + `" readonly></td>`;
        text += `<td><input value="` + $tds.eq(2).text() + `" readonly></td>`;
        text += `<td><input placeholder="개수"></td>`;
        text += `</tr>`;
        $table.append(text);
    }else{
        $table.find("tr").remove("#" + index);
    }
});

$pay.on("click", function(){
    $table.find("tr input").each(function(i, input){
        $(input).attr("name", "orders[" + parseInt(i / 3) + "]." + names[i % 3]);
    });

    document.payForm.submit();
});






















