package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;

public class BDetailAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String sessionID = (String) request.getSession().getAttribute("mid");
		System.out.println(sessionID);
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		try {
			dto.setBno(Integer.parseInt(request.getParameter("bno")));
		} catch (Exception e) {
			System.out.println(request.getAttribute("bno"));
			dto.setBno((int)request.getAttribute("bno"));
		}
		dao.addHit(dto,"mvcboard2_reply");
		dto = dao.detail(dto,"mvcboard2_reply");
		request.setAttribute("result",-1);
		if(dto.getBname().equals(sessionID) || "admin".equals(sessionID)) {
			request.setAttribute("result",1);
		}
		request.setAttribute("dto", dto);
		
	}

}
