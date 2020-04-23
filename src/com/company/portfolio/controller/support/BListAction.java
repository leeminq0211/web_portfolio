package com.company.portfolio.controller.support;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.PagingDTO;
import com.company.portfolio.dto.ReplyDTO;

public class BListAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDAO dao = new ReplyDAO();
		System.out.println(request.getParameter("pstartno"));
		int pageTotal  = dao.listSum("mvcboard2_reply"); 
		int onepagelimit = 10;				
		int pageAll = (int)Math.ceil(pageTotal/(float)onepagelimit);
		int pstartno = 0;
		if(request.getParameter("pstartno")!=null) {pstartno = Integer.parseInt(request.getParameter("pstartno"));}
		int bottomlist = 10; 
		int current_bottom = (int)Math.ceil((pstartno+1)/(float)onepagelimit); 
		int pre_bottom = ((int)Math.floor((current_bottom-1)/bottomlist)*bottomlist)+1; 
		int next_bottom = pre_bottom+bottomlist-1; 
		if(pageAll<next_bottom) {
			next_bottom=pageAll;
		}
		
		System.out.println("1. 전체게시판(레코드)갯수" + pageTotal); 
		System.out.println("2. 한페이지당보여주는(레코드)개수" + onepagelimit); 
		System.out.println("3. 전체페이지" + pageAll); 
		System.out.println("4. db에서 가져올 번호 " + pstartno); 
		System.out.println("5. 하단페이지네비" + bottomlist); 
		System.out.println("6. 현재페이지번호" + current_bottom); 
		System.out.println("7. 하단이전(31)" + pre_bottom); 
		System.out.println("8. 하단다음(40)" + next_bottom);

		PagingDTO pdto = new PagingDTO(pageTotal, onepagelimit, pageAll, pstartno, bottomlist, pre_bottom, next_bottom, current_bottom);
		ArrayList<ReplyDTO> list = dao.listpage(pstartno,"mvcboard2_reply");
		System.out.println("9. 출력할리스트" + list); 
		request.setAttribute("list", list);
		request.setAttribute("paging", pdto);
	}

}
