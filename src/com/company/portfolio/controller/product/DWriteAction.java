package com.company.portfolio.controller.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.dao.ProductDAO;
import com.company.portfolio.dto.ProductDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DWriteAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDTO dto = new ProductDTO();
		ProductDAO dao = new ProductDAO();		
		String path = "/upload/";  // 연습용  server.xml
		path = request.getServletContext().getRealPath(path);  // 호스팅용
		 try {
			 MultipartRequest multi = new MultipartRequest( request , path , 1024*1024*5 , "UTF-8" , new DefaultFileRenamePolicy()); 
			// 업로드경로 - 최대업로드용량 5MB - 인코딩타입 - 파일명이 동일할때 새로운이름처리
			String ddtail1_2_1 = multi.getFilesystemName("ddtail1_2_1");
			String ddtail1_2_2 = multi.getFilesystemName("ddtail1_2_2");
			String ddtail1_2_3 = multi.getFilesystemName("ddtail1_2_3");
			String ddtail3_1 = multi.getFilesystemName("ddtail3_1");
			if(ddtail3_1 == null) {  
				ddtail3_1="상세설명 이미지 업로드 안됨.";
			}
			/*
			ddtail1_2
			dname ddtail1_1 ddtail2_1 ddtail2_2 ddtail2_3 ddtail2_4 ddtail2_5 ddtail2_6 ddtail3 
			dcategory ddate_1 ddate_2 dair_1 air_2 dair_3 dair_4 dcity_1 dcity_2 dcity_3 dsit dprice
			 */
			dto.setDname(multi.getParameter("dname"));
			
			dto.setDdtail1(multi.getParameter("ddtail1_1")+"|||"+ddtail1_2_1+"||"+ddtail1_2_2+"||"+ddtail1_2_3);
			dto.setDdtail2(multi.getParameter("ddtail2_1")+"|||"+multi.getParameter("ddtail2_2")+"|||"+multi.getParameter("ddtail2_3")+"|||"+multi.getParameter("ddtail2_4")+"|||"+multi.getParameter("ddtail2_5")+"|||"+multi.getParameter("ddtail2_6"));
			dto.setDdtail3(multi.getParameter("ddtail3")+"|||"+ddtail3_1);
			dto.setDcategory(multi.getParameter("dcategory"));
			dto.setDdate(multi.getParameter("ddate_1")+"|||"+multi.getParameter("ddate_2"));
			dto.setDair(multi.getParameter("dair_1")+"|||"+multi.getParameter("dair_2")+"|||"+multi.getParameter("dair_3")+"|||"+multi.getParameter("dair_4"));
			dto.setDcity(multi.getParameter("dcity_1")+"|||"+multi.getParameter("dcity_2")+"|||"+multi.getParameter("dcity_3"));
			dto.setDsit(Integer.parseInt( multi.getParameter("dsit") ));
			dto.setDprice(Integer.parseInt( multi.getParameter("dprice") ));
			dto.setFk_dno(Integer.parseInt( multi.getParameter("fk_dno")));
			
			
			int result = dao.write(dto);
			request.setAttribute("result", result);
		 }catch(Exception e) { e.printStackTrace();   }
	}
}
