package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductHistoryDAO;
import dao.PurchaseStatusDAO;
import model.AdminUser;
import model.Item;

/**
 * Servlet implementation class Admin_productList
 */
@WebServlet("/Admin_productList")
public class Admin_productList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AdminUser loginUser = (AdminUser)request.getSession().getAttribute("loginUser");
		HttpSession session = request.getSession();
		
		if (loginUser == null) {			
			System.out.println("ログイン画面未ログイン");
			request.setAttribute("msg", "ログインしてください");
			request.setAttribute("loginFalse", "ログインしてください");
			response.sendRedirect("Admin_login");
		}
		else {
			session.setAttribute("loginUserId", loginUser.getAd_mailadress());
			System.out.println("AdminLoginUser " + loginUser.getAd_mailadress());
			
			ProductHistoryDAO daoHistory = new ProductHistoryDAO();
			List<Item> list = daoHistory.get(loginUser.getId());
			
			String userMailAdress = daoHistory.getUserAdmin();
			
			//Item item = dao.find(1);
			System.out.println("Admin_productList servlet");
			System.out.println(list);
			
			request.setAttribute("list", list);
			request.setAttribute("userMailAdress", userMailAdress);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/product_list.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("");
		System.out.println("admin_doPost");
//		boolean preparation = request.getParameter("preparation") != null;
//		boolean completion = request.getParameter("completion") != null;
		
		String status = request.getParameter("comparison-box");
		System.out.println(status);
		
		PurchaseStatusDAO dao = new PurchaseStatusDAO();
		
		if (status.equals("preparation")) {
			System.out.println("");
			System.out.println("test");
			System.out.println(status);
			System.out.println("");
			dao.find("準備中");
		}
		else if (status.equals("completion")) {
			System.out.println("");
			System.out.println("test");
			System.out.println(status);
			System.out.println("");
			dao.find("完了");
		}
		
		
		
//		if (preparation) {
//			dao.find("準備中");
//		}
//		else if (completion) {
//			dao.find("完了");
//		}
		
		
		doGet(request, response);
	}

}
