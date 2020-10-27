package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/banana")//기능 달린 주석
public class TestServlet extends HttpServlet { // 어떤 역활을하는 클래스를 상속
	private static final long serialVersionUID = 1L;

	// 생성자
	public TestServlet() {
		super();

	}
	
	//doGet과, doPost를 상속받아 사용한다
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hello World");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
