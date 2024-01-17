package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.ProductColor;

public class ColorDAO {
	
	public  List<ProductColor> find(int colorId) {
        List<ProductColor> list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "SELECT * FROM color_table WHERE id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
//        一行入れる
        stmt.setInt(1, colorId);
        System.out.println("color_id " + colorId);
         
        ResultSet rs = stmt.executeQuery();

            // データをリストに格納
            while(rs.next()) {
//                ProductColor itemColors = rs2model(rs);
            	ProductColor itemColor = rs2model(rs);
                list.add(itemColor);
//                setColor(itemColor);
                System.out.println("color_next()");
            }
        } catch(SQLException e) {
            e.printStackTrace();
            System.out.println("error_color " + e);
        }
        return list;
	}

	
//	public void setColor(ProductColor itemColor) {
//		ColorDAO dao = new ColorDAO();
////		Item color = item.getId();
//		itemColor.setColorText(itemColor);
//	}
	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
	private  ProductColor rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
//		int id = rs.getInt("id");/* ⑨ */
//		String product_name = rs.getString("product_name");
//		String product_detail = rs.getString("product_detail");
//		int product_price = rs.getInt("product_price");
//		int product_stock = rs.getInt("product_stock");
//		Timestamp create_date = rs.getTimestamp("create_date");
//		Timestamp update_date = rs.getTimestamp("update_date");
//		
		int id = rs.getInt("id");
		int product_id = rs.getInt("product_id");
		String purchase_color = rs.getString("product_name");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_time");
		
		System.out.println("rs2model");
		
		return new ProductColor(id, product_id, purchase_color, create_date, update_date);
	
	}
}
