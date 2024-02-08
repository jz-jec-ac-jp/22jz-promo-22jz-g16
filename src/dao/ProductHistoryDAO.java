package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.ProductColor;
import model.ProductImag;
import model.ProductSize;
import model.ProductWeight;

public class ProductHistoryDAO {
	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	
//	変更した
//	public List<Integer> historyList(List)
	
	public List<Integer> list(List<Integer> idList) {
		List<Integer> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			for (int i = 0; i < idList.size(); i++) {				
				String sql = "SELECT id FROM history_table WHERE user_id = ?";
				//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
				PreparedStatement stmt = cn.prepareStatement(sql);
				System.out.println("履歴入ったよ");
				stmt.setInt(1, idList.get(i));
				
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()) {
					int id = rs.getInt("id");
					list.add(id);
				}
				
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		return list;
	}
	
	public List<Item> get(int id, List<Integer> idList) {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			List<Integer> listHistory = list(idList);
			
			for (int i = 0; i < listHistory.size(); i++) {
				
				String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM purchase_table p INNER JOIN item_table i ON p.product_id = i.id WHERE ? = p.purchase_history ORDER BY ASC p.create_date";
				//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
				PreparedStatement stmt = cn.prepareStatement(sql);
				System.out.println("履歴入ったよ");
				stmt.setInt(1, listHistory.get(i));
				
				ResultSet rs = stmt.executeQuery();
				
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
				
				// データをリストに格納
				while(rs.next()) {
//				System.out.println("whileの後");
					Item  item = rs2model(rs);
					setImg(item);
					setColor(item);
					setSize(item);
					setWeight(item);
					list.add( item);
					
					
//				System.out.println("true_get " +  list.add(item));
					System.out.println("true_get()  " + item.getId());
					System.out.println("true_Name()  " + item.getProduct_name());
					System.out.println("true_Name()  " + item.getProduct_price());
					System.out.println("true_color()  " + item.getColorTexts());
					System.out.println("true_size()  " + item.getSize_name());
			}
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
	
	//管理者
	public List<Item> get() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM purchase_table p INNER JOIN item_table i ON p.product_id = i.id ";
			//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
			PreparedStatement stmt = cn.prepareStatement(sql);
//			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
			
			// データをリストに格納
			while(rs.next()) {
//				System.out.println("whileの後");
				Item  item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				list.add( item);
	
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
	}
	
//		管理者用
	public int getHistoryId(int productId) {
//		List<Item> list = new ArrayList<>();
		int userHistoryId = -1;
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT p.id FROM history_table p INNER JOIN purchase_table i ON i.product_id = ? ";
			//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, productId);
			ResultSet rs = stmt.executeQuery();
			
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
			
			// データをリストに格納
			while(rs.next()) {
//				System.out.println("whileの後");
				userHistoryId = rs.getInt("id");
				System.out.println("history id " + userHistoryId);
//				Item  item = rs2model(rs);
//				setColor(item);
//				list.add( item);
	
				
//				return userMailAdress;
//				System.out.println("true_get " +  list.add(item));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		return userHistoryId;
		
	}
	
//	管理者用
	public List<String> getUserAdmin() {
//		List<Item> list = new ArrayList<>();
		List<String> userMailAdress =  new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT mail_adress FROM history_table p INNER JOIN user_table i ON p.user_id = i.id ";
			//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
			PreparedStatement stmt = cn.prepareStatement(sql);
//			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
			
			// データをリストに格納
			while(rs.next()) {
//				System.out.println("whileの後");
				String user = rs.getString("mail_adress");
				userMailAdress.add(user);
//				Item  item = rs2model(rs);
//				setColor(item);
//				list.add( item);
	
				
//				return userMailAdress;
//				System.out.println("true_get " +  list.add(item));
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		return userMailAdress;
		
	}
	
	
//	管理者画面用
	public List<Item> getProductAdmin() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM purchase_table p INNER JOIN item_table i ON p.product_id = i.id ";
			//SELECT i.product_name, i.product_detail, i.product_price, i.product_stock FROM purchase_table INNER JOIN item_table i ON purchase_table.product_id = i.id
			PreparedStatement stmt = cn.prepareStatement(sql);
//			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
//			System.out.println("whileの前");
//			System.out.println(stmt);
//			System.out.println(rs.next());
			
			// データをリストに格納
			while(rs.next()) {
//				System.out.println("whileの後");
				Item  item = rs2model(rs);
				setColor(item);
				list.add( item);
	
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
				System.out.println("true_color()  " + item.getColorTexts());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		
		return list;
	}
	
	
	
	/**
	 * テーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したデータ。なければnull
	 */
	public  List<String> find(List<Integer> id) {
		List<String>  dateList = new ArrayList<>();
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			for (int i = 0; i < id.size(); i++) {
				// プレースホルダで変数部分を定義
				String sql = "SELECT create_date FROM history_table where user_id = ?";
				PreparedStatement stmt = cn.prepareStatement(sql);
				stmt.setInt(1, id.get(i));
				ResultSet rs = stmt.executeQuery();
				
				// データをリストに格納
				while (rs.next()) {
					String date = rs.getString("create_date");
					dateList.add(date);
					
					
					
				}
			}
				
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   dateList;
	}

//	  private Object getString(String string) {
//		// TODO 自動生成されたメソッド・スタブ
//		return null;
//	}

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
	
	public int itemStock (int id, int count) {
//		List<Integer>  dateList = new ArrayList<>();
		int minusCount = count;
		int stock = 0;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			
				// プレースホルダで変数部分を定義
				String sql = "SELECT product_stock FROM item_table where id = ?";
				PreparedStatement stmt = cn.prepareStatement(sql);
				stmt.setInt(1, id);
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()) {
					
					stock =  rs.getInt("product_stock");
				}
				
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   stock - minusCount;
	}
	
	public List<Integer> getProductCount() {
		List<Integer>  count = new ArrayList<>();
//		int minusCount = count;
//		int stock = 0;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			
				// プレースホルダで変数部分を定義
				String sql = "SELECT product_count FROM purchase_table";
				PreparedStatement stmt = cn.prepareStatement(sql);
//				stmt.setInt(1, id);
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()) {
					
					count.add(rs.getInt("product_count"));
				}
				
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   count;
	}
	
	public boolean create(int user_id, String payMethod,int card_id, String delivery_status, List<Item> shopCartList, List<Integer> productCount) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
//			try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
			// プレースホルダで変数部分を定義
			
			String sql = "INSERT INTO history_table (user_id, pay_mothod, purchase_date, card_id, create_date, update_date) VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, user_id);
			stmt.setString(2, payMethod);
			stmt.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			stmt.setInt(4, card_id);
//			stmt.setString(5, delivery_status);
			stmt.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
			stmt.setTimestamp(6, Timestamp.valueOf(LocalDateTime.now()));
			ret = stmt.executeUpdate();
			
			 // 自動採番された値を取得するためのOUTパラメータを登録
//            preparedStatement.registerOutParameter(3, java.sql.Types.NUMERIC);

//			
			for (int i = 0; i < shopCartList.size(); i++) {
				Item cartItem = shopCartList.get(i);
				String sqlPurchase = "INSERT INTO purchase_table (purchase_history, product_id, delivery_status,  create_date, update_date, product_count) VALUES ((SELECT MAX(id) FROM history_table), ?, ?, ?, ?, ?)";
				
				PreparedStatement stmtCart = cn.prepareStatement(sqlPurchase);
				stmtCart.setInt(1, cartItem.getId());
				stmtCart.setString(2, delivery_status);
				stmtCart.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
				stmtCart.setTimestamp(4, Timestamp.valueOf(LocalDateTime.now()));
				stmtCart.setInt(5, productCount.get(i));
				ret = stmtCart.executeUpdate();
				
			}
			
			for (int i = 0; i < shopCartList.size(); i++) {
				Item cartItem = shopCartList.get(i);
				int productId = cartItem.getId();
				
				int stock = itemStock(productId, productCount.get(i));
				
				String sqlPurchase = "UPDATE item_table SET product_stock = ? WHERE id = ?";
				
				PreparedStatement stmtCart = cn.prepareStatement(sqlPurchase);
				stmtCart.setInt(1, stock);
				stmtCart.setInt(2, productId);

				ret = stmtCart.executeUpdate();
				
			}
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
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
