package com.company.portfolio.controller.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;


public class TDetailAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDAO dao = new ProductDAO();
		//int dno, String dname, String ddtail1, String ddtail2, String ddtail3, String dcategory, String ddate, String dair, String dcity, int dsit, int dprice, int ddates, int fk_dno
		int dno = Integer.parseInt(request.getParameter("dno"));
		
		request.setAttribute("dto", dao.listProductDetail(dno));
	}
}
