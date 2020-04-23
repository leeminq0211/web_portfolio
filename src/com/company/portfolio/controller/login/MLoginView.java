package com.company.portfolio.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.portfolio.controller.BAction;

public class MLoginView implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cookie = request.getHeader("Cookie");
		if(cookie!=null){
			Cookie[] cookies =request.getCookies();
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("cookieid")){	
					request.setAttribute("cookieid",cookies[i].getValue());
					request.setAttribute("checked","checked");
				}
			}
		}
	}
}
