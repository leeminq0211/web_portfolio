package com.company.portfolio.controller.support;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.company.portfolio.controller.BAction;
public class BUpdateAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ReplyDTO dto = new ReplyDTO();
		ReplyDAO dao = new ReplyDAO();
		int result = 0;
		
		String pass=null;
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			 MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "utf-8" , new DefaultFileRenamePolicy()
			 ); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			 String file = multi.getFilesystemName("file");
			 dto.setBfile(file);
			 System.out.println("파일이파일: " + file);
			 if( multi.getFilesystemName("file") == null) {
				 dto.setBfile(multi.getParameter("file2"));
			}
			 
			if(file == null) {  
				pass="파일업로드 실패 5mb이상 파일은 업로드 할수 없습니다";
				request.setAttribute("upload", pass);
			}
			dto.setBno(Integer.parseInt(multi.getParameter("bno")));
			dto.setBpass(multi.getParameter("bpass"));
			dto.setBtitle(multi.getParameter("btitle"));
			dto.setBcontent(multi.getParameter("bcontent"));
			
			if(dao.checkPass(dto,"mvcboard2_reply")>0) {
				result = dao.edit(dto,"mvcboard2_reply");
			}else {
				result = -1;
			}
			request.setAttribute("result", result);
			request.setAttribute("upload", pass);
			request.setAttribute("bno", dto.getBno());
		 }
			catch (Exception e) {
				e.printStackTrace();
			}
		 }
}
