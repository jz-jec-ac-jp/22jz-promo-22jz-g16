package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
      
     ResultSet rs = stmt.executeQuery();

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
}
