<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a = 1;

	if (a >= 10) {
		//System.out은 콘솔창에만 나타나는 문자이다.
		System.out.println("10보다 크다");
	} else {
		//out은 인터넷 창에 출력할 수 있다.
		out.println("10보다 작다");
	}
	%>
	<hr />
	<%
		for (int i = 1; i <= 10; i++) {
		out.println(i + "<br>");//<br>은 브라우저에서 태그로 인식
	}
	%>

	<hr />
	<%
		int num = 0;
	if (num >= 10) {
		out.println("<p>참 입니다</p>");
	} else {
		out.println("<p>거짓 입니다</p>");
	}
	%>

	<hr />
	<%-- 라인별로 코드를 잡아주는게 가장 보기 좋다 --%>
	<%
		if (num >= 10) {
	%>
	<p>참 입니다</p>
	<%
		} else {
	%>
	<p>거짓 입니다</p>
	<%
		}
	%>


	<hr />
	<%-- 
	# 연습문제
	구구단3단 출력하기
	out.println()과 hr태그를 사용해서 브라우저 화면에 출력하기
	 --%>
	01. 구구단 3단 출력
	<br />
	<%
		for (int i = 1; i < 10; i++) {
		out.println("3 x" + i + "=" + 3 * i);
	%>
		<br/><hr/>
	<%
		}
	%>

	
	<hr />
	02. 체크박스 20개 출력하기<br/>
	<%-- 2. 체크박스 20개를 브라우저에 생성 --%>
	<tr>
		<% for (int i = 1; i < 21; i++) { %>

		<td><%out.println(i); %><input type="checkbox" name="quiz"></td>

		<%}%>
	</tr>
</body>
</html>































