package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FavoriteDAO;
import dao.ItemDAO;
import dao.ProductReviewDAO;
import model.Item;
import model.ProductReview;
import model.ProductUser;

/**
 * Servlet implementation class Detail
 */
@WebServlet("/Product_detail")
public class Product_detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Item item = new Item(1 , 5000, 9, "モノトーン風椅子", "背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。");
////		item.execute(item);
//		HttpSession session = request.getSession();
//		session.setAttribute("item", item);
		
		ItemDAO dao = new ItemDAO();
		
//		List<Item> list = dao.get();
		int id = Integer.parseInt(request.getParameter("id"));
		Item item = dao.find(id);
		
		ProductReviewDAO daoReview = new ProductReviewDAO();
		List<ProductReview> reviewList = daoReview.get(id);
		
		
//		request.setAttribute("list", list);
		request.setAttribute("item", item);
		request.setAttribute("reviewList", reviewList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_detail.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
		FavoriteDAO dao = new FavoriteDAO();
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		System.out.println("aaaa");
		int favoriteId = Integer.parseInt(request.getParameter("favoriteId"));
		int id = loginUser.getId();
		System.out.println("detail post userId " + id);
		
		boolean find =  dao.findFavorite(favoriteId, id);
		if (!find) {			
			dao.create(favoriteId, id);
		}
		
		
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
