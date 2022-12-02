let code_id_check = false;
let code_pw_check = false;

 // 아이디 찾기 팝업 띄우기
    function openPop_id() {
        document.getElementById("fine_id_popup").style.display = "block";
        code_id_check = false;
        $("#fine_id_popup").show();
        $(".id_step1").show();
        $(".findId_code").hide();
        $(".id_step2").hide();
    }
    // 아이디 찾기에사 팝업 닫기
    function closePop_id() {
        document.getElementById("fine_id_popup").style.display = "none";
    }

    /* 휴대폰번호 인증버튼 클릭시 */
    $(".btn_phone_id").click(function () {
        
        if(!findIdForm.findId_name.value){
            findIdForm.findId_name.focus();
            return;
        }
        
        if(!findIdForm.findId_phone.value){
            findIdForm.findId_phone.focus();
            return;
        }

        $(".p_con_inner").css("display", "block");
        code_id_check = true;
    });

    // 이이디 찾기 핸드폰 인증 후 확인 버튼
    $(".id_next_step").click(function () {
        if (!code_id_check) {
            alert ("휴대폰 인증을 진행해주세요.");
            return;
        }
        $(".id_step2").show();
        $(".id_step1").hide();
    });

// ---------------------------------------------------------------------------------

 // 비밀번호 찾기 팝업 띄우기
    function openPop_pw() {
        document.getElementById("fine_pw_popup").style.display = "block";
        code_pw_check = false;
        $("#fine_pw_popup").show();
        $(".pw_step1").show();
        $(".findPw_code").hide();
        $(".pw_step2").hide();
    }
    // 비밀번호 찾기에서 팝업 닫기
    function closePop_pw() {
        document.getElementById("fine_pw_popup").style.display = "none";
    }
    
    // 비밀번호 저장하고 팝업 닫기
    function closePop_save() {
        document.getElementById("fine_pw_popup").style.display = "none";
    }

    /* 휴대폰번호 인증버튼 클릭시 */
    $(".btn_phone_pw").click(function () {
        if(!findPwForm.findPw_name.value){
            findPwForm.findPw_name.focus();
            return;
        }
        
        if(!findPwForm.findPw_phone.value){
            findPwForm.findPw_phone.focus();
            return;
        }
        $(".findPw_code").css("display", "block");
        code_pw_check = true;
    });

    // 비밀번호 찾기 핸드폰 인증 후 확인 버튼
    $(".pw_next_step").click(function () {
        if (!code_pw_check) {
            alert ("휴대폰 인증을 진행해주세요.");
            return;
        }
        $(".pw_step2").show();
        $(".pw_step1").hide();
    });