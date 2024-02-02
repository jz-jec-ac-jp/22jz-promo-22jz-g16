package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import model.ProductReview;

public class ProductReviewDAO {

	/**
	 * カートテーブルのデータをすべて取得するメソッド
	 * @return カートデータ
	 * String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM shopcart_table s INNER JOIN item_table i ON s.product_id = i.id";
	 */
	public ProductReview get(int id) {
		ProductReview review = null;
		String sql = "SELECT * FROM review_table WHERE product_id = ?";
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				review = rs2model(rs);
//				list.add( review);
			
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return review;
	}
//	public void setColor(Item item) {
//		ColorDAO dao = new ColorDAO();
//		List<ProductColor> color = dao.find(item.getId());
//		item.setColorTexts(color);
//	}
	
	/**
	 * カートテーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したカートデータ。なければnull
	 */
//	public Item find(int id) {
//		Item cart = null;
//		DBManager manager = DBManager.getInstance();
//		try(Connection cn = manager.getConnection()) {
//			// プレースホルダで変数部分を定義
//			String sql = "SELECT * FROM shopcart_table WHERE id = ?";
//			PreparedStatement stmt = cn.prepareStatement(sql);
//			stmt.setInt(1, id);
//			ResultSet rs = stmt.executeQuery();
//			
//			// データをリストに格納
//			if (rs.next()) {
//				cart = rs2model(rs);
////				setLicenses(cart);
//			}
//		} catch(SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return  cart;
//	}
	
	public boolean create(int product_id, int user_id, int review_rating,
			String review_text, String review_title ) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO review_table (product_id, user_id, review_title, review_text, review_rating, create_date,  update_date) VALUES (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, product_id);
			stmt.setInt(2, user_id);
			stmt.setString(3,  review_title);
			stmt.setString(4,  review_text);
//			stmt.setString(4,  pictur_movieUrl);
			stmt.setInt(5,  review_rating);
			stmt.setTimestamp(6, Timestamp.valueOf(LocalDateTime.now()));
	        stmt.setTimestamp(7, Timestamp.valueOf(LocalDateTime.now()));
			
			ret = stmt.executeUpdate();
			System.out.println("review insert");
			System.out.println("text " + review_text);
			System.out.println("");
			
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
//	private ProductShopcart rs2model(ResultSet rs) throws SQLException {
//		int id = rs.getInt("id");
//		int product_id = rs.getInt("product_id");
//		int user_id = rs.getInt("user_id");
//		Timestamp create_date = rs.getTimestamp("create_date");
//		Timestamp update_date = rs.getTimestamp("update_date");
//		
//		
//		return new ProductShopcart(id, product_id, user_id, create_date, update_date);
//		
	
//	}
	
	private  ProductReview rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
		int product_id = rs.getInt("product_id");
		int user_id = rs.getInt("user_id");
		String review_text = rs.getString("review_text");
		int review_rating = rs.getInt("review_rating");
		String review_title = rs.getString("review_title");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new ProductReview(id, product_id, user_id, review_rating,
				review_text, review_title, create_date, update_date);
	}

	
}
