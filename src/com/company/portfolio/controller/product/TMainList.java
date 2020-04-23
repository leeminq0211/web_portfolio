package com.company.portfolio.controller.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dto.MainProductDTO;

public class TMainList implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("가즈아2");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDAO dao = new ProductDAO();
		String path="/upload/";
		System.out.println("///////////////////////////////////////////////////////////////////////////");
		System.out.println(request.getServletContext().getRealPath(path));
		System.out.println("///////////////////////////////////////////////////////////////////////////");
		
		int month=0;
		try {
			System.out.println("MONTH="+ request.getParameter("month"));
			month=Integer.parseInt(request.getParameter("month"));
		} catch (Exception e) {
			month=0;
		}
		String order = request.getParameter("order");
		System.out.println(order);
		if(order == null || order.length() == 0) {
			order="ddate";
		}else if(order.contains("_")) {
			order = order.replaceAll("_", " ");
			System.out.println("포함됨");
		}
		System.out.println(order);
		int dsit = 0;
		try {
			dsit = Integer.parseInt(request.getParameter("sit"));
		} catch (Exception e) {
			dsit = 0;
		}
		System.out.println("가즈아");
		ArrayList<MainProductDTO> mainList = new ArrayList<MainProductDTO>();
		String where= request.getParameter("where");
		String searching = request.getParameter("searching");
		System.out.println(where);
		if(where == null || where.length() == 0) {
			if(searching == null || searching.length() == 0) {
				System.out.println("들어옴");
				where = new ProductDAO().getCity(Integer.parseInt(request.getParameter("no")));
				mainList = dao.listMain(where,month,order);
			}else {
				mainList = dao.listMainSearch(request.getParameter("searching"),month,order);
			}
		}else {
			mainList = dao.listMain(where,month,order);
		}
		if(dsit==1) {
			mainList= dao.listMain(where,month,order,dsit);
		}
		System.out.println(mainList.toString());
		int on = 0;
		if(order.equals("ddate")) {
			on=1;
		}else if(order.equals("dprice")) {
			on=2;
		}else if(order.equals("dprice desc")) {
			on=3;
		}
		request.setAttribute("on", on);
		request.setAttribute("mainList", mainList);
		request.setAttribute("where", where);
		request.setAttribute("no", request.getParameter("no"));
		request.setAttribute("month", month);
		Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);   //현재 년 구하기
        int mon = c.get(Calendar.MONTH) +1 - month; //현재 달 구하기
        System.out.println("월구하기:"+mon);
        if(mon<1) {
        	year = year-1;
        	mon = mon+12;
        }
        if(mon>12) {
        	year = year+1;
        	mon = mon-12;
        }
        c.set(year, month - 1, 1);
        String date = year+"."+mon;
		request.setAttribute("date", date);
		request.setAttribute("order", order);
		request.setAttribute("searching", request.getParameter("searching"));
	}
}
