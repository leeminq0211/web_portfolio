package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.controller.BAction;
public class ReplyAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		
		dto.setBname(request.getParameter("bname"));
		dto.setBpass(request.getParameter("bpass"));
		dto.setBtitle(request.getParameter("btitle"));
		dto.setBcontent(request.getParameter("bcontent"));
		dto.setBstep(Integer.parseInt(request.getParameter("bstep")));
		dto.setBgroup(Integer.parseInt(request.getParameter("group")));

		int result = dao.reply1(dto,"mvcboard2_reply");
		System.out.println(result+" 첫번째");
		if(result>0) {
			result = dao.reply2(dto,"mvcboard2_reply");
			System.out.println(result+" 두번째");
		}
		request.setAttribute("result", result);
	}

}
