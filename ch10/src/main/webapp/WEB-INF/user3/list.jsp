<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>user3::list</title>
</head>
<body>
	<h3>user3 목록</h3>
	
	<a href="/ch10">처음으로</a>
	<a href="/ch10/user3/register.do">등록하기</a>
	
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>생일</th>
			<th>번호</th>
			<th>주소</th>
			<th>관리</th>
		</tr>
		
		
		<tr>
			<td>a101</td>
			<td>김유신</td>
			<td>1968-05-23</td>
			<td>010-1234-1234</td>
			<td>부산 남구</td>
			<td>
				<a href="/ch10/user3/modify.do">수정</a>
				<a href="/ch10/user3/remove.do">삭제</a>
			</td>
		</tr>
		
	</table>
	
</body>
</html>