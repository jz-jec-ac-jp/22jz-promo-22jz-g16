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
import dao.ProductHistoryDAO;
import dao.ShopcartDAO;
import model.Item;
import model.ProductUser;

/**
 * Servlet implementation class Product_complete
 */
@WebServlet("/Product_complete")
public class Product_complete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String pay = request.getParameter("paymethood-box");
//		System.out.println(pay);
//		
//		if (pay.equals("credit")) {
//			System.out.println("");
//			System.out.println(pay);
//			System.out.println("");
//			response.sendRedirect("Product_card");
//			
//		}
//		else if(pay.equals("cash")){
//			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_complete.jsp");
//			dispatcher.forward(request, response);
//		}
		
		// String sql = "INSERT INTO history_table (user_id, pay_mothod, purchase_date, card_id, delivery_status) VALUES (?, ?, ?, ?, ?)";
		
//		HttpSession session = request.getSession();
//		session.setAttribute("pay", pay);
//		
//		System.out.println(pay);
		
		CardDAO daoCard = new CardDAO();
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		HttpSession session = request.getSession();
		
		ShopcartDAO dao = new ShopcartDAO();
		List<Item> shopCartList = dao.get(loginUser.getId());
		
//		System.out.println("shopCartList " + shopCartList);
		
		String cardNumber = (String) session.getAttribute("card_number");
		int user_id = loginUser.getId();
		String payMethod =  (String) request.getSession().getAttribute("pay");
		System.out.println("payMethod " +  payMethod);		
		int cardId =  daoCard.findCardId(cardNumber);
		System.out.println("complete cardId  " + cardId);
		String delivery_status = "準備中";
//		
		ProductHistoryDAO daoHistory = new ProductHistoryDAO();
		daoHistory.create(user_id, payMethod, cardId, delivery_status, shopCartList);
		
//		
		ShopcartDAO daoShopcart = new ShopcartDAO();
		
//		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		int userId = loginUser.getId();
		daoShopcart.delete(userId);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_complete.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pay = request.getParameter("paymethood-box");
		HttpSession session = request.getSession();
		session.setAttribute("pay", pay);
		
		System.out.println(pay);
		
//		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		
//		CardDAO daoCard = new CardDAO();
//		
////		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
////		HttpSession session = request.getSession();
//		
//		String cardNumber = (String) session.getAttribute("card_number");
//		
//		int user_id = loginUser.getId();
//		String payMethod =  (String) request.getSession().getAttribute("pay");
//		System.out.println("payMethod " +  payMethod);		
//		int cardId =  daoCard.findCardId(cardNumber);
//		System.out.println("complete cardId  " + cardId);
//		String delivery_status = "準備中";
////		
//		ProductHistoryDAO daoHistory = new ProductHistoryDAO();
//		daoHistory.create(user_id, payMethod, cardId, delivery_status);
//		
////		
//		ShopcartDAO daoShopcart = new ShopcartDAO();
//		
////		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		int userId = loginUser.getId();
//		daoShopcart.delete(userId);
		
		if (pay.equals("credit")) {
			System.out.println("");
			System.out.println(pay);
			System.out.println("");
			response.sendRedirect("Product_card");
			
		}
		else if(pay.equals("cash")){
			session.setAttribute("card_number", "1");
			response.sendRedirect("Product_complete");
		}
		else if (pay.equals("")) {
			response.sendRedirect("Product_purchase");
		}
		
	}

}
