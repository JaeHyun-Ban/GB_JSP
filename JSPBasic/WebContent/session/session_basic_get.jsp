<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	세션에 저장된 값은 기본 30분 유지, 브라우저가 종료되기 전 까지 존재한다
	
	어느 페이지에서나 사용할 수 있다.
	getAttribute("이름")
	*/
	
	//세션은 object라서 '캐스팅(String)'을 해준 후 변수에 저장한다
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");

	//세션의 유지시간 = 톰캣서버가 관리(web.xml)
	int time = session.getMaxInactiveInterval();
	
	
	//특정 세션 삭제
	session.removeAttribute("user_id");
	
	//모든 세션값 삭제(무효화)
	session.invalidate(); //두번눌러
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에 저장된 id: <%=id %><br/>
	세션에 저장된 name: <%=name %><br/>
	세션 유지시간: <%=time %>초<br/>
	
	
</body>
</html>
















































