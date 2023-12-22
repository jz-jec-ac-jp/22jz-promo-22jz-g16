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

public class ShopcartDAO {
	
	/**
	* DBにデータを追加する
	* @return 成功/失敗
	*/
	
	
	public boolean create(int product_id, int user_id) {
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
	        String sql = "INSERT INTO shopcart_table (product_id, user_id, update_date) VALUES (?, ?, ?)";
	        PreparedStatement stmt = cn.prepareStatement(sql);
	        stmt.setInt(1, product_id);
//	        stmt.setInt(2, user_id);
	        stmt.setInt(2, user_id);
	        stmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
	        
	        ret = stmt.executeUpdate();
	        
	    
	        
	        
	        
	    } catch(SQLException e) {
	        e.printStackTrace();
	        System.out.println("データ追加エラー " + e);
	    }
	    
    	List<Item> get() {
    		List<Item> list = new ArrayList<>();
    		
    		DBManager manager1 = DBManager.getInstance();
    		try(Connection cn = manager1.getConnection()) {
    			String sql = "SELECT * FROM item_table";
    			PreparedStatement stmt = cn.prepareStatement(sql);
    			ResultSet rs = stmt.executeQuery();
    			
    			// データをリストに格納
    			while(rs.next()) {
    				Item  item = rs2model(rs);
    				list.add( item);
    				
//    				System.out.println("true_get " +  list.add(item));
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
	    
	    return ret >= 0;
	}



}
