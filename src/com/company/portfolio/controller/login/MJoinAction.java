package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;
import com.company.portfolio.controller.BAction;

public class MJoinAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		dto.setMid(request.getParameter("mid"));
		dto.setMemail(request.getParameter("memail"));
		dto.setMpass(request.getParameter("mpass"));
		dto.setMname(request.getParameter("mname"));
		int result = dao.join(dto);
		request.setAttribute("result", result);
		request.setAttribute("dto", dto);
	}
}
