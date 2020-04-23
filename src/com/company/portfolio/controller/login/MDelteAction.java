package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;

public class MDelteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		dto.setMid((String)request.getSession().getAttribute("mid"));
		HttpSession session = request.getSession(true);
		session.invalidate();
		request.setAttribute("deleteResult",dao.delete(dto));
	}
}
