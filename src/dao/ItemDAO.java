package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

//import model.License;
import model. Item;
import model.ProductColor;
import model.ProductImag;
import model.ProductSize;
import model.ProductWeight;

public class  ItemDAO {
	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	public List<Item> get() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM item_table";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				list.add(item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
				System.out.println("true_img()  " + item.getImgUrl());
				System.out.println("true_size()  " + item.getSize_name() );
				System.out.println("true_weight()  " + item.getWeight_name() );
				

			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
	}

//	public void setColor(Item item) {
//		ColorDAO dao = new ColorDAO();
//		List<Item> colors = dao.find(item.getId());
//		
//		item.setColorTexts(colors);
//	}
	

	
	
	/**
	 * テーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したデータ。なければnull
	 */
	public  Item find(int id) {
		 Item  item = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM item_table where id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				 item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				 
				 
				 
				 System.out.println("true_find  " + item);
				 System.out.println("true_getid()  " + item.getId());
				 System.out.println("true_Name()  " + item.getProduct_name());
				 System.out.println("true_color()  " + item.getColorTexts());
				 System.out.println("true_size()  " + item.getSize_name());
				 System.out.println("true_weight()  " + item.getWeight_name());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   item;
	}
	
	public  Item findStringAdmin(String name) {
		 Item  item = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM item_table WHERE product_name = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, name);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				 item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				 
				 
				 
				 System.out.println("true_find  " + item);
				 System.out.println("true_getid()  " + item.getId());
				 System.out.println("true_Name()  " + item.getProduct_name());
				 System.out.println("true_color()  " + item.getColorTexts());
				 System.out.println("true_size()  " + item.getSize_name());
				 System.out.println("true_weight()  " + item.getWeight_name());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   item;
	}
	
	public   List<Item> findString(String productName) {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM item_table WHERE product_name LIKE ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, "%" + productName + "%");
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				list.add(item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
				System.out.println("true_img()  " + item.getImgUrl());
				System.out.println("true_size()  " + item.getSize_name() );
				System.out.println("true_weight()  " + item.getWeight_name() );
				

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
	
	public void setImg(Item item) {
		ImageDAO dao = new ImageDAO();
		List<ProductImag> img = dao.find(item.getId());
		item.setImgUrl(img);
	}
	public void setSize(Item item) {
		SizeDAO dao = new SizeDAO();
		List<ProductSize> size = dao.find(item.getId());
		System.out.println("size!!!!!!!!!!!!!");
		item.setSize_name(size);
	}
	public void setWeight(Item item) {
		WeightDAO dao = new WeightDAO();
		System.out.println("weight!!!!!!!!!!!!!");
		List<ProductWeight> weight = dao.find(item.getId());
		item.setWeight_name(weight);
	}
	  /**
	   * ビデオデータに紐づくライセンス情報を検索して追加
	   * @param  item 追加対象のビデオデータ
	   */
//	  private void setLicenses( Item  item) {
	    /* ライセンスDAOのインスタンスを作成し、 item に紐づくライセンス情報を取得 */
//		  LicenseDAO dao = new LicenseDAO();
//		  List<License>licenses = dao.getLicenseBy ItemId( item.getId());
	                            
	                                      
	    /* 取得したライセンス情報を  item にセット */
//	     item.setLicenses(licenses);
//	  }
	
	
	public  void updateProduct(int id, String productName, String productDetail, int productValue, int productStock, String productColor, String productSize, String productWeight, String category_img) {
//      list = new ArrayList<>();
		
     
     DBManager manager = DBManager.getInstance();
     try(Connection cn = manager.getConnection()) {
     String sql = "UPDATE item_table SET product_name = ?, product_detail = ?, product_price = ?, product_stock = ?, update_date = ? WHERE id = ?";
     PreparedStatement stmt = cn.prepareStatement(sql);
     
//     一行入れる
     stmt.setString(1, productName);
     stmt.setString(2, productDetail);
     stmt.setInt(3, productValue);
     stmt.setInt(4, productStock);
     stmt.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
     stmt.setInt(6, id);
     
      
     stmt.executeUpdate();
     
     String sqlColor = "UPDATE color_table SET purchase_color = ?, update_date = ? WHERE product_id = ?";
     PreparedStatement stmtColor = cn.prepareStatement(sqlColor);
     
//     一行入れる
     stmtColor.setString(1, productColor);
     stmtColor.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
     stmtColor.setInt(3, id);
      
     stmtColor.executeUpdate();
     
     String sqlSize = "UPDATE size_table SET size_name = ?, update_date = ? WHERE product_id = ?";
     PreparedStatement stmtSize = cn.prepareStatement(sqlSize);
     
//     一行入れる
     stmtSize.setString(1, productSize);
     stmtSize.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
     stmtSize.setInt(3, id);
      
     stmtSize.executeUpdate();
     
     String sqlWeight = "UPDATE weight_table SET purchase_weight = ?, update_date = ? WHERE producr_id = ?";
     PreparedStatement stmtWeight = cn.prepareStatement(sqlWeight);
     
//     一行入れる
     stmtWeight.setString(1, productWeight);
     stmtWeight.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
     stmtWeight.setInt(3, id);
      
     stmtWeight.executeUpdate();
     
     
     List<String> imgs = new ArrayList<>();
		if(category_img.equals("カントリー椅子")) {
			System.out.println("カントリー椅子");
			imgs.add("assets/img/country_chair1.jpg");
			imgs.add("assets/img/country_chair2.jpg");
			imgs.add("assets/img/country_chair3.jpg");
		} else if (category_img.equals("モノトーン椅子")) {
			System.out.println("モノトーン椅子");
			imgs.add("assets/img/monotone_chair1.jpg");
			imgs.add("assets/img/monotone_chair2.jpg");
			imgs.add("assets/img/monotone_chair3.jpg");
			
		} else if (category_img.equals("カントリー時計")) {
			System.out.println("カントリー時計");
			imgs.add("assets/img/country_clock1.jpg");
			imgs.add("assets/img/country_clock2.jpg");
			imgs.add("assets/img/country_clock3.jpg");
			
		} else if (category_img.equals("モノトーン時計")) {
			System.out.println("モノトーン時計");
			imgs.add("assets/img/monotone_clock1.jpg");
			imgs.add("assets/img/monotone_clock2.jpg");
			
		} else if (category_img.equals("カントリー照明")) {
			System.out.println("カントリー照明");
			imgs.add("assets/img/country_light1.jpg");
			imgs.add("assets/img/country_light2.jpg");
			
		} else if (category_img.equals("モノトーン照明")) {
			System.out.println("モノトーン照明");
			imgs.add("assets/img/monotone_light1.jpg");
			imgs.add("assets/img/monotone_light2.jpg");
			imgs.add("assets/img/monotone_light3.jpg");
			
		} else if (category_img.equals("カントリー机")) {
			System.out.println("カントリー机");
			imgs.add("assets/img/country_table.jpg");
			
		} else if (category_img.equals("モノトーン机")) {
			System.out.println("モノトーン机");
			imgs.add("assets/img/monotone_table.jpg");
			
		} else if (category_img.equals("カントリー棚")) {
			System.out.println("カントリー棚");
			imgs.add("assets/img/country_chair.jpg");
			
		} else if (category_img.equals("モノトーン棚")) {
			System.out.println("モノトーン棚");
			imgs.add("assets/img/monotone_deskbord.jpg");
		}
		
		String sqlImgDelete = "DELETE FROM img_table WHERE item_id = ?";
		PreparedStatement stmtImgDelete = cn.prepareStatement(sqlImgDelete);
		stmtImgDelete.setInt(1, id);
		stmtImgDelete.executeUpdate();
		
		for (int i = 0; i < imgs.size(); i++) {
			String sqlImg = "INSERT INTO img_table (item_id, img_url ,update_date) VALUES (?, ?, ?)";
			PreparedStatement stmtImg = cn.prepareStatement(sqlImg);
			 stmtImg.setInt(1, id);
			stmtImg.setString(2, imgs.get(i));
			stmtImg.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			stmtImg.executeUpdate();
		}
     
//     String sqlImg = "UPDATE img_table SET img_url = ?, update_date = ? WHERE item_id = ?";
//     PreparedStatement stmtImg = cn.prepareStatement(sqlImg);
     
//     一行入れる
//     stmtImg.setString(1, category_img);
//     stmtImg.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
//     stmtImg.setInt(3, id);
//      
//     stmtImg.executeUpdate();

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

	
	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
	private  Item rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
		String product_name = rs.getString("product_name");
		String product_detail = rs.getString("product_detail");
		int product_price = rs.getInt("product_price");
		int product_stock = rs.getInt("product_stock");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new  Item(id, product_name, product_detail, product_price, product_stock, create_date, update_date);
	}

	
	
}
