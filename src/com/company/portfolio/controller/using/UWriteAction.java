package com.company.portfolio.controller.using;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.dao.ReplyDAO;
import com.company.portfolio.dao.UsingDAO;
import com.company.portfolio.dto.ReplyDTO;
import com.company.portfolio.dto.UsingDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.*;
import com.company.portfolio.controller.BAction;
public class UWriteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		UsingDAO dao = new UsingDAO();
		UsingDTO dto = new UsingDTO();
		String table = request.getParameter("table");
				
		String pass=null;
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			 MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "UTF-8" , new DefaultFileRenamePolicy()); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			String file = multi.getFilesystemName("file");
			if( file == null) {  
				pass="파일업로드 안됨.";
				request.setAttribute("upload", pass);
			}
			dto.setCategory(multi.getParameter("category"));
			dto.setTitle(multi.getParameter("title"));
			dto.setContent(multi.getParameter("content"));
			dto.setFile(file);
			System.out.println("들어간다");
			int result = dao.write(dto,table);
			System.out.println("돌아왔다");

			request.setAttribute("result", result);
			request.setAttribute("upload", pass);
		 }catch(Exception e) { e.printStackTrace();   }
	}
}
