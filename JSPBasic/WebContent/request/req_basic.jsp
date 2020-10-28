<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스크립트릿
	//가장 위쪽에서 필요한 정보를 받는다.
	String path = request.getContextPath();//★톰캣이 프로젝트를 구분하는 경로
	
	StringBuffer url = request.getRequestURL();// 전체주소
	
	String uri = request.getRequestURI();// 전체주소 - contextPath()
	
	String addr = request.getRemoteAddr();//접속ip
	//////////////////////////////////////////// - 이정도는 기억해 두기
	String query = request.getQueryString();// 주소뒤에 전달되는 문자열...
	
	String method = request.getMethod();// 요청방식
	
	System.out.println("접속주소: " + addr);
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- localhost대신 ip를 작성하게 되면 해당 주소로 접속 가능하게 된다 -->
	contextPath: <%=path %><br>
	URL정보: <%=url %><br>
	URI정보: <%=uri %><br>
	접속아이피: <%=addr %><br>
	주소에담긴문자열값: <%=query %><br>
	요청방식: <%=method %><br>





</body>
</html>


















































