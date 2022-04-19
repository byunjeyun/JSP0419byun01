<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<script type="text/javascript">
	
	function checkFun(){
	
		var f = document.user_info;
		
	if(f.userID.value.length == 0) {
		alert("아이디는 필수 입력 사항입니다.");
		f.userID.focus();
		return false;
	}
	
	if(f.userPW.value.length == 0) {
		alert("아이디는 필수 입력 사항입니다.");
		f.userID.focus();
		return false;
	}	

</script>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<form action="loginSuccess.jsp" method="post" name="user_info" onsubmit="return checkFun()">
		아이디 :<input type="text" name="userID" size="16"><br><br>
		비밀번호 :<input type="password" name="userPW" size="16"><br><br>
		<input type="submit" value=" 로그인▶▶ ">
	</form>
	
</body>
</html>