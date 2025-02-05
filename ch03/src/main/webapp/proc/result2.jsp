<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String query = request.getQueryString();
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("addr");
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>result2</title>
</head>
<body>
	<h3>연습문제4 데이터 수신</h3>
	
		쿼리스트링 : <%= query %><br>
		아이디 : <%= uid %><br>
		비밀번호 : <%= pass %><br>
		이름 : <%= name %><br>
		생년월일 : <%= birth %><br>
		성별 : <%= gender %><br>
		주소 : <%= addr %><br>
		취미 : 
		<%
			for(String hobby : hobbies) {
				out.print(hobby + ", ");
			}
		%><br>
		
		<a href="../1.request.jsp">뒤로가기</a>
	
</body>
</html>