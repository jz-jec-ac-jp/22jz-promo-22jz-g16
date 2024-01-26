package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductHistoryDAO;
import model.AdminUser;
import model.Item;

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
		
		if (loginUser == null) {			

			System.out.println("お気に入り画面未ログイン");
//			HttpSession session = request.getSession();
			request.setAttribute("msg", "ログインしてください");
			response.sendRedirect("Admin_login");
		}
		else {
			ProductHistoryDAO daoHistory = new ProductHistoryDAO();
			List<Item> list = daoHistory.get(loginUser.getId());
			//Item item = dao.find(1);
			System.out.println("Admin_productStatus servlet");
			System.out.println(list);
			
			request.setAttribute("list", list);
			
			
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
