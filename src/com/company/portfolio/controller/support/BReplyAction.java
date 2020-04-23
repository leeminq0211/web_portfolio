package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BReplyAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		String pass=null;
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			 MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "utf-8" , new DefaultFileRenamePolicy()
			 ); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			String file = multi.getFilesystemName("file");
			if( file == null) {  
				pass="파일업로드 안됨.";
				request.setAttribute("upload", pass);
			}	
			System.out.println("들어왔어");
			dto.setBname(multi.getParameter("bname"));
			dto.setBpass(multi.getParameter("bpass"));
			dto.setBtitle(multi.getParameter("btitle"));
			dto.setBcontent(multi.getParameter("bcontent"));
			dto.setBfile(file);
			System.out.println(dto);
			System.out.println(multi.getParameter("bstep")+"%%bstep");
			System.out.println(multi.getParameter("bgroup")+"%%bgroup");
			System.out.println(multi.getParameter("bindent")+"%%bindent");
			
			
			dto.setBstep(Integer.parseInt(multi.getParameter("bstep")));
			dto.setBgroup(Integer.parseInt(multi.getParameter("bgroup")));
			dto.setBindent(Integer.parseInt(multi.getParameter("bindent")));
			System.out.println(dto);
			int result = dao.reply1(dto,"mvcboard2_reply");
			System.out.println(result+"^^성공1");
			result = dao.reply2(dto,"mvcboard2_reply");
			System.out.println(result+"^^성공2");
			request.setAttribute("result", result);
			request.setAttribute("upload", pass);
		 }catch(Exception e) { e.printStackTrace();   }
	}
}
