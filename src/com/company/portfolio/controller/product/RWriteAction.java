package com.company.portfolio.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReviewDAO;
import com.company.portfolio.dto.ReviewDTO;

public class RWriteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReviewDTO dto = new ReviewDTO();
		ReviewDAO dao = new ReviewDAO();		
		int fk_rno=Integer.parseInt(request.getParameter("fk_dno"));
		dto.setRtitle(request.getParameter("rtitle"));
		dto.setRdetail(request.getParameter("rdetail"));
		dto.setRstar(request.getParameter("rstar"));
		dto.setRname(request.getParameter("rname"));
		dto.setRtype(request.getParameter("rtype"));
		dto.setRdate(request.getParameter("rdate"));
		dto.setRpick(request.getParameter("rpick"));
		dto.setFk_rno(fk_rno);
		System.out.println(dto);
		
		int result = dao.write(dto);
		if(result>0) {
			request.setAttribute("resultRwrite", "리뷰 작성 완료");
		}
		
		
		request.setAttribute("dno", Integer.parseInt(request.getParameter("dno")));
		request.setAttribute("fk_dno", fk_rno);
	}
}
