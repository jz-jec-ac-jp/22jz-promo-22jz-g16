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

import dao.FavoriteDAO;
import dao.ShopcartDAO;
import dao.UserDAO;
import model.Item;
import model.ProductUser;

/**
 * Servlet implementation class Product_favorite
 */
@WebServlet("/Product_favorite")
public class Product_favorite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		FavoriteDAO dao = new FavoriteDAO();
//		
//		List<Item> list = dao.get();
//		//Item item = dao.find(1);
//		
//		request.setAttribute("list", list);
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
		
		if (loginUser == null) {			

			System.out.println("お気に入り画面未ログイン");
			HttpSession session = request.getSession();
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
			FavoriteDAO dao = new FavoriteDAO();
			
			
			List<Item> list = dao.get(loginUser.getId());
			List<Integer> itemId = dao.findProductId(loginUser.getId());
			
			for (int i = 0; i < itemId.size(); i++) {
				
			}
			
			//Item item = dao.find(1);
			
			request.setAttribute("list", list);
			
			System.out.println("true  " + list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_favorite.jsp");
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
		
//		request.setCharacterEncoding("UTF-8");
		ShopcartDAO daoShopCart = new ShopcartDAO();
		
		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		System.out.println("aaaa");
		int id = loginUser.getId();
		int productId = Integer.parseInt(request.getParameter("id"));
		
		System.out.println("favorite doPost------------------");
		
		daoShopCart.create(productId, id);
		
		
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
