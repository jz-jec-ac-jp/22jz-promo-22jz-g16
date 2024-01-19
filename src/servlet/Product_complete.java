package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String pay = request.getParameter("paymethood-box");
		System.out.println(pay);
		
		if (pay.equals("credit")) {
			System.out.println("");
			System.out.println(pay);
			System.out.println("");
			response.sendRedirect("Product_card");
			
		}
		else if(pay.equals("cash")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_complete.jsp");
			dispatcher.forward(request, response);
		}
		
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_complete.jsp");
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
	}

}
