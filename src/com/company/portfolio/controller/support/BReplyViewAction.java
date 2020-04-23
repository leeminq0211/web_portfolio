package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.controller.BAction;
public class BReplyViewAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		System.out.println(request.getParameter("getBno"));
		dto.setBno(Integer.parseInt(request.getParameter("getBno")));
		dto = dao.detail(dto,"mvcboard2_reply");
		System.out.println(123);
		ReplyDTO dto2 = new ReplyDTO();
		dto2 = dto;
		dto2.setBtitle(" ㄴ Re:"+dto.getBtitle());
		dto2.setBcontent("\n\n\n>  원본글"+dto.getBcontent().replace("\n",">  "));
		
		request.setAttribute("dto", dto2);
		System.out.println(dto2);
	}

}
