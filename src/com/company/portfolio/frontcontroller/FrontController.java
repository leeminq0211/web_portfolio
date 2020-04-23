package com.company.portfolio.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.portfolio.controller.BAction;
import com.company.portfolio.controller.index.ExchangeAction;
import com.company.portfolio.controller.index.IndexAction;
import com.company.portfolio.controller.index.PapagoAction;
import com.company.portfolio.controller.index.PopUpCookie;
import com.company.portfolio.controller.using.UDeleteAction;
import com.company.portfolio.controller.using.UDetailAction;
import com.company.portfolio.controller.using.UListAction;
import com.company.portfolio.controller.using.UUpdateAction;
import com.company.portfolio.controller.using.UUpdateViewAction;
import com.company.portfolio.controller.using.UWriteAction;
import com.company.portfolio.controller.support.BDelteAction;
import com.company.portfolio.controller.support.BDetailAction;
import com.company.portfolio.controller.support.BListAction;
import com.company.portfolio.controller.support.BReplyAction;
import com.company.portfolio.controller.support.BReplyViewAction;
import com.company.portfolio.controller.support.BUpdateAction;
import com.company.portfolio.controller.support.BUpdateViewAction;
import com.company.portfolio.controller.support.BWriteAction;
import com.company.portfolio.controller.login.MDelteAction;
import com.company.portfolio.controller.login.MEditAction;
import com.company.portfolio.controller.login.MIdCheck;
import com.company.portfolio.controller.login.MJoinAction;
import com.company.portfolio.controller.login.MLogInAction;
import com.company.portfolio.controller.login.MLoginView;
import com.company.portfolio.controller.login.MMypageAction;
import com.company.portfolio.controller.login.ReservationCancel;
import com.company.portfolio.controller.login.ReservationView;
import com.company.portfolio.controller.login.RlikeAction;
import com.company.portfolio.controller.product.DListDifference;
import com.company.portfolio.controller.product.DWriteAction;
import com.company.portfolio.controller.product.IndexSearch;
import com.company.portfolio.controller.product.IndexSearchArr;
import com.company.portfolio.controller.product.RChartAction;
import com.company.portfolio.controller.product.RWriteAction;
import com.company.portfolio.controller.product.Reservation;
import com.company.portfolio.controller.product.ReviewAjax;
import com.company.portfolio.controller.product.TDetailAction;
import com.company.portfolio.controller.product.TMainList;
import com.company.portfolio.controller.product.TMainList2;
import com.company.portfolio.controller.product.TWriteMainAction;


