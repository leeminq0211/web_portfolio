package com.company.portfolio.controller.index;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;

public class ExchangeAction implements BAction {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String currency  = request.getParameter("currency");
		System.out.println(currency);
        try {
            String apiURL = "https://earthquake.kr:23490/query/"+currency; // json 결과
            URL url = new URL(apiURL);
            System.out.println(url);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            System.out.println(con);
            BufferedReader br;
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            String inputLine;
            StringBuffer sb = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
            	sb.append(inputLine);
            }
            br.close();
            out.println(sb.toString());
        } catch (Exception e) {
            out.println(e);
        }
	}

}
