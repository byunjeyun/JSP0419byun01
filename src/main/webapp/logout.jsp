<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<h2>관리자 로그 아웃</h2>
<hr>

<%
//session.invalidate(); //모든 세션 내용 삭제

Enumeration enun = session.getAttributeNames();

while(enun.hasMoreElements()){

	String s_name = enun.nextElement().toString(); //세션 이름 가져오기
	String s_value = session.getAttribute(s_name).toString();
	
	//out.println(s_name);
	//out.println(s_value);
	
	if(s_value.equals("space")){
		session.removeAttribute(s_name);
		out.println("로그아웃에 성공하셨습니다.");
		out.println("세션이름:"+session.getAttributeNames());
		out.println("세션값:"+session.getAttribute(s_name));

	} else{
		out.println("로그아웃에 실패하였습니다..");
	}
}


%>

<table border="0">
		<tr>
			<td>
				<form action="main.jsp"  method="post">
				<input type="submit" value="◀로그아웃"> 
				</form>
			</td>
							
	</table>
</body>
</html>