package logic;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import dao.UserDAO;
import model.ProductUser;

/**
 * ログイン・ログアウト処理を行うクラス
 * @author d.sugawara
 *
 */
public class AuthLogic {
	/**
	 * ログイン処理を行う
	 * @param email
	 * @param password
	 * @return 成功時はログインしたユーザ、失敗時はnull
	 */
	public ProductUser login(String mail_adrres, String us_password) {
		UserDAO dao = new UserDAO();
		ProductUser user = dao.findByEmail(mail_adrres);
		
		System.out.println("login authlogic " + user + "mailAdress " + mail_adrres);
		if ((user != null) && (BCrypt.checkpw(us_password, user.getUs_pasward()))) {
			return user;
		}		
//		return user;
		return null;
	}
	
	
	/**
	 * ログアウト処理を行う
	 * @return なし
	 */
	public void logout(HttpSession session) {
		if (isLoggedIn(session)) {
			session.removeAttribute("loginUser");
		}
	}
	
	/**
	 * ログイン状態を確認する
	 * @param session
	 * @return ログインしていれば true、していなければ false
	 */
	public boolean isLoggedIn(HttpSession session) {
		return session.getAttribute("loginUser") != null;
	}
}
