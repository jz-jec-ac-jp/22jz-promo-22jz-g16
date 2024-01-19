package servlet;

import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.ItemDAO;
import dao.ProductReviewDAO;
import model.Item;
/**
 * Servlet implementation class Product_review
 */
@WebServlet("/Product_review")
public class Product_review extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//<<<<<<< HEAD
		ItemDAO dao = new ItemDAO();
		
//		List<Item> list = dao.get();
		int id = Integer.parseInt(request.getParameter("id"));
		Item item = dao.find(id);
		
		
//		request.setAttribute("list", list);
		request.setAttribute("item", item);
//=======
//		ItemDAO dao = new ItemDAO();
//		
////		List<Item> list = dao.get();
//		int id = Integer.parseInt(request.getParameter("id"));                                                                                                                                                                                                                                                                                                                                                                                                    
//		Item item = dao.find(1);
//		
//		
////		request.setAttribute("list", list);
//		request.setAttribute("item", item);
//>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/purchase_review.jsp");
		dispatcher.forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		ProductReviewDAO dao = new ProductReviewDAO();
		
		System.out.println("");
		System.out.println("review post");
		System.out.println("");
		
		//name属性がpictのファイルをPartオブジェクトとして取得
		Part part=request.getPart("img");
		//ファイル名を取得
		//String filename=part.getSubmittedFileName();//ie対応が不要な場合
		String filename=Paths.get(part.getSubmittedFileName()).getFileName().toString();
		//アップロードするフォルダ
//		String path=getServletContext().getRealPath("asssets/mg");
		//実際にファイルが保存されるパス確認
		System.out.println(filename);
//		request.setAttribute("filename", filename);
		
//		ProductUser loginUser = (ProductUser)request.getSession().getAttribute("loginUser");
//		
//		int product_id = Integer.parseInt(request.getParameter("product_id"));
//		int user_id = loginUser.getId();		
//		int review_rating =  Integer.parseInt(request.getParameter("review_rating"));
//		String pictur_movieUrl = request.getParameter("pictur_movieUrl");
//		String review_text = request.getParameter("review_text");
//		String review_title = request.getParameter("review_title");
//		
//		dao.create(product_id, user_id, review_rating, pictur_movieUrl,  review_text, review_title);
		
		doGet(request, response);
	}

}
