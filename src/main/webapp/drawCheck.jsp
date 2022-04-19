<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	String m_id = request.getParameter("userID");
	
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/webdb";
	String user = "root";
	String password = "5542";
	
	String sql = "DELETE FROM members WHERE ID = ?"; 
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, user, password);// DB 연동
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, m_id);
		
		int dbFlag = pstmt.executeUpdate(); //sql실행 => 성공시 1반환
		
		if(dbFlag == 1){
			//out.println("회원 가입 성공");
			response.sendRedirect("drawSuccess.jsp");
		} else {
			response.sendRedirect("drawErr.jsp");
		}
				
				
	}catch(Exception e){
		e.printStackTrace();
	} finally {
		try {
			if(pstmt !=null){
				pstmt.close();
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