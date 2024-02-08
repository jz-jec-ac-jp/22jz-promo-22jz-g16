package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddproductDAO;
import dao.ItemDAO;
import model.AdminUser;
import model.Item;

/**
 * Servlet implementation class Admin_newProduct
 */
@WebServlet("/Admin_newProduct")
public class Admin_newProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminUser loginUser = (AdminUser)request.getSession().getAttribute("loginUser");
//		HttpSession session = request.getSession();
		
		ItemDAO dao = new ItemDAO();
		List<Item> itemList = dao.get();
		request.setAttribute("itemList", itemList);
		
		
		
		
		if (loginUser == null) {			
			System.out.println("管理者 新規商品登録画面 未ログイン");
			request.setAttribute("msg", "ログインしてください");
			response.sendRedirect("Admin_login");
		}
		else if (request.getParameter("searchProductId") != null) {
			
			
//			String createEdit = request.getParameter("createEdit-box");
				
			request.setCharacterEncoding("UTF-8");
			
			
			
			String search = request.getParameter("searchProductId");
			Item item = dao.findStringAdmin(search);
			System.out.println("edit");
			
			request.setAttribute("item", item);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/new_product.jsp");
			dispatcher.forward(request, response);
		}
		else {
			Item item = null;
			request.setAttribute("item", item);
			
			request.setAttribute("itemList", itemList);
			request.setAttribute("loginTrue", "ログイン済みです");
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/admin/new_product.jsp");
			dispatcher.forward(request, response);
		}
	}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ItemDAO dao = new ItemDAO();
		List<Item> itemList = dao.get();
		request.setAttribute("itemList", itemList);
		
		request.setCharacterEncoding("UTF-8");
		AddproductDAO daoAdd = new AddproductDAO();
		
		String productName = request.getParameter("productName");
//		String productName = "testdayo";
		String productDetail = request.getParameter("productDetail");
		
		System.out.println("productDetail  " + productDetail);
		
		int productValue = Integer.parseInt(request.getParameter("productValue"));
		int productStock = Integer.parseInt(request.getParameter("productStock"));
		String productColor = request.getParameter("productColor");
		
		String productSize = request.getParameter("productSize");
		String productWeight = request.getParameter("productWeight");
		
		String category_img = request.getParameter("category_img");
		
		if (productName == "" || productDetail == "" || Integer.toString(productValue) == "" || Integer.toString(productStock) == "" || productColor == "" || productSize == "" || productWeight == "" || category_img == "") {
			if (productName == "") {
				request.setAttribute("nameNull", "名前が未入力です");
			}
			
			if (productDetail == "") {
				request.setAttribute("detailNull", "商品詳細が未入力です");
			}
			
			if (Integer.toString(productValue) == "") {
				request.setAttribute("valuelNull", "金額が未入力です");
			}
			
			if (Integer.toString(productStock) == "") {
				request.setAttribute("stocklNull", "在庫数が未入力です");
			}
			
			if (productColor == "") {
				request.setAttribute("colorNull", "カラーが未入力です");
			}
			
			if (productSize == "") {
				request.setAttribute("sizelNull", "サイズが未入力です");
			}
			
			if (productWeight == "") {
				request.setAttribute("weightNull", "大きさが未入力です");
			}
			
			if (category_img == "") {
				request.setAttribute("imgNull", "画像が未入力です");
			}
			
			request.setAttribute("productName", productName);
			request.setAttribute("productDetail", productDetail);
			request.setAttribute("productValue", productValue);
			request.setAttribute("productStock", productStock);
			request.setAttribute("productColor", productColor);
			request.setAttribute("productSize", productSize);
			request.setAttribute("productWeight", productWeight);
			request.setAttribute("category_img", category_img);
			
			request.setAttribute("imgError", "画像を選択してください");
			request.setAttribute("nameError", "商品名を選択してください");
			
		}
		else {
			
			if (request.getParameter("productDelete-box") != "") {
				int id = Integer.parseInt(request.getParameter("productIdDelete"));
				daoAdd.delete(id);
				
			}
			else if (request.getParameter("createEdit-box").equals("edit")) {
				
				int id = Integer.parseInt(request.getParameter("idProduct"));
				dao.updateProduct(id, productName, productDetail, productValue, productStock, productColor, productSize, productWeight, category_img);
				
				
			}
			else {
				
				
				request.setAttribute("itemList", itemList);
				System.out.println("admin_newProduct doPost");
				daoAdd.create(productName, productDetail, productValue, productStock, productSize, productWeight, productColor, category_img);
			}
		}
		
		
		
		
//		ShopcartDAO dao = new ShopcartDAO();
////		
//		List<Item> list = dao.get();
//		//Item item = dao.find(1);
//		
//		request.setAttribute("list", list);
		doGet(request, response);
	}

}
