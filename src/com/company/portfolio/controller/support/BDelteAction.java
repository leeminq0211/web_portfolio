package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;



public class BDelteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		int result = 0;
		dto.setBno(Integer.parseInt(request.getParameter("bno")));
		dto.setBpass(request.getParameter("bpass"));
		if(dao.checkPass(dto,"mvcboard2_reply")>0) {
			result = dao.delete(dto,"mvcboard2_reply");
		}else {
			result = -1;
		}
		System.out.println(result);
		request.setAttribute("result", result);
	}

}
