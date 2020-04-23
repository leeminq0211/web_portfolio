package com.company.portfolio.controller.using;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.UsingDAO;
import com.company.portfolio.dto.UsingDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.company.portfolio.controller.BAction;
public class UUpdateAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		UsingDTO dto = new UsingDTO();
		UsingDAO dao = new UsingDAO();
		String table = request.getParameter("table");

		int result = 0;
		
		String pass=null;
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			 MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "utf-8" , new DefaultFileRenamePolicy()
			 ); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			 String file = multi.getFilesystemName("file");
			 dto.setFile(file);
			 System.out.println("파일이파일: " + file);
			 if( multi.getFilesystemName("file") == null) {
				 dto.setFile(multi.getParameter("file2"));
			}
			 
			if(file == null) {  
				pass="파일업로드 실패 5mb이상 파일은 업로드 할수 없습니다";
				request.setAttribute("upload", pass);
			}
			dto.setNo(Integer.parseInt(multi.getParameter("no")));
			dto.setCategory(multi.getParameter("category"));
			dto.setTitle(multi.getParameter("title"));
			dto.setContent(multi.getParameter("content"));
			
			result = dao.edit(dto,table);
			request.setAttribute("result", result);
			request.setAttribute("upload", pass);
			request.setAttribute("no", dto.getNo());
		 }
			catch (Exception e) {
				e.printStackTrace();
			}
		 }
}
