package com.company.portfolio.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dao.ReservationDAO;
import com.company.portfolio.dto.ProductDTO;
import com.company.portfolio.dto.ReservationDTO;

public class Reservation implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDTO dto = new ProductDTO();
		ReservationDTO reserdto = new ReservationDTO();
		ProductDAO dao = new ProductDAO();
		ReservationDAO reserdao = new ReservationDAO();
		int adultCnt = Integer.parseInt(request.getParameter("adultCnt"));
		int chdCnt = Integer.parseInt(request.getParameter("chdCnt"));
		int infCnt = Integer.parseInt(request.getParameter("infCnt"));
		int sit = adultCnt+chdCnt+infCnt;
		int fk_dno= Integer.parseInt(request.getParameter("dno"));
		reserdto.setAdultCnt(adultCnt);
		reserdto.setChdCnt(chdCnt);
		reserdto.setInfCnt(infCnt);
		reserdto.setFk_dno(fk_dno);
		reserdto.setFk_mid((String)request.getSession().getAttribute("mid"));
		dto.setDno(fk_dno);
		String loginAccess = (String)request.getSession().getAttribute("loginAccess");
		System.out.println(reserdto + "/" + loginAccess);
			
		String result="예약실패";
		if("kakao".equals(loginAccess)){
			result="카카오 로그인 중에는 예약을 할수 없습니다.회원가입을 하고 더 많은 혜택을 얻으세요!";
		}else {
			result="예약은 로그인후 가능합니다.";
			if(reserdao.reservation(reserdto)>0) {
				if(dao.reserve(dto,sit)>0) {
					result="예약완료 \\n MYPAGE - 나의예약현황 에서 확인가능합니다. ";
				}else {
					result="예약가능한 자리가 부족합니다";
				}
			}
		}
		System.out.println("result"+result);
		request.setAttribute("result", result);
		request.setAttribute("dno", fk_dno);
	}
}
