<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언자 - 전역의미, 멤버변수로 사용 가능하다
	String[] arr = {"어피치", "라이언", "제이지", "무지", "프로도", "튜브"};
	ArrayList<String> list = new ArrayList<>();
	Random ran = new Random();
%>    
<%
	if(list.size() == 10){
		list.clear();
	}

	//스크립트릿 - 자바코드를 사용할 수 있다.
	int r = ran.nextInt(5) + 1;//1-6
	
	String name = arr[r];//랜덤으로 뽑은 프렌즈를 변수화 -> html에서 사용하기 쉽게
	list.add(name); //랜덤 요소를 리스트에 추가
	
	int count = 0;
	for(String n : list){ //랜덤으로 선택된 값이 리스트에 들어있다면
		if(n.equals(name)){
			count++;//같은 수 만큼 체크
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
		<b>[<%=name %>]</b>님이 입장<br>
		동일한 카카오 프렌즈는 <%=count %>명 입니다!
	</p>
	<h3>현재 리스트 구성 정보</h3>
	<p>
		<%=list.toString() %>(<%=list.size() %>명 참가중)
	</p>
</body>
</html>












































