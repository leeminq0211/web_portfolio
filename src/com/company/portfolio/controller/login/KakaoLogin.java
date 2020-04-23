package com.company.portfolio.controller.login;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KakaoLogin
 */
@WebServlet("/KakaoLogin")
public class KakaoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KakaoLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
        try {
            String apiURL = "https://kauth.kakao.com/oauth/token"; // json 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            String code = request.getParameter("code");
            String postParams = "grant_type="+URLEncoder.encode("authorization_code","utf-8")+"&client_id="+URLEncoder.encode("aebe97ba7e2f11cbcbff8a77dc2e8b85","utf-8")+"&redirect_uri="+URLEncoder.encode("http://leeminq0211.cafe24.com/portfolio/KakaoLogin","utf-8")+"&code="+URLEncoder.encode(code,"utf-8");
            System.out.println(postParams);
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            //con.setRequestProperty("Content-Type", "application/json;charset=utf-8");
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer sb = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
            	sb.append(inputLine);
            }
            br.close();  con.disconnect();
            System.out.println(sb.toString());
            String access_token = sb.toString().substring(sb.toString().indexOf("access_token")+15, sb.toString().indexOf(",",3)-1);
            System.out.println(access_token);
            /////////////////////////////////////////////////////
            String header = "Bearer " + access_token;
            url = new URL("https://kapi.kakao.com/v2/user/me");
            con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", header);
            if(con.getResponseCode()==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            sb = new StringBuffer();
            inputLine=null;
            while ((inputLine = br.readLine()) != null) {
            	sb.append(inputLine);
            }
            br.close();  con.disconnect();
            System.out.println(sb.toString());
            int namestart = sb.toString().indexOf("nickname")+11;
            int nameend= sb.toString().indexOf(",",namestart)-1;
            String name = sb.toString().substring(namestart,nameend);
            int imagestart=sb.toString().indexOf("thumbnail_image")+18;
            int imageend=sb.toString().indexOf(",",imagestart)-2;
            String img = sb.toString().substring(imagestart,imageend);
            int emailstart = sb.toString().indexOf("email")+8;
            int emailend= sb.toString().indexOf(",",emailstart)-1;
            String email = sb.toString().substring(emailstart,emailend);
            request.setAttribute("img", img);
            request.setAttribute("email", email);
            request.getSession().setAttribute("mid", name);
            request.getSession().setAttribute("loginAccess", "kakao");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (Exception e) {
            out.println(e);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
