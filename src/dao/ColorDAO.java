package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import model.Item;
import model.ProductColor;

public class ColorDAO {
	
	public  List<Item> find(int id) {
//        List<Item> list = new ArrayList<>();
		Item item = null;
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "SELECT * FROM item_table WHERE id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
//        一行入れる
        stmt.setInt(1, id);
        
        ResultSet rs = stmt.executeQuery();

            // データをリストに格納
            while(rs.next()) {
                Item items = rs2model(rs);
//                list.add(items);
                setColor(item);
            }
        } catch(SQLException e) {
            e.printStackTrace();
        }
        return item;
	}

	
	public void setColor(Item item) {
		ColorDAO dao = new ColorDAO();
//		Item color = item.getId();
		item.setColorText(item);
	}
	
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
		
		
		return new ProductColor(id, product_id, purchase_color, create_date, update_date);
	
	}
}
