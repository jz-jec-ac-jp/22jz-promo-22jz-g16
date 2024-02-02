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

import dao.CardDAO;
import model.ProductCard;
import model.ProductUser;

/**
 * Servlet implementation class Product_card
 */
@WebServlet("/Product_card")
public class Product_card extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		HttpSession session = request.getSession();
		
		if (loginUser == null) {
			System.out.println("カード画面未ログイン");
			response.sendRedirect("Product_login");
		}
		else {
			CardDAO daoCard = new CardDAO();
			List<ProductCard> list =  daoCard.get(loginUser.getId());
			
//			request.setAttribute("cardTrue", "cardTrue");
			System.out.println("loginId " + loginUser.getId());
			System.out.println("list " + list);
			
			request.setAttribute("list", list);
//			request.setAttribute("cardId", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_card.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		HttpSession session = request.getSession();
	
			
		CardDAO dao = new CardDAO();
		
		System.out.println("");
		System.out.println("card post");
		System.out.println("");
		
		request.setCharacterEncoding("UTF-8");
		
		int userid = loginUser.getId();
		String card_number = request.getParameter("card_number");
		String card_nominee = request.getParameter("card_nominee");
		String date_of_expiry = request.getParameter("date_of_expiry");
		String card_security_number = request.getParameter("card-security-number");
		
		dao.create(userid, card_number, card_nominee,  date_of_expiry);
		
		session.setAttribute("card_number", card_number);
		session.setAttribute("card_security_number", card_security_number);
		response.sendRedirect("Product_card_check");
	
	}

}
