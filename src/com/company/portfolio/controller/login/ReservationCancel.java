package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dao.ReservationDAO;
import com.company.portfolio.dto.ReservationDTO;

public class ReservationCancel implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReservationDTO dto = new ReservationDTO();
		ReservationDAO dao = new ReservationDAO();
		ProductDAO pdao = new ProductDAO();
		dto.setRno(Integer.parseInt(request.getParameter("rno")));
		
		
		ReservationDTO dtoTemp = new ReservationDTO();
		dtoTemp = dao.sitNum(dto);
		System.out.println("남은좌석="+dtoTemp);
		int result = pdao.reserveUndo(dtoTemp);
		System.out.println("실행결과="+result);
		if(result>0) {
			result = dao.reserveCancel(dto);
		}
		request.setAttribute("result", result);
	}
}
