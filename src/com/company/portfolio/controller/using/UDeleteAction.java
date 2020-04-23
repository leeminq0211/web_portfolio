package com.company.portfolio.controller.using;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.UsingDAO;
import com.company.portfolio.dto.UsingDTO;



public class UDeleteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		UsingDTO dto = new UsingDTO();
		UsingDAO dao = new UsingDAO();
		String table = request.getParameter("table");

		int result = 0;
		dto.setNo(Integer.parseInt(request.getParameter("no")));
		result = dao.delete(dto,table);
		System.out.println(result);
		request.setAttribute("result", result);
	}

}
