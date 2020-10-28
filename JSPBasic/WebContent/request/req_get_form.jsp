<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form에 작성된 데이터를 서버로 전송을 할 때, 받아서 처리할 URL정보를 action속성에 적는다. -->
	<form action="req_get_parameter.jsp">
		<h3>회원가입 양식</h3>
		<hr />
		
		아이디: <input type="text" name="id" placeholder="아이디를 입력하세요" required /><br />
		비밀번호: <input type="password" name="pw" /><br /> 
		이메일: <input type="email" name="email" /><br />
		
		
		전공:
		 <!-- name - 변수명 | value - 전달되는 값 --> 
		 <input type="radio" name="major" value="경영학"/>경영학
		 <input type="radio" name="major" value="컴퓨터" />컴퓨터 
		 <input type="radio" name="major" value="전기전자"/>전기전자 
		 <input type="radio" name="major" value="기계공학"/>기계공학 <br />
		
		관심분야: 
		<input type="checkbox" name="inter" value="자바">자바 
		<input type="checkbox" name="inter" value="DB">DB 
		<input type="checkbox" name="inter" value="JSP">JSP 
		<input type="checkbox" name="inter" value="JavaScript">JavaScript

		<br />
		
		통신사: 
		<select name="phone1" id="">
			<option value="SKT">SKT</option>
			<option value="KT">KT</option>
			<option value="LGU+">LGU+</option>
		</select> <br /> 자기소개:<br />
		<textarea name="txt" id="" cols="20" rows="5"></textarea>

		<br />
		<!-- submit: 풀안에 있는 데이터를 서버로 전송-->
		<!-- form에 감싸져 있는 데이터를 서버로 전송하는 용도 -->
		<input type="submit" value="가입하기"> <input type="button"
			value="그냥버튼">
	</form>
</body>
</html>
























































