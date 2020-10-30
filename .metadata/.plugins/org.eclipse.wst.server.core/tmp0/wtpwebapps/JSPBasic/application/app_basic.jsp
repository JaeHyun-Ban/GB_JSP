<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%	
	//스크립트릿!
	
	//application은 session과 사용방법이 거의 동일하며,
	//생명주기가 톰캣을 stop할 때 까지 1개  유지된다.
	
	int total = 0;
	
	//세션에서 정보를 가져옴
	if(application.getAttribute("total") != null){
		total = (int)application.getAttribute("total"); 
		//>세션에 값을 누적시킬 수 있게된다.
	}

	total++;
	
	application.setAttribute("total", total); //세션이나 쿠키는 Map형식으로 사용하고 있다. >> 덮어씌워진다
	//>어플리케이션은 톰캣이 중지되기 전까지는 죽지않는다.
	
	
	
%>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	값: <%=total %>
	
</body>
</html>













































