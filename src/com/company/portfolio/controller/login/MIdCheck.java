package com.company.portfolio.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;
import com.company.portfolio.controller.BAction;

public class MIdCheck implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		dto.setMid(request.getParameter("mid"));
		int result = dao.idCheck(dto);
		System.out.println(result);
		out.print(result);
	}
}
