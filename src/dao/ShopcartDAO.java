package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Item;
import model.ProductColor;
import model.ProductImag;
import model.ProductSize;
import model.ProductWeight;

public class ShopcartDAO {
	/**
	 * カートテーブルのデータをすべて取得するメソッド
	 * @return カートデータ
	 * String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM shopcart_table s INNER JOIN item_table i ON s.product_id = i.id";
	 */
	public List<Item> get(int userId) {
		List<Item> list = new ArrayList<>();
		String sql = "SELECT i.id, i.product_name, i.product_detail, i.product_price, i.product_stock, i.create_date, i.update_date FROM shopcart_table s INNER JOIN item_table i ON s.product_id = i.id where user_id = ?";
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getColorTexts());
				System.out.println("true_Size()  " + item.getSize_name());
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
	 * カートテーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したカートデータ。なければnull
	 */
	public Item find(int id) {
		Item cart = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM shopcart_table WHERE id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				cart = rs2model(rs);
//				setLicenses(cart);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return  cart;
	}
	
	public boolean findProduct(int product_id, int user_id) {
		
		int num = -1;
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT id FROM shopcart_table WHERE product_id = ? AND user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, product_id);
			stmt.setInt(2, user_id);
			
			
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {				
				int id = -1;
				id = rs.getInt("id");
				System.out.println("aaa  " + id);
				if (id != -1) {
					num = 1;
				}
			}
			
			System.out.println("findProduct() -----------------");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return num > 0;
	}
	
	public boolean create(int product_id, int user_id, int count) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO shopcart_table (product_id, user_id, product_count) VALUES (?, ?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, product_id);
			stmt.setInt(2, user_id);
			stmt.setInt(3, count);
			
			System.out.println("shopcart create-----------------");
			
			ret = stmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
	}
	
	
	
//	<!-- 変更したよーーーーーーーーーーーーーーーー -->
	public int update(int id, int count, List<Item> shopCartList) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			

			
			for (int i = 0; i < shopCartList.size(); i++) {
				Item item = shopCartList.get(i);
				String sqlItem = "SELECT product_stock FROM item_table WHERE id = ?";
				PreparedStatement stmtItem = cn.prepareStatement(sqlItem);
				stmtItem.setInt(1, item.getId());
				ResultSet retItem = stmtItem.executeQuery();
				
				
				
				while (retItem.next()) {
					if (retItem.getInt("product_stock") >= count) {
						int itemCount = retItem.getInt("product_stock");
						System.out.println("stock --------------------" + itemCount);
						System.out.println("count --------------------" + count);
						String sql = "UPDATE shopcart_table SET product_count = ? WHERE id = ?";
						PreparedStatement stmt = cn.prepareStatement(sql);
						stmt.setInt(1, itemCount - count);
						stmt.setInt(2, id);
						System.out.println("countMinus.update" + count);
						System.out.println("id countMinus.update" + id);
						System.out.println("");
						
						ret = stmt.executeUpdate();
					}
					else  {
						return ret -1;
					}
				}
				
			}
			
//			// プレースホルダで変数部分を定義
//			String sql = "UPDATE shopcart_table SET product_count = ?, update_date = ? WHERE product_id = ?";
//			PreparedStatement stmt = cn.prepareStatement(sql);
//			stmt.setInt(1, count);
//			stmt.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
//			stmt.setInt(3, id);
//			System.out.println("count.update" + count);
//			System.out.println("id.update" + id);
//			System.out.println("");
			
//			ret = stmt.executeUpdate();
			System.out.println("shopcart update-----------------");
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret;
	}
	
	public  List<Integer> ProductCount(int userId) {
        List<Integer> countList = new ArrayList<>();
		
       
       DBManager manager = DBManager.getInstance();
       try(Connection cn = manager.getConnection()) {
       String sql = "SELECT product_count FROM shopcart_table WHERE user_id = ?";
       PreparedStatement stmt = cn.prepareStatement(sql);
       stmt.setInt(1, userId);
       System.out.println("product_count whileBefore");
        
       ResultSet rs = stmt.executeQuery();

           // データをリストに格納
           while(rs.next()) {
               int ProductCount = rs.getInt("product_count");
               countList.add(ProductCount);

               System.out.println("product_count " + ProductCount);
           }
       } catch(SQLException e) {
           e.printStackTrace();
           System.out.println("error_count " + e);
       }
       
       return countList;
	}
	
	public boolean delete(int userId) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "DELETE FROM shopcart_table where user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			ret = stmt.executeUpdate();
			System.out.println("shopCart delete");
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
		
		
		
	}
	
	
	public boolean updateProductCount(int userId, int productId, int productCount) {
//		int num = -1;
//		// DBにデータを追加
//		DBManager manager = DBManager.getInstance();
//		try(Connection cn = manager.getConnection()) {
//			// プレースホルダで変数部分を定義
//			String sql = "UPDATE shopcart_table SET product_count = ? WHERE product_id = ? AND user_id = ?";
//			PreparedStatement stmtUp = cn.prepareStatement(sql);
//			stmtUp.setInt(1, productCount);
//			stmtUp.setInt(2, productId);
//			stmtUp.setInt(3, userId);
//			
//			
//			System.out.println("updateProductCount() -----------------");
//			num  = stmtUp.executeUpdate();
//
//			
//			System.out.println("updateProductCount() -----------------");
//		} catch(SQLException e) {
//			e.printStackTrace();
//		}
//		
//		return num  > 0;
		
		
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "UPDATE shopcart_table SET product_count = ? WHERE product_id = ? AND user_id = ?";
			PreparedStatement stmtUp = cn.prepareStatement(sql);
			stmtUp.setInt(1, productCount);
			stmtUp.setInt(2, productId);
			stmtUp.setInt(3, userId);
			ret = stmtUp.executeUpdate();
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
		
	}
	
	public boolean productDelete(int userId, int productId) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "DELETE FROM shopcart_table WHERE user_id = ? AND product_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userId);
			stmt.setInt(2, productId);
			ret = stmt.executeUpdate();
			System.out.println("shopCart product delete");
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return ret > 0;
		
		
		
	}
	
//	/**
//	 * カートデータに紐づくライセンス情報を検索して追加
//	 * @param cart 追加対象のカートデータ
//	 */
//	private void setLicenses(Cart cart) {
//		CartDAO licDao = new CartDAO();
//		List<License> licenses = licDao.getLicenseByCartId(cart.getId());
//		cart.setLicenses(licenses);
//	}
//	
//	
	/**
	 * ResultSetの行データをモデルの形に変換するメソッド
	 * @param rs 変換前のデータ
	 * @return 変換後のデータ
	 */
//	private ProductShopcart rs2model(ResultSet rs) throws SQLException {
//		int id = rs.getInt("id");
//		int product_id = rs.getInt("product_id");
//		int user_id = rs.getInt("user_id");
//		Timestamp create_date = rs.getTimestamp("create_date");
//		Timestamp update_date = rs.getTimestamp("update_date");
//		
//		
//		return new ProductShopcart(id, product_id, user_id, create_date, update_date);
//		
	
//	}
	
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

}
