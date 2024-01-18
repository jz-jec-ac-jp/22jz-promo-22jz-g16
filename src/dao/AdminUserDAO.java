package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import model.AdminUser;

public class AdminUserDAO {
	/**
	 * Usersテーブルのデータをすべて取得するメソッド
	 * @return ユーザデータ
	 */
	public List<AdminUser> get() {
		List<AdminUser> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM admin_user_table";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			// データをリストに格納
			while(rs.next()) {
				AdminUser user = rs2model(rs);
				list.add(user);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	/**
	 * テーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したデータ。なければnull
	 */
	public AdminUser find(int id) {
		AdminUser user = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM admin_user_table WHERE id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			// データをリストに格納
			if (rs.next()) {
				user = rs2model(rs);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return  user;
	}

	/**
	 * テーブルの中から、指定されたメールアドレスを持つレコードを返すメソッド
	 * @param email メールアドレス
	 * @return 発見したデータ。なければnull
	 */
	public AdminUser findByEmail(String email) {
		AdminUser user = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = " SELECT * FROM user_table WHERE mail_adress = ? ";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			System.out.println("email befor rs");
			
			// データをリストに格納
			if (rs.next()) {
				user = rs2model(rs);
				System.out.println("user.next");
			}
			else {
				System.out.println("no rs");
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("user.error " + e);
		}
		
		return  user;
	}
	
	/**
	 * DBにデータを追加する
	 * @return 成功時は追加したデータ、失敗時はnull
	 */
	public AdminUser create(String mail_adress, String us_password) {
		int ret = -1;
		System.out.println("datacreate");
		
		// 重複確認
		if (findByEmail(mail_adress) != null) {
			System.out.println("該当ユーザは既に存在しています");
			return null;
		}
		System.out.println("datacreate after find");
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// パスワードをハッシュ化
			/* ***************************** */
			String hashed = BCrypt.hashpw(us_password,BCrypt.gensalt());
			System.out.println("hashed after");
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO user_table (mail_adress, us_pasward) VALUES (?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, mail_adress);
			stmt.setString(2, hashed);
//			stmt.setString(2, us_password);
			
			ret = stmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("create error " + e);
		}
		
		if (ret >= 0) {
			return findByEmail(mail_adress);
		}
		return null;
	}
	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
	
	private AdminUser rs2model(ResultSet rs) throws SQLException {
		String mail_adress = rs.getString("mail_adress");
		String us_pasward = rs.getString("us_pasward");
		
		return new AdminUser(mail_adress, us_pasward);
	}
//	private AdminUser rs2model(ResultSet rs) throws SQLException {
//		int id = rs.getInt("id");
//		String name_kanji = rs.getString("name_kanji");
//		String name_kana = rs.getString("name_kana");
//		String mail_adress = rs.getString("mail_adress");
//		String us_pasward = rs.getString("us_pasward");
//		String us_adress = rs.getString("us_adress");
//		String tel_number = rs.getString("tel_number");
//		String us_prefectur = rs.getString("us_prefectur");
//		String street_address = rs.getString("street_address");
//		LocalDateTime create_date = rs.getTimestamp("created_at").toLocalDateTime();
//		LocalDateTime update_date = rs.getTimestamp("updated_at").toLocalDateTime();
//
//		return new AdminUser(id, name_kanji, name_kana,mail_adress, us_pasward , us_adress, tel_number, us_prefectur, street_address, create_date, update_date);
//	}
}
