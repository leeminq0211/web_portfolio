package com.company.portfolio.controller.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReviewDAO;


public class RChartAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(request.getParameter("rtype"));
		System.out.println(request.getParameter("fk_rno"));

		int rtype = Integer.parseInt(request.getParameter("rtype"));
		int fk_rno = Integer.parseInt(request.getParameter("fk_rno"));
		/*JsonArray list = new JsonArray();
		JsonObject jObject = new JsonObject();
		jObject.addProperty("star", rset.getString("per"));		
		jObject.addProperty("count", rset.getString("per"));				
		jObject.add("rtype",new ReviewDAO().chart(rtype));*/
		out.println(new ReviewDAO().chart(rtype,fk_rno));
	}

}
