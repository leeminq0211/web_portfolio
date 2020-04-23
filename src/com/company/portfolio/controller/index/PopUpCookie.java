package com.company.portfolio.controller.index;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;

public class PopUpCookie implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("popup");
		Cookie cookie1 = new Cookie("cookiepop","cookiepop");
		cookie1.setMaxAge(60*60*24);
		response.addCookie(cookie1);
	}
}
