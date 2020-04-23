package com.company.portfolio.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BAction {
	void excute( HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException; 
}
