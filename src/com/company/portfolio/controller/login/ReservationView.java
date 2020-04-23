package com.company.portfolio.controller.login;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReservationDAO;
import com.company.portfolio.dto.PagingDTO;
import com.company.portfolio.dto.ReservationDTO;

public class ReservationView implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationDTO dto = new ReservationDTO();
		ReservationDAO dao = new ReservationDAO();
		dto.setFk_mid((String)request.getSession().getAttribute("mid"));
		System.out.println(request.getParameter("pstartno"));
		int pageTotal  = dao.listSum(); 
		int onepagelimit = 5;				
		int pageAll = (int)Math.ceil(pageTotal/(float)onepagelimit);
		int pstartno = 0;
		if(request.getParameter("pstartno")!=null) {pstartno = Integer.parseInt(request.getParameter("pstartno"));}
		int bottomlist = 5; 
		int current_bottom = (int)Math.ceil((pstartno+1)/(float)onepagelimit); 
		int pre_bottom = ((int)Math.floor((current_bottom-1)/bottomlist)*bottomlist)+1; 
		int next_bottom = pre_bottom+bottomlist-1; 
		if(pageAll<next_bottom) { next_bottom=pageAll; }
		
		PagingDTO pdto = new PagingDTO(pageTotal, onepagelimit, pageAll, pstartno, bottomlist, pre_bottom, next_bottom, current_bottom);
		request.setAttribute("list", dao.listMain(pstartno,dto));
		request.setAttribute("paging", pdto);
		System.out.println(pdto);
	}
}
