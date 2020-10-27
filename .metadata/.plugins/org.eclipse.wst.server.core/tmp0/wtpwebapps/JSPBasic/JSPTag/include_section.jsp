<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
</head>
<body>
	
	<!-- 1. 이곳에 헤더를 작성하면 html안에 html파일이 들어오는 중복이 생기기 때문에-->
	<!-- include사용법 -->
	<%@ include file="include_header.jsp" %>
	<!-- include는 다른 파일을 가지고 들어오는데 이 때 완전한 html형태가 망가지지않게 주의해야한다 -->
	
	<section>
		<!-- 블럭 영역 -->
		본문에 대한 영역...
	</section>
	
	
	<%@ include file="include_footer.jsp" %>
	
	<!-- 조립이 되었을 때 header - section - footer 형태를 유지하는 것이 중요하다 -->
	
</body>
</html>









































