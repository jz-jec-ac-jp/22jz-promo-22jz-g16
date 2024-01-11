package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDAO;
import model.Item;

/**
 * Servlet implementation class Product_review
 */
@WebServlet("/Product_review")
public class Product_review extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ItemDAO dao = new ItemDAO();
		
//		List<Item> list = dao.get();
		//int id = Integer.parseInt(request.getParameter("id"));
		Item item = dao.find(1);
		
		
//		request.setAttribute("list", list);
		request.setAttribute("item", item);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_review.jsp");
		dispatcher.forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
