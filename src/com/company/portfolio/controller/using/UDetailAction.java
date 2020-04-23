package com.company.portfolio.controller.using;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.UsingDAO;
import com.company.portfolio.dto.UsingDTO;

public class UDetailAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		UsingDTO dto = new UsingDTO();
		UsingDAO dao = new UsingDAO();
		String table = request.getParameter("table");
		try {
			dto.setNo(Integer.parseInt(request.getParameter("no")));
		} catch (Exception e) {
			System.out.println(request.getAttribute("no"));
			dto.setNo((int)request.getAttribute("no"));
		}
		dto = dao.detail(dto,table);
		request.setAttribute("result",-1);
		request.setAttribute("dto", dto);
	}
}
