package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logic.AuthLogic;
import model.ProductUser;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Product_login")
public class Product_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// すでにログイン済みならビデオ一覧へリダイレクト
//		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		if (loginUser != null) {
//			System.out.println("login済み get");
//			response.sendRedirect("Product_top");
//		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated menthod stub
		
		System.out.println("login post");
		// ログイン
		String email = request.getParameter("login-id");
		String password = request.getParameter("password-txt");
		
		System.out.println(" email  " + email + " password  " + password);
		
		AuthLogic logic = new AuthLogic();
		ProductUser user = logic.login(email, password);
		
		if (user != null) {
			// ログインしてトップページ（今回はVoD一覧）へリダイレクト
			System.out.println("login済み");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", user);
			response.sendRedirect("Product_top");
		} else {
			// エラー時はエラーメッセージを追加し自分へ戻る
			request.setAttribute("msg", "ログインに失敗しました");
			doGet(request, response);
		}
		
//		doGet(request, response);
	}

}
