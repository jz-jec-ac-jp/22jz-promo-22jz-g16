package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ItemDAO;
import model.Item;

/**
 * Servlet implementation class Product_purchase
 */
@WebServlet("/Product_purchase")
public class Product_purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ItemDAO dao = new ItemDAO();
		List<Item> list = dao.get();
		//Item item = dao.find(1);
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_purchase.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated menthod stub
		
				System.out.println("purchase_dopost");
				
				
				
				
				
//				if ( != null) {
//					//完了ページへリダイレクト
//					HttpSession session = request.getSession();
//					session.setAttribute("loginUser", );
//					response.sendRedirect("Product_top");
//				}
//				else if() {
//					//カード画面へリダイレクト
//					HttpSession session = request.getSession();
//					session.setAttribute("loginUser", );
//					response.sendRedirect("Product_card");
//				}
//				else {
//					// エラー時はエラーメッセージを追加し自分へ戻る
//					request.setAttribute("msg", "支払方法をお選びください");
//					doGet(request, response);
//				} 
				
//				doGet(request, response);
	}

}
