package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
     try(Connection cn = manager.getConnection()) {
     String sql = "SELECT purchase_history FROM purchase_table";
     PreparedStatement stmt = cn.prepareStatement(sql);
      
     ResultSet rs = stmt.executeQuery();
     
	     while(rs.next()) {
				int userId = rs.getInt("purchase_history");
				id.add(userId);
				
	     }
     } catch(SQLException e) {
         e.printStackTrace();
         System.out.println("error_color " + e);
     }
//     return list;
     return id;
	}
}
