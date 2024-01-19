package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dao.ItemDAO;
import model.Cart;
import model.Item;

/**
 * Servlet implementation class ItemDetail
 */
@WebServlet("/ItemDetail")
public class ItemDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 実際には、ここでDAO使って商品情報を取得
		ItemDAO dao = new ItemDAO();
		
		List<Item> list = dao.get();
		//Item item = dao.find(1);
		
		request.setAttribute("list", list);
		
		//request.setAttribute("item", item);
		
//		PrintWriter out = response.getWriter();
//		String sql = "SELECT * FROM item_table";
//		Connection cn = DriverManager.getConnection(CN_STRING)
//		PreparedStatement stmt = cn.prepareStatment;
//		ResultSet rs = stmt = cn.propere
		
//		out.println("<div class=\"a\">");
//		while
//		
//		while()		
		// フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/itemDetail.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// カートに入れる処理
		
		// 商品ID、ユーザIDを取得
		// できるならちゃんとエラーチェック
//		ItemDAO itemDAO = new ItemDAO();
//		if (itemDAO.find(ph.getLicense().getId()) == null) {
//			request.setAttribute("message", "商品の追加に失敗しました。対象の商品が見つかりません。");
//			doGet(request, response);
//			return;
//		}
		
		int itemId = Integer.parseInt(request.getParameter("item-id"));
		int userId = 1;		// ログイン実装してないのでユーザは1番固定
//		int userId = (User)(request.getSession().getAttribute("user")).getId();
		
		// CartDAOを用意してDBに登録
		CartDAO dao = new CartDAO();
		dao.create(new Cart(0, itemId, userId));
		
		// リクエストスコープにメッセージを保存
		request.setAttribute("message", "カートに商品を追加しました。");
		
		// 自分を再表示
		doGet(request, response);
	}

}
