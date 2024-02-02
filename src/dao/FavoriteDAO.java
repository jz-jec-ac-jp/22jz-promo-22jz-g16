package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.ProductColor;
import model.ProductSize;

public class FavoriteDAO {
	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	public List<Item> get(int userId) {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = " SELECT  i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM favorit_table INNER JOIN item_table i ON favorit_table.product_id = i.id where user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			
			
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				setColor(item);
				setSize(item);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
				System.out.println("true_size()  " + item.getSize_name());
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
	public void setSize(Item item) {
		SizeDAO dao = new SizeDAO();
		List<ProductSize> size = dao.find(item.getId());
		item.setSize_name(size);
	}
	/**
	 * テーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したデータ。なければnull
	 */
	public  Item find(int id) {
		 Item  item = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM item_table where id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				 item = rs2model(rs);
				 
				 
				 System.out.println("true_find  " + item);
				 System.out.println("true_get()  " + item.getId());
				 System.out.println("true_Name()  " + item.getProduct_name());
				 System.out.println("true_size()  " + item.getSize_name());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   item;
	}
	
	
	public boolean create(int favotiteId, int userId) {
	    int ret = -1;
	    
//	    // ①データの存在確認
//	    LicenseDAO licDAO = new LicenseDAO();
//	    if (licDAO.find(license_id) == null) {
//	        System.out.println("購入履歴追加失敗。ライセンスが見つかりませんでした");
//	        return false;
//	    }
//	    UserDAO userDAO = new UserDAO();
//	    if (userDAO.find(user_id) == null) {
//	        System.out.println("購入履歴追加失敗。ユーザが見つかりませんでした");
//	        return false;
//	    }
	    
	    // ②DBにデータを追加
	    DBManager manager = DBManager.getInstance();
	    try(Connection cn = manager.getConnection()) {
	        // プレースホルダで変数部分を定義
	        String sql = "INSERT INTO favorit_table (product_id, user_id, create_date, update_date) VALUES (?, ?, ?, ?)";
	        PreparedStatement stmt = cn.prepareStatement(sql);
	        stmt.setInt(1, favotiteId);
	        stmt.setInt(2, userId);
	        stmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
	        stmt.setTimestamp(4, Timestamp.valueOf(LocalDateTime.now()));
	        
	        ret = stmt.executeUpdate();
	        System.out.println(ret);
	        
			 System.out.println("true_find  " );
			 System.out.println("true_get()  ");
			 System.out.println("true_Name()  ");
	        
	    } catch(SQLException e) {
	        e.printStackTrace();
	        System.out.println("データ追加エラー " + e);
	    }

	    
	    return ret >= 0;
	    
	}

	  /**
	   * ビデオデータに紐づくライセンス情報を検索して追加
	   * @param  item 追加対象のビデオデータ
	   */
//	  private void setLicenses( Item  item) {
	    /* ライセンスDAOのインスタンスを作成し、 item に紐づくライセンス情報を取得 */
//		  LicenseDAO dao = new LicenseDAO();
//		  List<License>licenses = dao.getLicenseBy ItemId( item.getId());
	                            
	                                      
	    /* 取得したライセンス情報を  item にセット */
//	     item.setLicenses(licenses);
//	  }

	public List<Integer> findProductId(int user_id) {
//		List<ProductCard> list = new ArrayList<>();
			List<Integer> product_id =  new ArrayList<>();;
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT i.product_id FROM favorit_table p INNER JOIN shopcart_table i ON p.product_id = i.product_id where i.user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, user_id);
			ResultSet rs = stmt.executeQuery();
			
//			rs.next();
			
			// データをリストに格納
			while(rs.next()) {
//				ProductCard card = rs2model(rs);
				int id = rs.getInt("id");
//			card = ((ProductCard) rs).getId();
//				int cardId = card.getId();
				product_id.add(id);
				
//				System.out.println("true_get " +  list.add(item));
//				System.out.println("true_get()  " + card.getId());
			
//				return card;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
//		return list;

		return product_id;
	}


	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
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
