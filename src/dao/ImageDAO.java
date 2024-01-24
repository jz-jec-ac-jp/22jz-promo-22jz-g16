package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import model.ProductImag;

public class ImageDAO {
	/**
	 * テーブルのデータをすべて取得するメソッド
	 * @return データのリスト
	 */
	public List<ProductImag> get() {
		List<ProductImag> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM item_table where product_name = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
				ProductImag  item = rs2model(rs);
				list.add( item);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + item.getId());
//				System.out.println("true_Name()  " + item.getProduct_name());
//				System.out.println("true_Name()  " + item.getProduct_price());
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
	public  List<ProductImag> find(int itemId) {
        List<ProductImag> list = new ArrayList<>();
		
        
        DBManager manager = DBManager.getInstance();
        try(Connection cn = manager.getConnection()) {
        String sql = "SELECT * FROM img_table WHERE item_id = ?";
        PreparedStatement stmt = cn.prepareStatement(sql);
//        一行入れる
        stmt.setInt(1, itemId);
        System.out.println("itemId " + itemId);
         
        ResultSet rs = stmt.executeQuery();

            // データをリストに格納
            while(rs.next()) {
//                ProductColor itemColors = rs2model(rs);
            	ProductImag img = rs2model(rs);
                list.add(img);
                System.out.println("imgDAO");
//                setColor(itemColor);
            }
        } catch(SQLException e) {
            e.printStackTrace();
            System.out.println("error_color " + e);
        }
        return list;
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
	private  ProductImag rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
//		String product_name = rs.getString("product_name");
//		String product_detail = rs.getString("product_detail");
//		int product_price = rs.getInt("product_price");
//		int product_stock = rs.getInt("product_stock");
		
		int item_id =rs.getInt("item_id");
		String img_url = rs.getString("img_url");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new  ProductImag(id, item_id, img_url, create_date, update_date);
	}

	
}
