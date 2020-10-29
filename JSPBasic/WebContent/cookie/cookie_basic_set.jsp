<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//쿠키 = servlet에서 제공
	//쿠키 사용방법
	//1. 생성자의 매개변수 (쿠키이름(문자열), 쿠키값)을 지정
	Cookie cookie = new Cookie("choco", "초코칩쿠키");
	Cookie cookie2 = new Cookie("amond", "아몬드쿠키");
	
	//2. 쿠키의 setter메서드로 쿠키속성 설정
	cookie.setMaxAge(5); //3600초
	cookie2.setMaxAge(20);//20초
	
	//3. 응답객체에 쿠키를 담아서 브라우저로 전송
	response.addCookie(cookie);
	response.addCookie(cookie2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 코드가 실행되면 쿠키는 이미 다 구워짐 -->
	<!-- 응답할 시에 선물로 주기만 하면 됨 -->
	<a href="cookie_basic_get.jsp">쿠키 사용하기</a>


</body>
</html>







































