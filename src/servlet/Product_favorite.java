package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FavoriteDAO;
import dao.ShopcartDAO;
import model.Item;

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
		FavoriteDAO dao = new FavoriteDAO();
		
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
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_favorite.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
		ShopcartDAO dao = new ShopcartDAO();
		
		int productId=Integer.parseInt(request.getParameter("id"));
		
		dao.create(productId, 1);
		
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
