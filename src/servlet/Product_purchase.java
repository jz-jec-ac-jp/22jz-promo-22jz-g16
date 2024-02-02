package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShopcartDAO;
import dao.UserDAO;
import model.Item;
import model.ProductUser;

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
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		
		if (loginUser == null) {			

			System.out.println("商品購入画面未ログイン");
			
			response.sendRedirect("Product_login");
		}
		else {
			UserDAO daoUser = new UserDAO();
			daoUser.findByEmail(loginUser.getMail_adress());
			System.out.println("");
			System.out.println("user_mailadress " + loginUser.getMail_adress());
			System.out.println("user_id " + loginUser.getId());
//		
			ShopcartDAO dao = new ShopcartDAO();
			
			List<Item> list = dao.get(loginUser.getId());
			List<Integer> productCount = dao.ProductCount();
			//Item item = dao.find(1);
			
			request.setAttribute("productCount", productCount);
			request.setAttribute("list", list);
			
			System.out.println("true  " + list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_purchase.jsp");
			dispatcher.forward(request, response);
			
		}
		

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
