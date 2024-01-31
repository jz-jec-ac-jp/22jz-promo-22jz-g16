package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.ProductSize;

public class SizeDAO {
	public  List<ProductSize> find(int size_id) {
        List<ProductSize> list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "SELECT * FROM size_table WHERE product_id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
//        一行入れる
        stmt.setInt(1, size_id);
        System.out.println("size_id " + size_id);
         
        ResultSet rs = stmt.executeQuery();

            // データをリストに格納
            while(rs.next()) {
//                ProductColor itemColors = rs2model(rs);
            	ProductSize itemSize = rs2model(rs);
                list.add(itemSize);
//                setColor(itemColor);
                System.out.println("size_next");
            }
        } catch(SQLException e) {
            e.printStackTrace();
            System.out.println("error_size " + e);
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
	private  ProductSize rs2model(ResultSet rs) throws SQLException {
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
		String size_name = rs.getString("size_name");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		System.out.println("rs2model");
		
		return new ProductSize(id, product_id, size_name, create_date, update_date);
	
	}
}
