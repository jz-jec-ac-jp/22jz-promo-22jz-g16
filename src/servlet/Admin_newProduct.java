package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddproductDAO;

/**
 * Servlet implementation class Admin_newProduct
 */
@WebServlet("/Admin_newProduct")
public class Admin_newProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/new_product.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		AddproductDAO daoAdd = new AddproductDAO();
		
		String productName = request.getParameter("productName");
//		String productName = "testdayo";
		String productDetail = request.getParameter("productDetail");
		int productValue = Integer.parseInt(request.getParameter("productValue"));
		int productStock = Integer.parseInt(request.getParameter("productStock"));
		
		System.out.println("admin_newProduct doPost");
		daoAdd.create(productName, productDetail, productValue, productStock);
		
//		ShopcartDAO dao = new ShopcartDAO();
////		
//		List<Item> list = dao.get();
//		//Item item = dao.find(1);
//		
//		request.setAttribute("list", list);
		doGet(request, response);
	}

}
