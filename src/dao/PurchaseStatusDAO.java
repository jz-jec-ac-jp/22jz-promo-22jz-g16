package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ProductUser;

public class PurchaseStatusDAO {
	public  void find(String delivery_status, int productId, int HistoryId) {
//         list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "UPDATE purchase_table SET delivery_status = ? WHERE purchase_history = ? AND product_id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
        
        System.out.println("PurchasehStatus status " + delivery_status);
        System.out.println("PurchasehStatus HistoryId " + HistoryId);
        System.out.println("PurchasehStatus productId " + productId);
//        一行入れる
        stmt.setString(1, delivery_status);
        stmt.setInt(2, HistoryId);
        stmt.setInt(3, productId);
        System.out.println("delivery_status " + delivery_status);
         
        stmt.executeUpdate();

            // データをリストに格納
//            while(rs.next()) {
////                ProductColor itemColors = rs2model(rs);
//            
////                setColor(itemColor);
//                System.out.println("delivery_status");
//            }
        } catch(SQLException e) {
            e.printStackTrace();
            System.out.println("error_color " + e);
        }
//        return list;
	}
	
	public  List<Integer> getId() {
//      list = new ArrayList<>();
	List<Integer> id = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {//purchase_history
     String sql = "SELECT h.user_id FROM purchase_table p INNER JOIN history_table h ON p.Purchase_history = h.id";
     PreparedStatement stmt = cn.prepareStatement(sql);
      
     ResultSet rs = stmt.executeQuery();
     
	     while(rs.next()) {
				int userId = rs.getInt("user_id");
				id.add(userId);
				
	     }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
     return id;
	}
	
	public  List<ProductUser> getUserDetail(List<Integer> idList) {
//      list = new ArrayList<>();
	List<ProductUser> detail = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
     String sql = "SELECT u.us_prefectur, u.us_adress, u.street_address,u.tel_number FROM user_table u INNER JOIN history_table h ON u.id = h.user_id";
     PreparedStatement stmt = cn.prepareStatement(sql);
      
     ResultSet rs = stmt.executeQuery();
     
     String sqlUserId = "SELECT h.user_id FROM user_table u INNER JOIN history_table h ON u.id = h.user_id";
     PreparedStatement stmtUser = cn.prepareStatement(sqlUserId);
      
     ResultSet rsUser = stmtUser.executeQuery();
     
     rs.next();
     boolean user = rsUser.next();
     System.out.println("user boolean " + user);
     int userId = rsUser.getInt("user_id");
     System.out.println("userId" + userId);
     System.out.println("getUserId ------------------- ");
     for (int i = 0; i < idList.size(); i++) {
    	 System.out.println("idList[" + i + "] " + idList.get(i));
    	 if (userId == idList.get(i)) {
			ProductUser userDetail = rs2model(rs);
			detail.add(userDetail);

    	 }
    	 else {
    		 rs.next();
    	 }
    	  rsUser.next();
     }

     
//	     while(rs.next()) {
//				ProductUser userDetail = rs2model(rs);
//				detail.add(userDetail);
//				
//	     }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
     return detail;
	}
	
	private  ProductUser rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
//		int id = rs.getInt("id");/* ⑨ */
		String us_prefectur = rs.getString("us_prefectur");
		String us_adress = rs.getString("us_adress");
		String street_address = rs.getString("street_address");
		int tel_number = rs.getInt("tel_number");
		
		
		return new ProductUser( us_prefectur, us_adress, street_address, tel_number);
	}
}
