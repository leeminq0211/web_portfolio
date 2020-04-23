package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;
import com.company.portfolio.controller.BAction;

public class MEditAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		dto.setMid((String)request.getSession().getAttribute("mid"));
		System.out.println(dto);
		dto = dao.detail(dto);
		
		dto.setMpass(request.getParameter("mpass"));
		System.out.println("2:"+dto);
		if(dao.logIn(dto)>0) {
			if(request.getParameter("memail") != null) {
				dto.setMemail(request.getParameter("memail"));
			}
			if(request.getParameter("mname") != null) {
				dto.setMname(request.getParameter("mname"));
			}
			if(request.getParameter("newmpass") != null) {
				dto.setMpass(request.getParameter("newmpass"));
			}
		}else {
			request.setAttribute("result",-1);
		}
		System.out.println("3:"+dto);
		request.setAttribute("result",dao.edit(dto));
	}
}
