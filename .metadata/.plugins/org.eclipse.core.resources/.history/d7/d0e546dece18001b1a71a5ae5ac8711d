<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post방식이라 encoding해주기
	//>파라미터를 받기전에 해준다
	request.setCharacterEncoding("utf-8");//utf-8인코딩해주기
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	int total = kor + eng + math;
	double avg = total/3.0; 
	String result = String.format("%.2f", avg);//소수점 2자리까지 표기하도록 포맷
	
	String score = "";
	
	if(avg >= 80){
		score = "고득점";
	}else if(avg >= 60){
		score = "중간";
	}else{
		score = "저득점";
	}
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>성적 확인표</h2>
	이름: <%=name %><br/>
	국어: <%=kor %><br/>
	영어: <%=eng %><br/>
	수학: <%=math %><br/>
	총점: <%=total %><br/>
	평균: <%=result %><br/>
	등급: <%=score %><br/>
	
	<!-- 요렇게 해도됨 -->
	<%if(avg >= 80) { %>
		고득점
	<%} else if(avg > 60) {%>
		중간
	<%} else {%> 
		저득점
	<%} %>

</body>
</html>













































