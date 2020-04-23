package com.company.portfolio.controller.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.MemberDAO;
import com.company.portfolio.dao.ReviewDAO;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

public class ReviewAjax implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		int fk_rno = Integer.parseInt(request.getParameter("fk_rno"));
		String rtype = request.getParameter("rtype");
		String order = request.getParameter("order");
		System.out.println("@!#!@$#@"+order);
		int pageTotal  = new ReviewDAO().listSum(fk_rno,rtype); 
		int onepagelimit = 5;				
		int pageAll = (int)Math.ceil(pageTotal/(float)onepagelimit);
		int pstartno = Integer.parseInt(request.getParameter("pstartno"));
		if(request.getParameter("pstartno")!=null) {pstartno = Integer.parseInt(request.getParameter("pstartno"));}
		int bottomlist = 5; 
		int current_bottom = (int)Math.ceil((pstartno+1)/(float)onepagelimit); 
		int pre_bottom = ((int)Math.floor((current_bottom-1)/bottomlist)*bottomlist)+1; 
		int next_bottom = pre_bottom+bottomlist-1; 
		if(pageAll<next_bottom) {
			next_bottom=pageAll;
		}
		JsonObject page = new JsonObject();
		page.addProperty("pageTotal", pageTotal);
		page.addProperty("onepagelimit", onepagelimit);
		page.addProperty("pageAll", pageAll);
		page.addProperty("pstartno", pstartno);
		page.addProperty("bottomlist", bottomlist);
		page.addProperty("current_bottom", current_bottom);
		page.addProperty("pre_bottom", pre_bottom);
		page.addProperty("next_bottom", next_bottom);
		System.out.println(page);
		JsonObject reivew = new JsonObject();
		reivew.add("page", page);
		reivew.add("list", new ReviewDAO().viewReview(fk_rno,rtype,order,pstartno));
		String mid = (String)request.getSession().getAttribute("mid");
		if (mid != null && mid.length() != 0) {
			reivew.add("rpick",new MemberDAO().rpickList((String)request.getSession().getAttribute("mid")));
		}
		out.println(reivew);
		out.close();
	}
}
