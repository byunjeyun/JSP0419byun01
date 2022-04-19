<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 전용 공간</title>
</head>
<body>
	<h2>회원 전용 공간</h2>
	<hr>
	반갑습니다. 여기는 회원 전용 페이지 입니다. <br>
	회원을 탈퇴하시려면 아래 탈퇴버튼을 눌러 주세요.
	
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp"  method="post">
				<input type="submit" value="◀메인으로 돌아가기"> 
				</form>
			</td>
			<td>
				<form action="withdraw.jsp"  method="post">
				<input type="submit" value="회원탈퇴▶">
				</form>
			</td>
				
	</table>
	
</body>
</html>