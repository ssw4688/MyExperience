let phone_code_check = false;

// 유저 구분에 일반인으로 디폴트 체크
$('#default_grade').prop("checked", true);
$('input[name="grade"]').change(function(){
    // 일반 유저일 때
    if ($('input[name="grade"]:checked').val() == 'user') {
        $('#farmer_user').css('visibility', 'hidden');
    // 농장주일 때
    } else {
        $('#farmer_user').css('visibility', '');
    }
});

// 비밀번호 일치하는 지 검사
    $(function(){
        $(".detail_table input[type='password']").keyup(function(){
            let $pw = $("#password").val();
            let $pw_check = $("#passwordCheck").val();

            if($pw != "" || $pw_check != ""){
                if($pw == $pw_check){
			        $('#pwEqual').css('visibility', '');
			        $('#pwNotEqual').css('visibility', 'hidden');
                } else {
			        $('#pwEqual').css('visibility', 'hidden');
			        $('#pwNotEqual').css('visibility', '');
                }
            }
        });
    });

    // 휴대폰 인증번호 보내기
    function codeSend(){
        if(isNaN(parseInt(detailForm.phone.value))){
            detailForm.phone.focus();
            return;
        }

    }
    // 인증번호 입력 체크
    function codeCheck(){
        if(!detailForm.phoneCode.value){
            detailForm.phoneCode.focus();
            alert("휴대폰 인증이 필요합니다.")
            return;
        }
    }

    // 입력한 비밀번호가 일치한다면 저장하고 닫기
    function join(){
        console.log('비밀번호 체크')
        //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
        var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
        //한글이 포함되었는 지 검사
        var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
        //같은 문자 4번 이상
        var wordCheck = /(\w)\1\1\1/;
        //공백검사
        var spaceCheck = /\s/;

        if(!detailForm.userId.value){
            detailForm.userId.focus();
            return;
        }

        if(!detailForm.userNm.value){
            detailForm.userNm.focus();
            return;
        }

        if(!detailForm.email_in.value){
            detailForm.email_in.focus();
            return;
        }

        if(!detailForm.password.value){
            detailForm.password.focus();
            return;
        }
	
        if(!detailForm.passwordCheck.value){
            detailForm.passwordCheck.focus();
            return;
        }
        
        // 비밀번호 입력시 검사
        // if(!pwCheck.test(detailForm.password.value)){
        //     detailForm.password.focus();
        //     return;
        // }
    
        // if(hangleCheck.test(detailForm.password.value)){
        //     detailForm.password.focus();
        //     return;
        // }
        
        // if(wordCheck.test(detailForm.password.value)){
        //     detailForm.password.focus();
        //     return;
        // }
    
        // if(spaceCheck.test(detailForm.password.value)){
        //     detailForm.password.focus();
        //     return;
        // }
        
        // if(detailForm.password.value.length < 4 || detailForm.password.value.length > 20){
        //     detailForm.password.focus();
        //     return;
        // }

        if(!detailForm.phone.value){
            detailForm.phone.focus();
            return;
        }

        if(!detailForm.phoneCode.value){
            detailForm.phoneCode.focus();
            alert("휴대폰 인증이 필요합니다.")
            return;
        }
		
        // detailForm.submit();
        alert('회원가입이 완료되었습니다.')
    }