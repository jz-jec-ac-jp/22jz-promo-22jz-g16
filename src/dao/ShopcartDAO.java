package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.ProductColor;
import model.ProductPurchase;

public class ShopcartDAO {
	/**
	 * カートテーブルのデータをすべて取得するメソッド
	 * @return カートデータ
	 * String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM shopcart_table s INNER JOIN item_table i ON s.product_id = i.id";
	 */
	public List<Item> get(int userId) {
		List<Item> list = new ArrayList<>();
		String sql = "SELECT s.product_count, i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM shopcart_table s INNER JOIN item_table i ON s.product_id = i.id where user_id = ?";
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				setColor(item);
				setCount(item);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getColorTexts());
				System.out.println("true_Name()  " + item.getProduct_count());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
	}
	public void setColor(Item item) {
		ColorDAO dao = new ColorDAO();
		List<ProductColor> color = dao.find(item.getId());
		item.setColorTexts(color);
	}
	public void setCount(Item item) {
		PrdocutPurchaseDAO dao = new PrdocutPurchaseDAO();
		List<ProductPurchase> count = dao.find(item.getId());
		item.setProduct_count(count);
	}
	
	/**
	 * カートテーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したカートデータ。なければnull
	 */
	public Item find(int id) {
		Item cart = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM shopcart_table WHERE id = ?";
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
	
	public boolean create(int product_id, int user_id ) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO shopcart_table (product_id, user_id) VALUES (?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, product_id);
			stmt.setInt(2, user_id);
			
			System.out.println("shopcart create-----------------");
			
			ret = stmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
	}
	
	public boolean delete(int userId) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "DELETE FROM shopcart_table where user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			ret = stmt.executeUpdate();
			System.out.println("shopCart delete");
			
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
	
	private  Item rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
		String product_name = rs.getString("product_name");
		String product_detail = rs.getString("product_detail");
		int product_price = rs.getInt("product_price");
		int product_stock = rs.getInt("product_stock");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new Item(id, product_name, product_detail, product_price, product_stock, create_date, update_date);
	}

}
