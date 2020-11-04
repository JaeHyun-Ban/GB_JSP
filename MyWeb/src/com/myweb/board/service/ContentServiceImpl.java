package com.myweb.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.model.BoardDAO;
import com.myweb.board.model.BoardVO;

public class ContentServiceImpl implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//넘어온게 있으면 받아야지!(글번호)
		String bno = request.getParameter("bno");
		
		//dao객체 생성
		BoardDAO dao = BoardDAO.getInstance();
		
		//상세보기 메서드 실행(글 번호로 게시글을 가져오기)
		BoardVO vo = dao.getContent(bno);
		request.setAttribute("vo", vo);
		
		
	}

}
