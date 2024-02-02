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

import dao.ShopcartDAO;
import dao.UserDAO;
import model.Item;
import model.ProductUser;

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
		
//		ShopcartDAO dao_shop = new ShopcartDAO();
//		
//		int id = Integer.parseInt(request.getParameter("id"));
//		
//		dao_shop.create(id, 1);
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		
		HttpSession session = request.getSession();
		if (loginUser == null) {			

			System.out.println("ショップカート画面未ログイン");
			session.setAttribute("msg", "ログインしてください");
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
			List<Integer> productCount = dao. ProductCount();

			//Item item = dao.find(1);
			request.setAttribute("productCount", productCount);
			
			request.setAttribute("list", list);
			session.setAttribute("shopCartList", list);
			
			System.out.println("true  " + list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_shopcart.jsp");
			dispatcher.forward(request, response);
			
		}
		
		// 実際には、ここでDAO使って商品情報を取得
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// カートに入れる処理
		
				// 商品ID、ユーザIDを取得
				// できるならちゃんとエラーチェック
//				ItemDAO itemDAO = new ItemDAO();
//				if (itemDAO.find(ph.getLicense().getId()) == null) {
//					request.("message", "商品の追加に失敗しました。対象の商品が見つかりません。");
//					doGet(setAttributerequest, response);
//					return;
//				}
		ShopcartDAO dao = new ShopcartDAO();

				ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
				
				if (loginUser == null) {			

					System.out.println("ショップカート画面未ログイン");
					
					
					response.sendRedirect("Product_login");
				}

				else {
					if(request.getParameter("mode") != null) {
						//数量変更する
						int tempcount = Integer.parseInt(request.getParameter("count"));
						int id =Integer.parseInt( request.getParameter("id"));
						ShopcartDAO shopcartdao = new ShopcartDAO();
						System.out.println("countは"+tempcount);
						System.out.println("idは"+id);
						shopcartdao.update(id, tempcount);
						
					} else if (request.getParameter("productId") != null) {
						int productId = Integer.parseInt(request.getParameter("productId"));
						dao.productDelete(loginUser.getId(), productId);
						
					}
					else {
						int Product_id = Integer.parseInt(request.getParameter("shopCart"));
						int userId = loginUser.getId();		// ログイン実装してないのでユーザは1番固定
		//				int userId = (User)(request.getSession().getAttribute("user")).getId();
						System.out.println("shopCart post");
						
						// CartDAOを用意してDBに登録
						
						dao.create(Product_id, userId);
						
						
						
						System.out.println("");
						System.out.println("shopCartId = " + Product_id);
						System.out.println("");
						
						// リクエストスコープにメッセージを保存
						request.setAttribute("message", "カートに商品を追加しました。");
						
					}
					

					
					// 自分を再表示
					doGet(request, response);
				
					
				}
			}

	}
