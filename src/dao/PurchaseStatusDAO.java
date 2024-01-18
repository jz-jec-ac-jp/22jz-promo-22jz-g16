package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Item;

public class PurchaseStatusDAO {
	public  List<Item> find(String delivery_status) {
        List<Item> list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "SELECT * FROM history_table WHERE product_id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
//        一行入れる
        stmt.setInt(1, colorId);
        System.out.println("color_id " + colorId);
         
        ResultSet rs = stmt.executeQuery();

            // データをリストに格納
            while(rs.next()) {
//                ProductColor itemColors = rs2model(rs);
            	
//                setColor(itemColor);
                System.out.println("color_next");
            }
        } catch(SQLException e) {
            e.printStackTrace();
            System.out.println("error_color " + e);
        }
        return list;
	}
}
