package com.company.portfolio.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dto.MainProductDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class TWriteMainAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		MainProductDTO dto = new MainProductDTO();
		ProductDAO dao = new ProductDAO();
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "UTF-8" , new DefaultFileRenamePolicy()); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			String timage = multi.getFilesystemName("timage");
			if(timage == null) {  
				timage="이미지 업로드 안됨.";
			}
			dto.setTtitle(multi.getParameter("ttitle"));
			dto.setTimage(timage);
			int result = dao.writeMain(dto);
			request.setAttribute("result", result);
		 }catch(Exception e) { e.printStackTrace();   }
	}
}
