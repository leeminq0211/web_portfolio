package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.controller.BAction;
public class BUpdateViewAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		dto.setBno(Integer.parseInt(request.getParameter("getBno")));
		if(dao.addHit(dto,"mvcboard2_reply")>0) {
			System.out.println("good");
		};
		request.setAttribute("dto", dao.detail(dto,"mvcboard2_reply"));
	}

}
