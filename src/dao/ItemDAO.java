package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
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
	
	public   List<Item>findString(String productName) {
		List<Item> list = new ArrayList<>();
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM item_table where product_name LIKE ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, "%" + productName + "%");
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				Item item = rs2model(rs);
				setImg(item);
				setColor(item);
				setSize(item);
				setWeight(item);
				list.add(item);
				 
				 
				 
				 System.out.println("true_find  " + item);
				 System.out.println("true_get()  " + item.getId());
				 System.out.println("true_Name()  " + item.getProduct_name());
				 System.out.println("true_color()  " + item.getColorTexts());
				 System.out.println("true_size()  " + item.getSize_name());
				 System.out.println("true_weight()  " + item.getWeight_name());
				 
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   list;
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
