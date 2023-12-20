package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import model.License;
import model. Item;

public class  ItemDAO {
	/**
	 * ビデオテーブルのデータをすべて取得するメソッド
	 * @return ビデオデータのリスト
	 */
	public List< Item> get() {
		List< Item> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM  items";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				 Item  item = rs2model(rs);
				list.add( item);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	/**
	 * ビデオテーブルの中から、主キーが id であるレコードを返すメソッド
	 * @param id 主キーの値
	 * @return 発見したビデオデータ。なければnull
	 */
	public  Item find(int id) {
		 Item  item = null;
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "SELECT * FROM  item_table";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			if (rs.next()) {
				 item = rs2model(rs);

			}
		} catch(SQLException e) {
			e.printStackTrace();
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
		int price = rs.getInt("price");
		int stock = rs.getInt("stock");
		String product_name = rs.getString("puroduct_name");
		String puroduct_ditail = rs.getString("puroduct_ditail");
		
		return new  Item(id, price, stock, product_name, puroduct_ditail);
	}

	
}
