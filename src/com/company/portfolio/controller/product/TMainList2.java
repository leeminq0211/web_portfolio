package com.company.portfolio.controller.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dto.MainProductDTO;
import com.company.portfolio.dto.ProductDTO;

public class TMainList2 implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDAO dao = new ProductDAO();
		ArrayList<MainProductDTO> mainList = dao.listMainView();

		System.out.println(mainList.toString());

		request.setAttribute("mainList", mainList);

	}
}
