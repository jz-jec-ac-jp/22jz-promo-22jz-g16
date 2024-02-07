package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.ProductUser;

/**
 * Servlet implementation class New_account
 */
@WebServlet("/New_account")
public class New_account extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/user/new_account.jsp");
		dispatcher.forward(request, response);
	
		System.out.println("new_account get");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ユーザを新規登録
		request.setCharacterEncoding("UTF-8");
		System.out.println("new_account post");
				UserDAO dao = new UserDAO();
				
				String name_kanji = request.getParameter("name_kanji");
				String name_kana = request.getParameter("name_kana");
				String mail_adress = request.getParameter("mail_adress");
				String us_pasward = request.getParameter("us_pasward");
				String us_adress = request.getParameter("us_adress");
				int tel_number = Integer.parseInt(request.getParameter("telNumber"));
				String us_prefectur = request.getParameter("us_prefectur");
				String street_address = request.getParameter("street_address");
				
				System.out.println(name_kanji + name_kana + mail_adress + us_pasward + us_adress + tel_number + us_prefectur + street_address);
				
				ProductUser user = dao.create(name_kanji, name_kana, mail_adress, us_pasward,
						us_adress, tel_number, us_prefectur, street_address);
				

				
				System.out.println("");
				System.out.println("user " + user);
				System.out.println("usercreate");
				if (user != null) {
					// ログインしてトップページ（今回はVoD一覧）へリダイレクト
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", user);
					response.sendRedirect("Product_top");
				} else {
					// エラー時はエラーメッセージを追加し自分へ戻る
					request.setAttribute("msg", "ユーザの追加に失敗しました");
					doGet(request, response);
				}
	}

}
