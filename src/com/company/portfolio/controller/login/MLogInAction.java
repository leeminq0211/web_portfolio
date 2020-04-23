package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dto.MemberDTO;
import com.company.portfolio.controller.BAction;

public class MLogInAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MemberDTO dto = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		String mid = request.getParameter("mid");
		String remeber =request.getParameter("remember");
		Cookie cookie1 = new Cookie("cookieid", mid);
		
		dto.setMemail(request.getParameter("memail"));
		dto.setMid(request.getParameter("mid"));
		dto.setMname(request.getParameter("mname"));
		dto.setMpass(request.getParameter("mpass"));
		System.out.println(dto);
		int result =  dao.logIn(dto);
		if(result>0) {
			if(remeber!=null){
				cookie1.setMaxAge(60*60*24);
				response.addCookie(cookie1);
				request.getSession().setAttribute("mid", dto.getMid());
			}
			else{
				cookie1.setMaxAge(0);
				response.addCookie(cookie1);
				request.getSession().setAttribute("mid", dto.getMid());
			}
		}
		System.out.println(result);
		request.setAttribute("login",result);
	}
}
