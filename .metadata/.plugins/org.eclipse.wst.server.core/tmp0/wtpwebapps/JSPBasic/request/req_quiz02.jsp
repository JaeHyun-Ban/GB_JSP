<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_quiz02.jsp</h2>
	다음을 구현하고 a태그 클릭시 req_quiz02_result에 학생번호를 출력하세요<br>
	
	<%for(int i = 1; i < 31; i++){%>
		<a href="req_quiz02_result.jsp?num=<%=i %>"><%=i %>번 학생<br/></a>
	<%} %>

</body>
</html>
















































