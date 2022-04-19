<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertDB 로그인정보</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String m_id = request.getParameter("userID");
	String m_pw = request.getParameter("userPW");
	String m_name = request.getParameter("userNAME");
	String m_email = request.getParameter("userMAIL");
	
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/webdb";
	String user = "root";
	String password = "5542";
	
	String sql = "INSERT INTO members(ID, password, name, email) VALUES('"+m_id+"', '"+m_pw+"', '"+m_name+"', '"+m_email+"')";
	
	
	Connection conn = null;
	Statement stmt = null;
	
	try{
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, user, password);// DB 연동
		
		stmt = conn.createStatement();
		int dbFlag = stmt.executeUpdate(sql); //sql실행 => 성공시 1반환
		
		if(dbFlag == 1){
			//out.println("회원 가입 성공");
			response.sendRedirect("signupSuccess.jsp");
		} else {
			response.sendRedirect("signup.jsp");
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
</body>
</html>