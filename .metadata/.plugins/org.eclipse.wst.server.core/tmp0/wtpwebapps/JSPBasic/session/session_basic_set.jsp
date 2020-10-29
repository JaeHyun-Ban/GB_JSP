<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스크립트릿
	/*
	세션은 쿠키와 마찬가지로 서버와 정보를 유지하기 위한 수단의 내장객체(자동생성)
	setAttribute("이름(문자열)", 값) 으로 저장한다.
	*/
	
	//세션은요청 발생시 자동생성됨, 서버다 하나의 세션을 가진다(브라우저 별 서로 다른 세션을 사용)
	session.setAttribute("user_id", "xxx123");
	session.setAttribute("user_name", "홍길동");
	
	//세션 유지시간 변경
	session.setMaxInactiveInterval(3600);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session_basic_get.jsp">세션값 확인하기</a>

</body>
</html>














































