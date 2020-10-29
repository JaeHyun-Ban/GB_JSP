package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public OutServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.getWriter() - 클라이언트에게 문자 텍스트를 보여줌
		
		//서블릿에서 out객체를 이용해서 브라우저 화면으로 문자열 데이터를 전송할 수 있다.
		//브라우저에 out객체를 이용해 데이터를 보낼 때, 브라우저가 해석할 수 있도록 힌트를 줘야한다(★contentType★ - 문자, 음악, 동영상... 일지 알려준다)
		response.setContentType("text/html; charset=utf-8");//>해석하도록 알려줌
//		response.setContentType("text/plane; charset=utf-8");//순수 텍스트 파일로 타입을 지정해서 html문법들이 사용되지 않는다
		
		
		PrintWriter out = response.getWriter(); //브라우저화면에 출력할 PrintWriter객체를 얻는방법
			
		out.println("<h2>냐냐냐야냥냐얀얀야냥냥<h2>");
		//>전달해도 브라우저는 이것을 어떻게 인코딩하고, 언어는 무엇이며...등등을 이해할 수 없다
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	}
}





































