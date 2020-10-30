<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>1번 페이지</h2>
	디렉티브 태그의 include는 자바코드를 포함해 '전부' 가지고 들어오는 반면<br/>
	액션태그의 include는 UI만 가지고 들어온다
	
	<%@ include file="include_ex02.jsp" %><br/>
	<%=total %>
	<!-- 액션태그로 include를 이용해 값까지 통째로 다 가져온다
			>>그러니 이거 쓰자 -->
	
	
	<!-- total값은 가져오지 못한다 -->
	<%-- <jsp:include page="include_ex02.jsp"/>
	<%=total %> --%>
	
	
</body>
</html>