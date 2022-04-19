<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트 관리</title>
</head>
<body>
<h2> 등록회원 관리</h2>
<hr>


<%

String driverName="com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/webdb";
String user = "root";
String password = "5542";

String sql = "SELECT * FROM members";


Connection conn = null;
Statement stmt = null;


try{
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, user, password);// DB 연동
	
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql); //sql실행 => 성공시 1반환
			
	int count = 0;		
			
	while(rs.next()){
		count++;
		String p_id = rs.getString("ID");
		String p_pw = rs.getString("password");
		String p_name = rs.getString("name");
		String p_email = rs.getString("email");
		String p_jointime = rs.getString("signuptime");
		
		out.println(count+":"+p_id+" | "+p_pw+" | "+p_name+" | "+p_email+" | "+p_jointime+"<br>");
	}
	
			
			
}catch(Exception e){
	e.printStackTrace();
} finally {
	try {
		if(stmt !=null){
			stmt.close();
		}
		if(conn !=null){
			conn.close();
		}
	}catch(Exception e){
		
	}
}


%>


<hr>
<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp"  method="post">
				<input type="submit" value="◀회원 탈퇴시키기"> 
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