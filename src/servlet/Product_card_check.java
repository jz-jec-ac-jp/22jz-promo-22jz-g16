package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CardDAO;
import model.ProductCard;

/**
 * Servlet implementation class Product_card_check
 */
@WebServlet("/Product_card_check")
public class Product_card_check extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CardDAO dao = new CardDAO();
		HttpSession session = request.getSession();
//		HttpSession session = request.getSession();
		
//		int card_number = Integer.parseInt(request.getParameter("card_number"));
		
//		session.setAttribute("card_number", card_number);
		String cardNumber =  (String) session.getAttribute("card_number");
		
		System.out.println("card_check  cardNumber" + cardNumber);
		
		String cardNum = request.getParameter("card_number");
		
		if (cardNum != null) {
			request.setAttribute("card_number", cardNum);
		}
		
		System.out.println("card_check  cardNum" + cardNum);
		
		ProductCard cardCheckNum =  dao.getCard(cardNum);
		ProductCard cardCheck =  dao.getCard(cardNumber);
		
		
		request.setAttribute("cardCheckNum", cardCheckNum);
		request.setAttribute("cardCheck", cardCheck);
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/productCardCheck.jsp");
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
