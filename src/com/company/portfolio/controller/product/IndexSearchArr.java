package com.company.portfolio.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class IndexSearchArr implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("search"));
		System.out.println(request.getParameter("dateS"));
		System.out.println(request.getParameter("dateE"));
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
		if (request.getParameter("tno") != null && request.getParameter("tno").length() != 0) {
			searching += ("and tno=" + request.getParameter("tno"));
		}
		request.setAttribute("mainList", new ProductDAO().listProductArray(searching, date));
	}

}
