<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//랜덤한 16진수의 값을 뽑아서 알려준다?
	UUID uuid = UUID.randomUUID();
	System.out.println(uuid);	
	
	//문자열 잘라주기("-")
	String[] arr = uuid.toString().split("-");
	
	//세션에 인증값을 저장
	session.setAttribute("auth", arr[1]);
	
	

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 클라이언트 화면 -->
	
	<h2>인증페이지</h2>
	<form action="auth_ok.jsp" method="post">
		<!-- b,i,del = 인라인 태그 -->
		인증문자: <b><i><del><%=arr[1] %></del></i></b><br/>
		
		인증문자를 입력하세요: <input type="text" name="code"><br/>
		<input type="submit" value="확인">
		
	</form>
	
	
	
</body>
</html>











































