package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDAO;
import dao.ShopcartDAO;

/**
 * Servlet implementation class Product_shopcart
 */
@WebServlet("/Product_shopcart")
public class Product_shopcart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		ItemDAO dao = new ItemDAO();
		
//		List<Item> list = dao.get();
		//Item item = dao.find(1);
		
		
		//request.setAttribute("item", item);
		
		ShopcartDAO dao_shop = new ShopcartDAO();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean shopcart =  dao_shop.create(id, 1);
		request.setAttribute("shopcart", shopcart);
		
		ItemDAO dao = new ItemDAO();
		

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_shopcart.jsp");
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
