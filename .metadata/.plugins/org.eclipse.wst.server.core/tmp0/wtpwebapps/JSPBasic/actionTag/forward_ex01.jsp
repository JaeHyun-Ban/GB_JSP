<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
	<jsp: 으로 시작하고 종속되는 태그가 없으면 끝부분을 반드시 `/>`로 마감처리 한다
	이동은 했지만 주소가 변하지 않았다.
	 --%>
	<jsp:forward page="forward_ex02.jsp" />
	
</body>
</html>