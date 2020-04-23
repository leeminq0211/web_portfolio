package com.company.portfolio.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dao.ReviewDAO;

public class RlikeAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		int rno = Integer.parseInt(request.getParameter("rno"));
		int num = Integer.parseInt(request.getParameter("num"));
		MemberDAO mdao = new MemberDAO();
		System.out.println(num);
		System.out.println("member결과="+mdao.rpickDo(rno,num,(String)request.getSession().getAttribute("mid")));
		
		
		ReviewDAO dao = new ReviewDAO();
		
		
		out.println(dao.rpickDo(rno,num));
		out.close();
	}
}
