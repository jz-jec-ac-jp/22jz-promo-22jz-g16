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

import dao.ProductHistoryDAO;
import dao.PurchaseStatusDAO;
import model.Item;
import model.ProductUser;

/**
 * Servlet implementation class Product_history
 */
@WebServlet("/Product_history")
public class Product_history extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductHistoryDAO dao = new ProductHistoryDAO();
		
		
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		
		HttpSession session = request.getSession();
		if (loginUser == null) {			

			System.out.println("購入履歴画面未ログイン");
			session.setAttribute("msg", "ログインしてください");
			response.sendRedirect("Product_login");
		}
		else {
			List<Item> list = dao.get(loginUser.getId());
			PurchaseStatusDAO daoPurchase= new PurchaseStatusDAO();
			List<Integer> idList = daoPurchase.getUserId(loginUser.getId());
			List<String> date = daoPurchase.getUserDate(idList);
//			List<String> date = dao.find(idList);
			//Item item = dao.find(1);
			
			
			
			List<String> userStatus = daoPurchase.findProductStatus(loginUser.getId());
			
			
//			<!-- 変更したよーーーーーーーーーーーーーーーー -->
			for (String status : userStatus) {				
				if (status.equals("準備中")) {
					request.setAttribute("wait", "準備中");
				}
				else if (status.equals("完了")) {
					request.setAttribute("comp", "出荷中");
				}
			}
			
			
			
			request.setAttribute("list", list);
			request.setAttribute("date", date);
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_history.jsp");
			dispatcher.forward(request, response);
		}		
		
		
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
