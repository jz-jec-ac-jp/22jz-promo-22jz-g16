package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class PrdocutPurchaseDAO {
	public  void find(String delivery_status) {
//      list = new ArrayList<>();
		
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
     String sql = "UPDATE history_table SET delivery_status = ? where id=1";
     PreparedStatement stmt = cn.prepareStatement(sql);
//     一行入れる
     stmt.setString(1, delivery_status);
     System.out.println("delivery_status " + delivery_status);
      
//     ResultSet rs = stmt.executeQuery();

         // データをリストに格納
//         while(rs.next()) {
////             ProductColor itemColors = rs2model(rs);
//         
////             setColor(itemColor);
//             System.out.println("delivery_status");
//         }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
	}
	
	
	public boolean create(String delivery_status) {
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
	        String sql = "INSERT INTO purchase_table (purchase_history, product_id, delivery_status, create_date, update_date) VALUES ((SELECT MAX(id) FROM history_table), (SELECT id FROM item_table i INNER JOIN purchase_table p ON i.id = p.MAX(product_id)), ?, ?, ?)";
	        PreparedStatement stmt = cn.prepareStatement(sql);
	        stmt.setString(1, delivery_status);
	        stmt.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
	        stmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
	        
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
}
