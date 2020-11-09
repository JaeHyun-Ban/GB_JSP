package com.myweb.bbs.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.testweb.bbs.model.BbsDAO;
import com.testweb.bbs.model.BbsVO;

public class GetListServiceImpl implements BbsService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BbsDAO dao = BbsDAO.getInstance();
		
		//모든 게시글 가져오기
		ArrayList<BbsVO> list = dao.getList();
		
		System.out.println(list.toString());
		
		if(list != null) {
			request.setAttribute("list", list);//리퀘스트로 전달
		}
		
		
		
		
//		//페이징 처리
//		int pageNum = 1;//시작할 페이지
//		int amount = 10;//한번에 볼 페이지의 수
//		
//		if(request.getParameter("pageNum") != null	|| request.getParameter("amount") != null) {
//			
//			pageNum = Integer.parseInt(request.getParameter("pageNum"));
//			amount = Integer.parseInt(request.getParameter("amount"));
//				
//		}
		
		
		

	}

}
