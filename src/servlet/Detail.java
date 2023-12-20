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
 * Servlet implementation class Detail
 */
@WebServlet("/Detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Item item = new Item(1 , 5000, 9, "モノトーン風椅子", "背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。");
////		item.execute(item);
//		HttpSession session = request.getSession();
//		session.setAttribute("item", item);
		
		ItemDAO dao = new ItemDAO();
		
		List<Item> list = dao.get();
		
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/puroduct_detail.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
