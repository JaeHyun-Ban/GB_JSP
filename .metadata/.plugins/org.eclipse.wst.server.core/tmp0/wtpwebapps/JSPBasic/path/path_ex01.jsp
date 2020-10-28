<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>path_ex01</h2>
	<!-- 
	경로의 개념
	- 절대경로: 프로젝트의 전체경로(IP주소, port는 제외하고, /컨택스트 경로......
	- 상대경로: 현재위치에서 다른 파일의 경로를 참조해서 적용
	 -->
	 
	 <a href="path_ex02.jsp">path_ex02로 이동(절대경로)</a><br>
	 <!-- 
	 "/"가 들어갓다는 거는 다 쳐내고 처음 부터 시작하겠다. 
	 >>경로 처음부터 다 적으면 된다는 뜻
	 -->
	 <a href="/JSPBasic/path/path_ex02.jsp">path_ex02로 이동(상대경로)</a><br>
	 <!-- 하지만 경로가 바뀌면 전부 바꿔주는 대참사가 발생하니,
	 request.getContextPath()를 이용해서 작성해주자
	 >>이러면 바뀔때 마다 자동으로 적용 가능 -->
	 <a href="<%=request.getContextPath() %>/path/path_ex02.jsp">path_ex02로 이동(상대경로)</a>

</body>
</html>