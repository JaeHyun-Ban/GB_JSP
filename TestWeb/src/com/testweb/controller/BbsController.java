package com.testweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.testweb.bbs.service.BbsService;
import com.testweb.bbs.service.ContentServiceImpl;
import com.testweb.bbs.service.GetListServiceImpl;
import com.testweb.bbs.service.RegistServiceImpl;
import com.testweb.bbs.service.UpdateServiceImpl;
import com.testweb.user.service.UserJoinServiceImpl;
import com.testweb.user.service.UserService;


@WebServlet("*.bbs")
public class BbsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
    public BbsController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatcherServlet(request, response);
	}

	public void dispatcherServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get과post를 여기서 한번에 처리
		//1.인코딩
		request.setCharacterEncoding("utf-8");
		
		//2.요청분기 
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String command = uri.substring(conPath.length());
		
		System.out.println("command:" + command);
		BbsService service = null;
		
		//※MVC2 - forward이동이 기본※
		//게시판 리스트  화면 처리 + 글 가져오기
		if(command.equals("/bbs/list.bbs")) {
			
			service = new GetListServiceImpl();
			service.execute(request, response);
			
			
			request.getRequestDispatcher("bbs.jsp").forward(request, response);
		
			//게시물 상세보기 화면 + 글 가져오기
		} else if(command.equals("/bbs/content.bbs")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			request.getRequestDispatcher("bbs_content.jsp").forward(request, response);
		
			//게시물 작성 화면 처리
		} else if(command.equals("/bbs/write.bbs")) {
			request.getRequestDispatcher("bbs_write.jsp").forward(request, response);
			
			//게시물 작성 처리
		} else if(command.equals("/bbs/regist.bbs")) {
			service = new RegistServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.bbs");
			//게시물 수정 화면 처리
		} else if(command.equals("/bbs/modify.bbs")) {
			//글을 불러오는 content서비스를 재활용
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			request.getRequestDispatcher("bbs_modify.jsp").forward(request, response);
			
			//게시글 수정 처리
		} else if(command.equals("/bbs/update.bbs")) {
			service = new UpdateServiceImpl();
			service.execute(request, response);
			
			//다시 게시물 번호로 이동
			response.sendRedirect("content.bbs?bno=" + request.getParameter("bno"));
			
		}
		

		
	}
	
	
	
	
}














































