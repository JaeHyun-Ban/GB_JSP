<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "홍길자";
	int age = 20;
%>

<%
	String email = "abc123@naver.com";
	String address = "서울시";
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//보통은 이렇게 표현하지
		out.println("이름: " + name + "<br>");
		out.println("나이: " + age + "<br>");
	%>
	<hr/>	
	<!-- 표현식을 이용한 값의 출력 -->
	이름: <%=name %><br>
	나이: <%=age %><br>
	이메일: <%=email %><br>
	주소: <%=address %><br>
	

</body>
</html>













































