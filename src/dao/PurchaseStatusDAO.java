package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import model.ProductUser;

public class PurchaseStatusDAO {
	public  void find(String delivery_status, int productId, int HistoryId) {
//         list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "UPDATE purchase_table SET delivery_status = ?, update_date = ? WHERE purchase_history = ? AND product_id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
        
        System.out.println("PurchasehStatus status " + delivery_status);
        System.out.println("PurchasehStatus HistoryId " + HistoryId);
        System.out.println("PurchasehStatus productId " + productId);
//        一行入れる
        stmt.setString(1, delivery_status);
        stmt.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
        stmt.setInt(3, HistoryId);
        stmt.setInt(4, productId);
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
	
		public  List<String> findProductStatus() {
	         List<String> statusList = new ArrayList<>();
			
	        
	        DBManager manager = DBManager.getInstance();
	        try(Connection cn = manager.getConnection()) {
	        String sql = "SELECT delivery_status FROM purchase_table";
	        PreparedStatement stmt = cn.prepareStatement(sql);

	        System.out.println("delivery_status whileBefore");
	         
	        ResultSet rs = stmt.executeQuery();

	            // データをリストに格納
	            while(rs.next()) {
	                String deliveryStatus = rs.getString("delivery_status");
	                statusList.add(deliveryStatus);

	                System.out.println("delivery_status " + deliveryStatus);
	            }
	        } catch(SQLException e) {
	            e.printStackTrace();
	            System.out.println("error_color " + e);
	        }
	        
	        return statusList;
		}
		
//		<!-- 変更したよーーーーーーーーーーーーーーーー -->
		public  List<String> findProductStatus(int id, List<Integer> idList) {
	         List<String> statusList = new ArrayList<>();
			
	        
	        DBManager manager = DBManager.getInstance();
	        try(Connection cn = manager.getConnection()) {
	        	
	        	for (int i = 0; i < idList.size(); i++) {	        		
	        		
	        		String sql = "SELECT delivery_status FROM purchase_table WHERE (SELECT user_id FROM history_table WHERE user_id = ?) = ?";
	        		PreparedStatement stmt = cn.prepareStatement(sql);
	        		stmt.setInt(1, id);
	        		stmt.setInt(2, id);
	        		
	        		System.out.println("delivery_status whileBefore");
	        		
	        		ResultSet rs = stmt.executeQuery();
	        		
	        		// データをリストに格納
	        		while(rs.next()) {
	        			String deliveryStatus = rs.getString("delivery_status");
	        			statusList.add(deliveryStatus);
	        			
	        			System.out.println("delivery_status " + deliveryStatus);
	        		}
	        	}
	        } catch(SQLException e) {
	            e.printStackTrace();
	            System.out.println("error_color " + e);
	        }
	        
	        return statusList;
		}
	
	public  List<Integer> getUserId() {
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
	
	public  List<Integer> getUserId(int userId) {
//      list = new ArrayList<>();
	List<Integer> id = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {//purchase_history
     String sql = "SELECT h.user_id FROM purchase_table p INNER JOIN history_table h ON p.Purchase_history = h.id WHERE user_id = ?";
     PreparedStatement stmt = cn.prepareStatement(sql);
     stmt.setInt(1, userId);
      
     ResultSet rs = stmt.executeQuery();
     
	     while(rs.next()) {
				int user = rs.getInt("user_id");
				id.add(user);
	     }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
     return id;
	}
	
	public  List<Integer> getUserHistoryId() {
//      list = new ArrayList<>();
	List<Integer> id = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {//purchase_history
     String sql = "SELECT h.id FROM purchase_table p INNER JOIN history_table h ON p.Purchase_history = h.id";
     PreparedStatement stmt = cn.prepareStatement(sql);
      
     ResultSet rs = stmt.executeQuery();
     
	     while(rs.next()) {
				int userId = rs.getInt("id");
				id.add(userId);
	     }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
     return id;
	}
	
	public  List<Integer> getProductId() {
//      list = new ArrayList<>();
	List<Integer> id = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {//purchase_history
     String sql = "SELECT i.id FROM purchase_table p INNER JOIN item_table i ON p.product_id = i.id";
     PreparedStatement stmt = cn.prepareStatement(sql);
      
     ResultSet rs = stmt.executeQuery();
     
	     while(rs.next()) {
				int productId = rs.getInt("user_id");
				id.add(productId);
				
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
	    
	     
	     for (int i = 0; i < idList.size(); i++) {
//	    	 String sql = "SELECT u.us_prefectur, u.us_adress, u.street_address,u.tel_number FROM user_table u INNER JOIN history_table h ON u.id = h.user_i";
	    	 String sql = "SELECT us_prefectur, us_adress, street_address, tel_number FROM user_table WHERE id = ?";
		     PreparedStatement stmt = cn.prepareStatement(sql);
		     stmt.setInt(1, idList.get(i));
		     ResultSet rs = stmt.executeQuery();
		     
		     while (rs.next()) {
		    	 ProductUser user = rs2model(rs);
		    	 detail.add(user);
		     }
	     }
     
//     boolean userRs = rsUser.next();
//     boolean rsRs = rs.next();
//     System.out.println("user boolean " + userRs);
//     int userId = rsUser.getInt("user_id");
//     int userIdBefore = userId;
//     System.out.println("userId" + userId);
//     System.out.println("getUserId ------------------- ");
//     for (int i = 0; i < idList.size(); i++) {
//    	 System.out.println("userId" + userId);
//    	 System.out.println("idList[" + i + "] " + idList.get(i));
//    	 if (userId == idList.get(i)) {
//    		 System.out.println(userId + " == " + idList.get(i));
//			ProductUser userDetail = rs2model(rs);
//			detail.add(userDetail);
//			userIdBefore = userId;
//    	 }
//    	 else if (idList.get(i) == userIdBefore) {
//    		 
//    	 }
//    	 else {
//    		 rsUser.next();
//    		 userId = rsUser.getInt("user_id");
//    		 System.out.println("nextUserId " + userId);
// 			ProductUser userDetail = rs2model(rs);
// 			detail.add(userDetail);
//    	 }
//    	 rs.next();
//     }

     
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
	
	
	public  List<String> getUserMail(List<Integer> idList) {
//      list = new ArrayList<>();
	List<String> detail = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
	    
	     
	     for (int i = 0; i < idList.size(); i++) {
//	    	 String sql = "SELECT u.us_prefectur, u.us_adress, u.street_address,u.tel_number FROM user_table u INNER JOIN history_table h ON u.id = h.user_i";
	    	 String sql = "SELECT mail_adress FROM user_table WHERE id = ?";
		     PreparedStatement stmt = cn.prepareStatement(sql);
		     stmt.setInt(1, idList.get(i));
		     ResultSet rs = stmt.executeQuery();
		     
		     while (rs.next()) {
		    	 String mailUser = rs.getString("mail_adress");
		    	 detail.add(mailUser);
		     }
	     }
     
//     boolean userRs = rsUser.next();
//     boolean rsRs = rs.next();
//     System.out.println("user boolean " + userRs);
//     int userId = rsUser.getInt("user_id");
//     int userIdBefore = userId;
//     System.out.println("userId" + userId);
//     System.out.println("getUserId ------------------- ");
//     for (int i = 0; i < idList.size(); i++) {
//    	 System.out.println("userId" + userId);
//    	 System.out.println("idList[" + i + "] " + idList.get(i));
//    	 if (userId == idList.get(i)) {
//    		 System.out.println(userId + " == " + idList.get(i));
//			ProductUser userDetail = rs2model(rs);
//			detail.add(userDetail);
//			userIdBefore = userId;
//    	 }
//    	 else if (idList.get(i) == userIdBefore) {
//    		 
//    	 }
//    	 else {
//    		 rsUser.next();
//    		 userId = rsUser.getInt("user_id");
//    		 System.out.println("nextUserId " + userId);
// 			ProductUser userDetail = rs2model(rs);
// 			detail.add(userDetail);
//    	 }
//    	 rs.next();
//     }

     
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
	
	
	
	public List<Integer> getUserHistory(List<Integer> idList) {
		
		List<Integer> userHistory = new ArrayList<>();
	     
	     DBManager manager = DBManager.getInstance();
		
		try(Connection cn = manager.getConnection()) {
			for (int i = 0; i < idList.size(); i++) {
				String sql = "SELECT id FROM history_table WHERE user_id = ?";
			     PreparedStatement stmt = cn.prepareStatement(sql);
			     stmt.setInt(1, idList.get(i));
			     ResultSet rs = stmt.executeQuery();
			     
			     while (rs.next()) {
			    	 int userDate = rs.getInt("id");
			    	 userHistory.add(userDate);
			     }
			}
			
		 } catch(SQLException e) {
	         e.printStackTrace();
	         System.out.println("error_color " + e);
	     }
		
		return userHistory;
	}
	
	public  List<String> getUserDate(List<Integer> idList) {
//      list = new ArrayList<>();
	List<String> date = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
	    
    	 List<Integer> userHistory =  getUserHistory(idList);
	     
	     for (int i = 0; i < idList.size(); i++) {
	    	 
	    	 
	    	 
//	    	 String sql = "SELECT u.us_prefectur, u.us_adress, u.street_address,u.tel_number FROM user_table u INNER JOIN history_table h ON u.id = h.user_i";
	    	 String sql = "SELECT create_date FROM purchase_table WHERE purchase_history = ?";
		     PreparedStatement stmt = cn.prepareStatement(sql);
		     stmt.setInt(1, userHistory.get(i));
		     ResultSet rs = stmt.executeQuery();
		     
		     while (rs.next()) {
		    	 String userDate = rs.getString("create_date");
		    	 date.add(userDate);
		     }
		     
		     
	     }
	     
     
//     boolean userRs = rsUser.next();
//     boolean rsRs = rs.next();
//     System.out.println("user boolean " + userRs);
//     int userId = rsUser.getInt("user_id");
//     int userIdBefore = userId;
//     System.out.println("userId" + userId);
//     System.out.println("getUserId ------------------- ");
//     for (int i = 0; i < idList.size(); i++) {
//    	 System.out.println("userId" + userId);
//    	 System.out.println("idList[" + i + "] " + idList.get(i));
//    	 if (userId == idList.get(i)) {
//    		 System.out.println(userId + " == " + idList.get(i));
//			ProductUser userDetail = rs2model(rs);
//			detail.add(userDetail);
//			userIdBefore = userId;
//    	 }
//    	 else if (idList.get(i) == userIdBefore) {
//    		 
//    	 }
//    	 else {
//    		 rsUser.next();
//    		 userId = rsUser.getInt("user_id");
//    		 System.out.println("nextUserId " + userId);
// 			ProductUser userDetail = rs2model(rs);
// 			detail.add(userDetail);
//    	 }
//    	 rs.next();
//     }

     
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
     return date;
	}
	
	
	public  List<String> getProductStatus(List<Integer> idList) {
//      list = new ArrayList<>();
	List<String> productStatus = new ArrayList<>();
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
	    
    	 List<Integer> userHistory =  getUserHistory(idList);
	     
	     for (int i = 0; i < idList.size(); i++) {
	    	 
	    	 
	    	 
//	    	 String sql = "SELECT u.us_prefectur, u.us_adress, u.street_address,u.tel_number FROM user_table u INNER JOIN history_table h ON u.id = h.user_i";
	    	 String sql = "SELECT delivery_status FROM purchase_table WHERE purchase_history = ?";
		     PreparedStatement stmt = cn.prepareStatement(sql);
		     stmt.setInt(1, userHistory.get(i));
		     ResultSet rs = stmt.executeQuery();
		     
		     while (rs.next()) {
		    	 String userDate = rs.getString("delivery_status");
		    	 productStatus.add(userDate);
		     }
		     
		     
	     }
	     
     
//     boolean userRs = rsUser.next();
//     boolean rsRs = rs.next();
//     System.out.println("user boolean " + userRs);
//     int userId = rsUser.getInt("user_id");
//     int userIdBefore = userId;
//     System.out.println("userId" + userId);
//     System.out.println("getUserId ------------------- ");
//     for (int i = 0; i < idList.size(); i++) {
//    	 System.out.println("userId" + userId);
//    	 System.out.println("idList[" + i + "] " + idList.get(i));
//    	 if (userId == idList.get(i)) {
//    		 System.out.println(userId + " == " + idList.get(i));
//			ProductUser userDetail = rs2model(rs);
//			detail.add(userDetail);
//			userIdBefore = userId;
//    	 }
//    	 else if (idList.get(i) == userIdBefore) {
//    		 
//    	 }
//    	 else {
//    		 rsUser.next();
//    		 userId = rsUser.getInt("user_id");
//    		 System.out.println("nextUserId " + userId);
// 			ProductUser userDetail = rs2model(rs);
// 			detail.add(userDetail);
//    	 }
//    	 rs.next();
//     }

     
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
     return productStatus;
	}
	
	
//	
//	public List<String> getUserStatus(List<Integer> idList) {
////      list = new ArrayList<>();
//	List<ProductUser> detail = new ArrayList<>();
//     
//     DBManager manager = DBManager.getInstance();
//     try(Connection cn = manager.getConnection()) {
//	    
//	     
//	     for (int i = 0; i < idList.size(); i++) {
//	    	 String sql = "SELECT  FROM user_table WHERE id = ?";
//		     PreparedStatement stmt = cn.prepareStatement(sql);
//		     stmt.setInt(1, idList.get(i));
//		     ResultSet rs = stmt.executeQuery();
//		     
//		     while (rs.next()) {
//		    	 ProductUser user = rs2model(rs);
//		    	 detail.add(user);
//		     }
//	     }
//     } catch(SQLException e) {
//         e.printStackTrace();
//         System.out.println("error_color " + e);
//     }
////     return list;
//     return detail;
//	}
	
	
	private  ProductUser rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
//		int id = rs.getInt("id");/* ⑨ */
		String us_prefectur = rs.getString("us_prefectur");
		String us_adress = rs.getString("us_adress");
		String street_address = rs.getString("street_address");
		String tel_number = rs.getString("tel_number");
		
		
		return new ProductUser( us_prefectur, us_adress, street_address, tel_number);
	}
}
