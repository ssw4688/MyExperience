
let reviewService = (function () {
    function reviewAdd(reviewDTO, callback, error) {
        $.ajax({
            url :"/review/new",
            type : "post",
            data: JSON.stringify(reviewDTO),
            contentType: "application/json; charset=utf-8",
            success: function (result, status, xhr) {
                console.log("success!");
                if(callback){
                    callback(result);
                }
            },
            error: function (xhr, status, err) {
                console.log("error!");
                if(error){
                    error(err);
                }
            }
        });
    }

    function getList(param, callback, error) {
        $.ajax({
            url: encodeURI("/review/list/" + param.mentorBoardId + "/" + (param.page || 0) + "/"+ param.keyword),
            type: "get",
            success: function (reviewDTO, status, xhr) {
                if(callback){
                    callback(reviewDTO);
                }
            },
            error: function(xhr, status, err){
                if(error){
                    error(err);
                }
            }
        });
    }

    function remove(reviewId, callback, error){
        $.ajax({
            url: "/review/" + reviewId,
            type: "delete",
            success: function(text, status, xhr){
                if(callback){
                    callback(text);
                }
            },
            error: function(xhr, status, err){
                if(error){
                    error(err);
                }
            }
        });
    }

    function getTotal(mentorBoardId, callback, error){
        $.ajax({
            url: "/review/" + mentorBoardId,
            type: "post",
            // data: boardId,
            success: function(review, status, xhr){
                if(callback){
                    callback(review);
                }
            },
            error: function(xhr, status, err){
                if(error){
                    error(err);
                }
            }
        });
    }


    function timeForToday(value) {
        const today = new Date();
        const timeValue = new Date(value);

        const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
        if (betweenTime < 1) return '?????????';
        if (betweenTime < 60) {
            return `${betweenTime}??????`;
        }

        const betweenTimeHour = Math.floor(betweenTime / 60);
        if (betweenTimeHour < 24) {
            return `${betweenTimeHour}?????????`;
        }

        const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
        if (betweenTimeDay < 365) {
            return `${betweenTimeDay}??????`;
        }

        return `${Math.floor(betweenTimeDay / 365)}??????`;
    }




    return {reviewAdd:reviewAdd, getList:getList, remove:remove, getTotal:getTotal, timeForToday:timeForToday}
})();
