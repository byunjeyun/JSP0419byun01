/**
 * 
 */
 
 function checkFun(){
	
	var f = document.user_info;
	
	if(f.userID.value.length == 0) {
		alert("아이디는 필수 입력 사항입니다.");
		f.userID.focus();
		return false;
	}
	else if(f.userID.value.length < 2 ||f.userID.value.length > 16) {
		alert("아이디는 2~16자 이내로 입력해야 합니다.");
		f.userID.focus();
		return false;
	}
	
	
	else if(f.userPW.value.length == 0) {
		alert("비밀번호는 필수 입력 사항입니다.");
		f.userPW.focus();
		return false;
	}
	else if(f.userPW.value.length < 6) {
		alert("비밀번호는 6자 이상으로 입력해야 합니다.");
		f.userPW.focus();
		return false;
	}
	
	
	else if(f.userNAME.value.length == 0) {
		alert("이름은 필수 입력 사항입니다.");
		f.userNAME.focus();
		return false;
	}
	
	
	else if(f.userMAIL.value.length == 0) {
		alert("이메일은 필수 입력 사항입니다.");
		f.userEMAIL.focus();
		return false;
	}
	
	else{
		return true;
		}
	
}

 