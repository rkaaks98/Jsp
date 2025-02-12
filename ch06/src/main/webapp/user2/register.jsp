<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>user2::register</title>
</head>
<body>
	<h3>user2등록</h3>
	
	<a href="/ch06/user2/1.jdbc.jsp">처음으로</a>
	<a href="/ch06/user2/list.jsp">목록이동</a>
	
	<form action="#">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" placeholder="아이디 입력"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" placeholder="이름 입력"></td>
			</tr>
			<tr>
				<td>생일</td>
				<td><input type="text" name="hp" placeholder="생일 입력"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="age" placeholder="주소 입력"></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="등록하기">
				</td>
			</tr>
		</table>
	</form>
	

	
</body>
</html>