/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actiondo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actiondo(request, response);
	}
	protected void actiondo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); 
		String viewPage = "";
		BAction command = null;
	
		
		// /BList
		System.out.println("URI: " +request.getRequestURI()+"</br>");
		System.out.println("contextPath: " +request.getContextPath()+"</br>");
		System.out.println("/path: " +request.getRequestURI().substring(request.getContextPath().length()));
		
		String path = request.getRequestURI().substring(request.getContextPath().length());
		/////////////////////////////////////support
		if(path.equals("/index.do")) {
			command = new IndexAction();
			command.excute(request, response);
			viewPage = "/mainPage.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		 else if(path.equals("/list.do")) {
			command = new BListAction();
			command.excute(request, response);			
			viewPage = "/support/replyList.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/write_view.do")) {
			viewPage = "/support/write.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/write.do")) {
			command = new BWriteAction();
			command.excute(request, response);
			viewPage = "/list.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/edit_VIEW.do")) {
			command = new BUpdateViewAction();
			command.excute(request, response);
			viewPage = "/support/edit.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/edit.do")) {
			command = new BUpdateAction();
			command.excute(request, response);
			viewPage = "/detail.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/delete.do")) {
			command = new BDelteAction();
			command.excute(request, response);
			viewPage = "/list.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if (path.equals("/delete_view.do")) {
				request.getRequestDispatcher("/support/delete.jsp").forward(request, response);
		}else if(path.equals("/detail.do")) {
			command = new BDetailAction();
			command.excute(request, response);
			viewPage = "/support/detail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/reply_view.do")) {
			command = new BReplyViewAction();
			command.excute(request, response);
			viewPage = "/support/reply.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/reply.do")) {
			System.out.println(123124);
			command = new BReplyAction();
			command.excute(request, response);
			viewPage = "/list.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		
			/////////////////////////////login
		}else if(path.equals("/login.do")) {
			command = new MLogInAction();
			command.excute(request, response);
			viewPage = "/mypage.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/idcheck.do")) {
			command = new MIdCheck();
			command.excute(request, response);
		}else if(path.equals("/join.do")) {
			command = new MJoinAction();
			command.excute(request, response);
			viewPage = "/login/mypage.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/mypage.do")) {
			command = new MMypageAction();
			command.excute(request, response);
			viewPage = "/login/mypage.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/medit.do")) {
			command = new MEditAction();
			command.excute(request, response);
			viewPage = "/mypage.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/meditView.do")) {
			command = new MMypageAction();
			command.excute(request, response);
			viewPage = "/login/mypage_edit.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/mdelete.do")) {
			command = new MDelteAction();
			command.excute(request, response);
			viewPage = "/index.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/login_view.do")) {
			command = new MLoginView();
			command.excute(request, response);
			viewPage = "/login/login.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
			
		////////////////////////////////////////////using
		}else if(path.equals("/using.do")) {
			command = new UListAction();
			command.excute(request, response);			
			viewPage = "/using/using.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/usingDelete.do")) {
			command = new UDeleteAction();
			command.excute(request, response);			
			viewPage = "/using.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/usingUpdateView.do")) {
			command = new UUpdateViewAction();
			command.excute(request, response);			
			viewPage = "/using/edit.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/usingUpdate.do")) {
			command = new UUpdateAction();
			command.excute(request, response);			
			viewPage = "/using.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/usingDetail.do")) {
				command = new UDetailAction();
				command.excute(request, response);			
				viewPage = "/using/detail.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
		}else if(path.equals("/usingWriteView.do")) {	
			viewPage = "/using/write.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/usingWrite.do")) {	
			command = new UWriteAction();
			command.excute(request, response);	
			viewPage = "/using.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		///////////////////////////////////////////notice
		}else if(path.equals("/notice.do")) {
			command = new UListAction();
			command.excute(request, response);			
			viewPage = "/notice/notice.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeDelete.do")) {
			command = new UDeleteAction();
			command.excute(request, response);			
			viewPage = "/notice.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeUpdateView.do")) {
			command = new UUpdateViewAction();
			command.excute(request, response);			
			viewPage = "/notice/edit.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeUpdate.do")) {
			command = new UUpdateAction();
			command.excute(request, response);			
			viewPage = "/notice.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeDetail.do")) {
			command = new UDetailAction();
			command.excute(request, response);			
			viewPage = "/notice/detail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeWriteView.do")) {	
			viewPage = "/notice/write.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/noticeWrite.do")) {	
			command = new UWriteAction();
			command.excute(request, response);	
			viewPage = "/product/tMainList.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		//////////////////////////////////product
		else if(path.equals("/tMainList.do")) {	
			command = new TMainList(); 
			command.excute(request, response);	
			viewPage = "/product/tMainList.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/dtaolDif.do")) {	
			command = new DListDifference(); 
			command.excute(request, response);	
		}else if(path.equals("/tMainListTest.do")) {	
			command = new TMainList2(); 
			command.excute(request, response);	
			viewPage = "/product/tMainListTest.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/dwrite.do")) {	
			command = new DWriteAction();
			command.excute(request, response);	
			viewPage = "/tMainList.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/twriteMain.do")) {	
			command = new TWriteMainAction();
			command.excute(request, response);	
			viewPage = "/tMainList.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/tdtailview.do")) {	
			command = new TDetailAction();
			command.excute(request, response);	
			viewPage = "/product/tDetail.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/searchList.do")) {	
			command = new TMainList(); 
			command.excute(request, response);	
			viewPage = "/product/tMainListSearch.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
			///////////////////////////REVIEW
		}else if(path.equals("/rwrite.do")) {	
			command = new RWriteAction();
			command.excute(request, response);	
			viewPage = "/tdtailview.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/rchart.do")) {	
			command = new RChartAction();
			command.excute(request, response);	
		}else if(path.equals("/reviewAjax.do")) {	
			command = new ReviewAjax();
			command.excute(request, response);	
		}
		////////////////////reservation
		else if(path.equals("/reservation.do")) {	
			command = new Reservation();
			command.excute(request, response);	
			viewPage = "/tdtailview.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/reservationView.do")) {	
			command = new ReservationView();
			command.excute(request, response);	
			viewPage = "/login/reservationView.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/reservationCancel.do")) {	
			command = new ReservationCancel();
			command.excute(request, response);	
			viewPage = "/reservationView.do";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(path.equals("/rlike.do")) {
			command = new RlikeAction();
			command.excute(request, response);	
		}
		//////////////////////index
		else if(path.equals("/papago.do")) {
			command = new PapagoAction();
			command.excute(request, response);	
		}
		else if(path.equals("/exchange.do")) {
			command = new ExchangeAction();
			command.excute(request, response);	
		}
		else if(path.equals("/indexSearch.do")) {
			command = new IndexSearch();
			command.excute(request, response);	
		}
		else if(path.equals("/indexSearchArr.do")) {
			command = new IndexSearchArr();
			command.excute(request, response);
			viewPage = "/product/tMainListSearch.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		else if(path.equals("/javaPortfolio.do")) {
			viewPage = "/java/portfolio.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		else if(path.equals("/setCookie.do")) {
			command = new PopUpCookie();
			command.excute(request, response);
		}
	}
}
