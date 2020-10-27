<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- declaration은 전역의 의미라서 전역변수처럼 맨 위에다가 작성해준다. --> 
<%! 
	//선언자는 전역의 의미로 사용, 메서드 선언이 가능 -> 나중가면 잘 쓰이지 않음
	public int i = 10;
	public String str = "WEB";
	
	public int method(int a, int b)	{
		return a + b;
	}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 전역변수 사용하기 -->
	<%
		out.println("i값: " + i + "<br>");
		out.println("str값: " + str + "<br>");
		out.println("method: " + method(1, 2));
	%>

</body>
</html>















































