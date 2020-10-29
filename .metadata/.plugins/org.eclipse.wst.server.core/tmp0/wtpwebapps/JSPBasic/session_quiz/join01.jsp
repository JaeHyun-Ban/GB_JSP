<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 데이터베이스를 이용하지 않은 회원가입 데이터 처리 -->
	<h2>회원가입 양식</h2>
	
	<form action="join02.jsp" method="post">
		아이디:<input type="text" name="id" required><br>
		비밀번호: <input type="password" name="pw" required><br>
		이름: <input type="text" name="name"><br>
		<!-- 
		html:5에서는 달력의 형태를 기본적으로 제공한다 
		문자 형태로 값이 보내진다
		ex) 2020-10-01 
		-->
		생일: <input type="date" name="birth"><br>
		<input type="submit" value="가입">
	
	</form>
	
	
	
</body>
</html>