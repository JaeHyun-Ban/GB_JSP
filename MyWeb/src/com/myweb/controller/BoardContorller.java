package com.myweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.service.BoardService;
import com.myweb.board.service.ContentServiceImpl;
import com.myweb.board.service.GetListServiceImpl;
import com.myweb.board.service.RegistServiceImpl;

//1.글 컨트롤러
@WebServlet("*.board")
public class BoardContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BoardContorller() {
        super();
       
    }


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	protected void dispatcherServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		//2.요청 분기
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();		
		String command = uri.substring(conPath.length());
		
		System.out.println(uri);
		System.out.println(conPath);
		System.out.println(command);
		
		//※※※※※※※※※※※※※※※※※※※※
		//MVC2에서 기본적으로 forward이동
		//다시 컨트롤러로 태울 때 redirect를 사용
		//※※※※※※※※※※※※※※※※※※※※
		//service부모타입 선언.
		BoardService service; //멤버변수
		
		//board이동, equals로 잡을 경로를 먼저 확인하고 작성	
		if(command.equals("/board/list.board")) {
			
			service = new GetListServiceImpl();//getList로 이동
			service.execute(request, response);
			
			//이미 컨트롤러에 '*.board'로 들어와서  제외하고 작성 할 것
			
			//목록을 가지고 forward로 이동(가기고 가기 위해서)
			request.getRequestDispatcher("board_list.jsp").forward(request, response);
		
		} else if(command.equals("/board/write.board")) {//게시글 작성
			
			//forward로 이동 주소의 변화가 없도록 한다
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
		} else if(command.equals("/board/regist.board")) {//글 작성(목록버튼) -> 게시판 이동
			
			service = new RegistServiceImpl();
			service.execute(request, response);
			
			//MVC2에서의 리다이렉트 사용법
			//글 작성 후 리스트가 보이는 게시판을 보고 싶다면 /board/list.board로 다시 리다이렉트 해주자
			response.sendRedirect("list.board");
			
		} else if(command.equals("/board/content.board")) {//게시글 상세보기
			
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			request.getRequestDispatcher("board_content.jsp").forward(request, response);
			
		} else if(command.equals("/board/modify.board")) {//글 수정화면 요청
			
			/*
			 * 숙제
			 * 1. ContentServiceImpl()를 재활용
			 * 2. forward형식으로 board_modify.jsp로 이동
			 * 3. 화면에서는 태그안에 데이터 값을 출력
			 */
			
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			request.getRequestDispatcher("board_modify.jsp").forward(request, response);
			
			
		}
		
		
		
		
		
	}
	
	
}













































