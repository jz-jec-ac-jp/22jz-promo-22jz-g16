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
import model.ProductUser;

/**
 * Servlet implementation class Admin_productStatus
 */
@WebServlet("/Admin_productStatus")
public class Admin_productStatus extends HttpServlet {
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
			List<Item> list = daoHistory.get();
			List<String> userMailAdress = daoHistory.getUserAdmin();
			
			
			PurchaseStatusDAO daoPurchase= new PurchaseStatusDAO();
			List<Integer> idList = daoPurchase.getUserId();
//			List<Integer> productIdList = daoPurchase.getProductId();
			List<ProductUser> userDetailList = daoPurchase.getUserDetail(idList);
			
			System.out.println( "");
			System.out.println( "userDetailList " + userDetailList);
			System.out.println( "");
			
			
			
			
			//Item item = dao.find(1);
			System.out.println("Admin_productList servlet");
			System.out.println(list);
			
			request.setAttribute("list", list);
			request.setAttribute("idList", idList);
			request.setAttribute("userMailAdress", userMailAdress);
			request.setAttribute("userDetailList", userDetailList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/product_status.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
