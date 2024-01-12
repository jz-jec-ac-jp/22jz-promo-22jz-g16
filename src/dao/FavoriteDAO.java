package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.Item;

public class FavoriteDAO {
	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	public List<Item> get() {
		List<Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM favorit_table";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				Item  item = rs2model(rs);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
				System.out.println("true_Name()  " + item.getProduct_name());
				System.out.println("true_Name()  " + item.getProduct_price());
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
				 
				 
				 System.out.println("true_find  " + item);
				 System.out.println("true_get()  " + item.getId());
				 System.out.println("true_Name()  " + item.getProduct_name());
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_find  " + e);
		}
		
		return   item;
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
		String Purchase_history = rs.getString("Purchase_history");
		String user_id = rs.getString("user_id");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new Item(id, Purchase_history, user_id, create_date, update_date);
	}
}
