<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
	.center {text-align: center;}


</style>

</head>
<body>
	<h2>path_quiz</h2>
	<hr/>
	
	<h3>01. a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동<br></h3>
	<a href="../../request/req_video.jsp">req_video(상대경로)</a><br>
	<a href="/JSPBasic/request/req_video.jsp">req_video(절대경로)</a><br>
	<a href="<%= request.getContextPath()%>/request/req_video.jsp">req_video(getContextPath()경로)</a><br>
	
	<hr/>
	<h3>img태그를 사용해서 java.png참조 </h3><br>
	<table border="1" >
		<tr >
			<td>java.png(상대경로)</td>
			<td>java.png(절대경로)</td>
			<td>java.png(getContextPath()경로)</td>
		</tr>
		<tr class="center">
			<td>
				<a href="../../request/req_video_ok.jsp?name=java">
					<img alt="java" src="../../request/img/java.png" width="150px" height="150px" >
				</a>
			</td>
			<td><img alt="java" src="/JSPBasic/request/img/java.png" width="150px" height="150px"></td>
			<td><img alt="java" src="<%=request.getContextPath() %>/request/img/java.png" width="150px" height="150px"></td>
		</tr>
	</table>
	
	<hr/>
	<!-- 파일을 한번 실행시켜보면 실행을 위한 실제경로를 알 수 있다. -->
	<h3>a태그를 이용해서 TestServlet으로 상대경로, 절대경로</h3> 
	<a href="../../banana">TestServlet(상대경로)</a><br>
	<a href="/JSPBasic/banana">TestServlet(절대경로)</a><br>
	<a href="<%=request.getContextPath() %>/banana">TestServlet(getContextPath()경로)</a><br>
	
	
	
	
	
	
	
</body>
</html>

































