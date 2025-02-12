<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="entity.User2"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");

	//데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "root";
	String pass = "1234";
	
	User2 user2 = null;//선언
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		String sql = "SELECT * FROM `user2` WHERE `uid`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>user2::modify</title>
</head>
<body>
	<h3>user3 수정</h3>
	
	<a href="../1.jdbc.jsp">처음으로</a>
	<a href="/ch06/user2/list.jsp">목록이동</a>
	
	<form action="/ch06/user2/proc/modify.jsp">
		<table border="">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" value="<%= user2.getUid() %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%= user2.getName() %>"placeholder="이름 입력"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="birth" value="<%= user2.getBirth() %>"placeholder="생일 입력"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="uid" value="<%= user2.getAddr() %>"placeholder="주소 입력"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="수정하기">
				</td>
			</tr>
		</table>
	</form>
	
	
</body>
</html>