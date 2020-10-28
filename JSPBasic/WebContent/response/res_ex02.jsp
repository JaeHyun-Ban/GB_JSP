<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>res_ex02</title>

<!-- 디자인 문법을 작성하는 영역 -->
<!-- 선택자 .은 태그의 class에 접근하는 문법 -->
<style>
	.form-content {margin: 0 auto; width: 200px;} 
	.form-group {text-align: center; width: 200px;} 
	.form-control {width: 100%; box-sizing: border-box;}
</style>

</head>
<body>

	<!-- css문법을 class속성을 가지고 디자인을 입힐 때 자주 사용한다 -->
	<!-- 
	# css를 지정하는 방법 3가지
	1. 인라인시트
	2. 내부스타일시트
	- 태그에 class속성을 이름 부여하고, head안에서 css문법으로 디자인을 적용
	3. 외부스타일시트
	 -->
	<section>
		<!-- 정해놓은 스타일들을 class="스타일이름"으로 넣어준다-->
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<span>로그인 폼</span>
				<input type="text" name="id" placeholder="아이디" class="form-control"><br>
				<input type="password" name="pw" placeholder="비밀번호" class="form-control"><br>
				
				<input type="submit" value="로그인" class="form-control">
		 	</form>
		</div>
	</section>
</body>
</html>


   
































