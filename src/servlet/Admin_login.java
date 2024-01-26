package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logic.AdminLogic;
import model.AdminUser;

/**
 * Servlet implementation class Admin_login
 */
@WebServlet("/Admin_login")
public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		HttpSession session = request.getSession();
		// すでにログイン済みならビデオ一覧へリダイレクト
		AdminUser loginUser = (AdminUser)request.getSession().getAttribute("loginUser");
		if (loginUser != null) {
			System.out.println("AdminLogin済み get");
//			response.sendRedirect("Admin_top");
			request.setAttribute("loginTrue", "ログイン済みです");
			request.setAttribute("msg", "ログイン済みです");
		}
		else {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/login.jsp");
//			dispatcher.forward(request, response);
			request.setAttribute("loginFalse", "ログインしてください");
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/ad_login.jsp");
		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("login post");
		// ログイン
		String email = request.getParameter("ad-login-id");
		String password = request.getParameter("ad-password-txt");
		
		System.out.println(" email  " + email + " password  " + password);
		
//		AdminUser loginUser = (AdminUser)request.getSession().getAttribute("loginUser");
		
		AdminLogic logic = new AdminLogic();
		System.out.println("AdminLogin before user");
		AdminUser user = logic.login(email, password);
		System.out.println("AdminLogin after user " + user);
		
		HttpSession session = request.getSession();
		
		if (user == null) {
			// エラー時はエラーメッセージを追加し自分へ戻る
			request.setAttribute("msg", "ログインに失敗しました");
			request.setAttribute("loginFalse", "ログインしてください");
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/ad_login.jsp");
			dispatcher.forward(request, response);
			
		} else {

			// ログインしてトップページ（今回はVoD一覧）へリダイレクト
			session.setAttribute("loginUser", user);
			System.out.println("login済み");
			request.setAttribute("loginTrue", "ログイン済みです");
			request.setAttribute("msg", "ログイン済みです");
			response.sendRedirect("Admin_productList");
		}
		
//		doGet(request, response);
	}

}
