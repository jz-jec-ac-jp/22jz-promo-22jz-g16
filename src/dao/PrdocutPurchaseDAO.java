package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
<<<<<<< HEAD
import java.time.LocalDateTime;
=======
//=======
import java.time.LocalDateTime;
//<<<<<<< HEAD
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.ProductColor;
<<<<<<< HEAD
=======

>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git

public class PrdocutPurchaseDAO {


	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	public List<Item> get() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM purchase_table p INNER JOIN history_table i ON p.product_id = i.id";
			//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
			
			// データをリストに格納
			while(rs.next()) {
//				System.out.println("whileの後");
				Item  item = rs2model(rs);
				setColor(item);
<<<<<<< HEAD
=======
//				setCount(item);
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
				list.add( item);
				
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
//				System.out.println("true_count()  " + item.getProduct_count());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
	}
	public void setColor(Item item) {
		ColorDAO dao = new ColorDAO();
		List<ProductColor> color = dao.find(item.getId());
		item.setColorTexts(color);
	}

<<<<<<< HEAD
=======
//	public void setCount(Item item) {
//		PrdocutPurchaseDAO dao = new PrdocutPurchaseDAO();
//		List<ProductPurchase> count = dao.find(item.getId());
//		item.setProduct_count(count);
//	}
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
	
	
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
<<<<<<< HEAD
=======
//<<<<<<< HEAD
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
	private  Item rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
		String product_name = rs.getString("product_name");
		String product_detail = rs.getString("product_detail");
		int product_price = rs.getInt("product_price");
		int product_stock = rs.getInt("product_stock");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new Item(id, product_name, product_detail, product_price, product_stock, create_date, update_date);
	}
<<<<<<< HEAD
=======
//=======
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
	
	
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
	    
<<<<<<< HEAD
=======
//>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
	}
}
