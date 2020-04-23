package com.company.portfolio.controller.index;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dao.UsingDAO;
import com.company.portfolio.dto.UsingDTO;

public class IndexAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<UsingDTO> list = new UsingDAO().listAll(0,"notice");
		String date="is not null";
		request.setAttribute("list", list);
		request.setAttribute("mainList", new ProductDAO().listProductArray());
		String path = "/upload/";  // 연습용  server.xml
		System.out.println(request.getServletContext().getRealPath(path));
	}

}
