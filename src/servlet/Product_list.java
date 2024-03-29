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
 * Servlet implementation class Product_list
 */
@WebServlet("/Product_list")
public class Product_list extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_list.jsp");
		dispatcher.forward(request, response);
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		
		ItemDAO dao = new ItemDAO();
		
		String search = request.getParameter("search");
		List<Item> list = dao.findString(search);
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/product_list.jsp");
		dispatcher.forward(request, response);
		
		System.out.println("");
		System.out.println("list post");
		System.out.println(list);
		System.out.println(search);
		System.out.println("");
	}

}
