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
import dao.PurchaseStatusDAO;
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
		
		ProductHistoryDAO daoHistory = new ProductHistoryDAO();
		
		List<Item> list = daoHistory.get();
		//Item item = dao.find(1);
		System.out.println("Admin_productList servlet");
		System.out.println(list);
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/product_list.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("");
		System.out.println("admin_doPost");
		boolean preparation = request.getParameter("preparation") != null;
		boolean completion = request.getParameter("completion") != null;
		
		PurchaseStatusDAO dao = new PurchaseStatusDAO();
		
		if (preparation) {
			dao.find("準備中");
		}
		else if (completion) {
			dao.find("完了");
		}
		
		System.out.println("");
		
		doGet(request, response);
	}

}
