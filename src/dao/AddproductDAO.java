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

public class AddproductDAO {
	
	/**
	* DBにデータを追加する
	* @return 成功/失敗
	*/
	
	
	public boolean create(String product_name, String product_detail, int product_price, int product_stock, String productSize, String productWeight) {
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
	        String sql = "INSERT INTO item_table (product_name, product_detail, product_price, product_stock, create_date, update_date) VALUES (?, ?, ?, ?, ?, ?)";
	        PreparedStatement stmt = cn.prepareStatement(sql);
	        stmt.setString(1, product_name);
	        stmt.setString(2, product_detail);
	        stmt.setInt(3, product_price);
	        stmt.setInt(4, product_stock);
	        stmt.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
	        stmt.setTimestamp(6, Timestamp.valueOf(LocalDateTime.now()));
	        ret = stmt.executeUpdate();
	        
	        
	        String sqlSize = "INSERT INTO size_table (product_id, size_name, create_date, update_date) VALUES ((SELECT MAX(id) from item_table), ?, ?, ?)";
	        PreparedStatement stmtSize = cn.prepareStatement(sqlSize);
	        stmtSize.setString(1, productSize);
	        stmtSize.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
	        stmtSize.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
	        ret = stmtSize.executeUpdate();	        
	        
	        String sqlWeight = "INSERT INTO weight_table (product_id, size_name, create_date, update_date) VALUES ((SELECT MAX(id) from item_table), ?, ?, ?)";
	        PreparedStatement stmtWeight= cn.prepareStatement(sqlWeight);
	        stmtWeight.setString(1, productWeight);
	        stmtWeight.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
	        stmtWeight.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
	        ret = stmtWeight.executeUpdate();
	        
	        
	        
	        
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
	
	
	
	public List<Item> get() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM item_table ";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
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
		
		
		return new  Item(id, product_name, product_detail, product_price, product_stock, create_date, update_date);
	}

}
