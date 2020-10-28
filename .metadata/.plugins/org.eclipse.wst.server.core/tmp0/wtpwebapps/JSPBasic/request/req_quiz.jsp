<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	1. form를 이용해서 post형식으로 이름, 국,영,수 값을 입력받는다.
	- 태그에서는 반드시 값을 입력하도록
	2. req_quiz_result.jsp로 전송
	3. 해당 페이지에서는 평균, 합계를 구하고. 80점 이상=고득점, 60이상=중간, 60아래=저득점 출력
	 -->
	<h3>성적 입력</h3>
	<form action="req_quiz_result.jsp" method="post">
		<!-- 필수인 required를 넣어주자 -->
		이름: <input type="text" name="name" required><br/>
		<!-- 국,영,수는 점수만 적어야하므로 정규표현식을 등록해주면 된다 -->
		국어: <input type="text" name="kor" pattern="[0-9]{2,3}" required><br/>
		영어: <input type="text" name="eng" pattern="[0-9]{2,3}" required><br/>
		수학: <input type="text" name="math" pattern="[0-9]{2,3}" required><br/>
		
		<input type="submit" value="전송">
	</form>
	
	
	
	
	
	
	
	
	
	
</body>
</html>

















































