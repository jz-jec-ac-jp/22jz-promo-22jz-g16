package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDAO;
import dao.ProductReviewDAO;
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
		
//<<<<<<< HEAD
		ItemDAO dao = new ItemDAO();
		
//		List<Item> list = dao.get();
		int id = Integer.parseInt(request.getParameter("id"));
		Item item = dao.find(id);
		
		
//		request.setAttribute("list", list);
		request.setAttribute("item", item);
//=======
//		ItemDAO dao = new ItemDAO();
//		
////		List<Item> list = dao.get();
//		int id = Integer.parseInt(request.getParameter("id"));                                                                                                                                                                                                                                                                                                                                                                                                    
//		Item item = dao.find(1);
//		
//		
////		request.setAttribute("list", list);
//		request.setAttribute("item", item);
//>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_review.jsp");
		dispatcher.forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		ProductReviewDAO dao = new ProductReviewDAO();
		
		System.out.println("");
		System.out.println("review post");
		System.out.println("");
		
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		System.out.println(product_id);
		int user_id = 61;
//		int review_rating = Integer.parseInt(request.getParameter("review_rating"));
//		String pictur_movieUrl = request.getParameter("pictur_movieUrl");
		String review_text = request.getParameter("review-text");
		String review_title = request.getParameter("review-title");
		
		dao.create(product_id, user_id, review_text, review_title);
		
		doGet(request, response);
	}

}
