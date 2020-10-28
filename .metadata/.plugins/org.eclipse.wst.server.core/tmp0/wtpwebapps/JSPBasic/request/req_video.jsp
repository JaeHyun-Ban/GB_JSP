<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- inline frame란 웹페이지 안에 어떠한 제한없이 또 하나의 웹 페이지를 삽입할 수 있다. -->
	<!-- <iframe src="https://www.daum.com"></iframe> -->
	
	<!-- 이미지의 크기 100px, 일자는 그냥 문자열 -->
	
	<div align="center">
		<table border="1">
			<tr>
				<td>이미지</td>
				<td>강의명</td>
				<td>내용</td>
				<td>일자</td>
			</tr>
			<tr>
				<td>
					<a href="req_video_ok.jsp?name=java">
						<img alt="java" src="img/java.png" height="100px" width="100px">
					</a>
				</td>
				<td>자바</td>
				<td>
					<a href="req_video_ok.jsp?name=java">자바의 기본내용을 학습</a>
				</td>
				<td>2020.01.02</td>
			</tr>
			<tr>
				<td>
					<a href="req_video_ok.jsp?name=js">
						<img alt="JavaScript" src="img/javascript.png" height="100px" width="100px">
					</a>
				</td>
				<td>자바스크립트</td>
				<td>
					<a href="req_video_ok.jsp?name=js">자바스크립트 Basic</a>
				</td>
				<td>2020.02.12</td>
			</tr>
			<tr>
				<td>
					<a href="req_video_ok.jsp?name=oracle">
						<img alt="oracle" src="img/oracle.png" height="100px" width="100px">
					</a>
				</td>
				<td>오라클</td>
				<td>
					<a href="req_video_ok.jsp?name=oracle">오라클문법 학습</a>
				</td>
				<td>2020.03.14</td>
			</tr>
		</table>
	</div>
	
</body>
</html>











































