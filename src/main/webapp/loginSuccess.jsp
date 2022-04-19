<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 성공</title>
</head>
<body>
	<h2> 관리자 로그인</h2>
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
		String m_id = request.getParameter("userID");
		String m_pw = request.getParameter("userPW");
		
		if(m_id.equals("space") && m_pw.equals("123456") ){
			session.setAttribute("adminID", m_id);
			//session.setAttribute("adminPW", m_pw);
			
			out.println("관리자 로그인 성공<br>");
			out.println("관리자" +m_id+"님이 로그인 하셨습니다.<br>");
			
		} else {
			response.sendRedirect("loginErr.jsp");
		}
	%>
	
	
	<table border="0">
		<tr>
			<td>
				<form action="memberList.jsp"  method="post">
				<input type="submit" value="◀등록 회원 관리하기"> 
				</form>
			</td>
			<td>
				<form action="logout.jsp"  method="post">
				<input type="submit" value="로그아웃▶">
				</form>
			</td>
				
	</table>
	
	
</body>
</html>