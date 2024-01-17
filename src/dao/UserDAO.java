package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import model.ProductUser;

public class UserDAO {
	/**
	 * Usersテーブルのデータをすべて取得するメソッド
	 * @return ユーザデータ
	 */
	public List<ProductUser> get() {
		List<ProductUser> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM users_table";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			// データをリストに格納
			while(rs.next()) {
				ProductUser user = rs2model(rs);
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
	public ProductUser find(int id) {
		ProductUser user = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM user_table WHERE id = ?";
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
	public ProductUser findByEmail(String email) {
		ProductUser user = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM users_table WHERE email = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, email);
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
	 * DBにデータを追加する
	 * @return 成功時は追加したデータ、失敗時はnull
	 */
	public ProductUser create(String mail_adress, String us_password) {
		int ret = -1;
		
		// 重複確認
		if (findByEmail(mail_adress) != null) {
			System.out.println("該当ユーザは既に存在しています");
			return null;
		}
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// パスワードをハッシュ化
			/* ***************************** */
			String hashed = BCrypt.hashpw(us_password,BCrypt.gensalt());
			
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO users (email, password) VALUES (?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, mail_adress);
			stmt.setString(2, hashed);
			
			ret = stmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
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
	private ProductUser rs2model(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		String name_kanji = rs.getString("name_kanji");
		String name_kana = rs.getString("name_kana");
		String mail_adress = rs.getString("mail_adress");
		String us_pasward = rs.getString("us_pasward");
		String us_adress = rs.getString("us_adress");
		String tel_number = rs.getString("tel_number");
		String us_prefectur = rs.getString("us_prefectur");
		String street_address = rs.getString("street_address");
		LocalDateTime create_date = rs.getTimestamp("created_at").toLocalDateTime();
		LocalDateTime update_date = rs.getTimestamp("updated_at").toLocalDateTime();

		return new ProductUser(id, name_kanji, name_kana,mail_adress, us_pasward , us_adress, tel_number, us_prefectur, street_address, create_date, update_date);
	}
}
