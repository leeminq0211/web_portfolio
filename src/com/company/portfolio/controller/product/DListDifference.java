package com.company.portfolio.controller.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;

public class DListDifference implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		ProductDAO dao = new ProductDAO();
		String [] value=request.getParameterValues("checkboxValues[]");
		String dif=value[0];
		for(int i=1;i<value.length;i++) {
			dif+=(","+value[i]);
		}
		out.println(dao.detailDifference(dif));
	}

}
