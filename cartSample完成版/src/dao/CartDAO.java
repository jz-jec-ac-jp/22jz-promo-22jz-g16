package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cart;

/**
 * カート用DAO
 * @author d.sugawara
 *
 */
public class CartDAO {
	
	/**
	 * カートテーブルのデータをすべて取得するメソッド
	 * @return カートデータ
	 */
	public List<Cart> get() {
		List<Cart> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM carts";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Cart cart = rs2model(rs);
//				setLicenses(cart);
				list.add(cart);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * カートテーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したカートデータ。なければnull
	 */
	public Cart find(int id) {
		Cart cart = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM carts WHERE id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				cart = rs2model(rs);
//				setLicenses(cart);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return  cart;
	}
	
	public boolean create(Cart cart) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO carts (item_id, user_id) VALUES (?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, cart.getItemId());
			stmt.setInt(2, cart.getUserId());
			
			ret = stmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
	}
	
//	/**
//	 * カートデータに紐づくライセンス情報を検索して追加
//	 * @param cart 追加対象のカートデータ
//	 */
//	private void setLicenses(Cart cart) {
//		CartDAO licDao = new CartDAO();
//		List<License> licenses = licDao.getLicenseByCartId(cart.getId());
//		cart.setLicenses(licenses);
//	}
//	
//	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
	private Cart rs2model(ResultSet rs) throws SQLException {
		int id = rs.getInt("id");
		int itemId = rs.getInt("item_id");
		int userId = rs.getInt("user_id");

		return new Cart(id, itemId, userId);
		
	}
}
