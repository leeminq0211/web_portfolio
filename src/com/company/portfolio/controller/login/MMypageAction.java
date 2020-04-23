package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;
import com.company.portfolio.controller.BAction;

public class MMypageAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		dto.setMid((String)request.getSession().getAttribute("mid"));
		
		request.getSession().setAttribute("mid", dto.getMid());
		request.setAttribute("dto",dao.detail(dto));
		request.setAttribute("in", "in");
	}

}
