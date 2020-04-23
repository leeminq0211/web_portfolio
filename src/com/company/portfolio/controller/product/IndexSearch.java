package com.company.portfolio.controller.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.google.gson.JsonArray;

public class IndexSearch implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String search = request.getParameter("search");
		String[] searchStr = search.split("\\s");
		String searching = "(";
		String date = "";
		for(int i=0;i<searchStr.length;i++) {
			if(i==0) {
				searching += "instr(lower(replace(ddtail1,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ttitle,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(dname,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ddtail2,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ddtail3,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(dcity,' ','')),lower(replace('"+searchStr[i]+"',' ','')))";
			}else {
				searching += "and instr(lower(replace(ddtail1,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ttitle,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(dname,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ddtail2,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(ddtail3,' ','')),lower(replace('"+searchStr[i]+"',' ',''))) or instr(lower(replace(dcity,' ','')),lower(replace('"+searchStr[i]+"',' ','')))";
			}
		}
		searching += ")";
		if (request.getParameter("dateS") != null && request.getParameter("dateS").length() != 0) {
			date="='"+request.getParameter("dateS")+"'";
			if (request.getParameter("dateE") != null && request.getParameter("dateE").length() != 0) {
				date="between '"+request.getParameter("dateS")+"' and '"+request.getParameter("dateE")+"'";
			}
		}else {
			date="is not null";
		}
		
		JsonArray list = new ProductDAO().listProductAjax(searching, date);
		
		out.println(list);
		out.close();
	}
}
