<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 카카오친구들: "어피치", "라이언", "제이지", "무지", "프로도", "튜브" -->
<%!
	//선언자
	String[] members = { "어피치", "라이언", "제이지", "무지", "프로도", "튜브" };
	ArrayList<String> list = new ArrayList<>();
	Random r = new Random();
%>
<%	
	//스크립트릿
	if(list.size() == 10) list.clear(); //초기화 시켜주기
	
	int ran = r.nextInt(members.length);//프렌즈 숫자만큼
	
	//변수화를 시켜놔야 아래에서 쉽게 뽑아 쓸 수 있다.
	String name = members[ran]; //선택된 요소
	list.add(name);//배열의 랜덤 요소 리스트에 추가
	
	int count = 0;
	for(String n : list){ //랜덤으로 선택된 값과 리스트의 요소가 동일하다면
		if(n.equals(name)){
			count++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		<b>[<%=name%>]</b>님이 입장<br>
		현재 같은 카카오 프렌즈는 <%=count%>명입니다.
	</p>
	
	<h3>현재 구성정보</h3>
	<p>
		<%=list.toString()%>(<%=list.size() %>명 참가중)
	</p>
</body>
</html>




























































