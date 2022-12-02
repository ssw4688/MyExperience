    // 비밀번호 일치하는 지 검사
    $(function(){
        $(".pop_con input").keyup(function(){
            let $pw = $("#newPassword").val();
            let $pw_check = $("#check_newPassword").val();

            if($pw != "" || $pw_check != ""){
                if($pw == $pw_check){
                    $('.change_pw_check').html('비밀번호가 일치합니다.');
                    $('.change_pw_check').css('color', 'green');
                } else {
                    $('.change_pw_check').html('비밀번호가 일치하지 않습니다.');
                    $('.change_pw_check').css('color', 'red')

                }
            }
        });
    });
    

    // 입력한 비밀번호가 일치한다면 저장하고 닫기
    function pwChange(){
        console.log('비밀번호 체크')
        //8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
        var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
        //한글이 포함되었는 지 검사
        var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
        //같은 문자 4번 이상
        var wordCheck = /(\w)\1\1\1/;
        //공백검사
        var spaceCheck = /\s/;

        if(!pwChangeForm.password.value){
            pwChangeForm.password.focus();
            return;
        }
	
        if(!pwChangeForm.passwordCheck.value){
            pwChangeForm.passwordCheck.focus();
            return;
        }
        
        if(!pwCheck.test(pwChangeForm.password.value)){
            pwChangeForm.password.focus();
            return;
        }
    
        if(hangleCheck.test(pwChangeForm.password.value)){
            pwChangeForm.password.focus();
            return;
        }
        
        if(wordCheck.test(pwChangeForm.password.value)){
            pwChangeForm.password.focus();
            return;
        }
    
        if(spaceCheck.test(pwChangeForm.password.value)){
            pwChangeForm.password.focus();
            return;
        }
        
        if(pwChangeForm.password.value.length < 4 || pwChangeForm.password.value.length > 20){
            pwChangeForm.password.focus();
            return;
        }
        pwChangeForm.submit();
        alert('비밀번호가 변경되었습니다.')
    }