package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import model.ProductCard;

public class CardDAO {
	
	public List<ProductCard> get(int user_id) {
//		List<Item> list = new ArrayList<>();
		List<ProductCard> list = new ArrayList<>();
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM card_table where user_id = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, user_id);
			ResultSet rs = stmt.executeQuery();
			
			
			// データをリストに格納
			while(rs.next()) {
				ProductCard card = rs2model(rs);
				list.add(card);
				
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + card.getId());
				
				
				
//				return card;

			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
		return list;

		
	}
	
	
	public ProductCard getCard(String card_number) {
//		List<ProductCard> list = new ArrayList<>();
			ProductCard card = null;
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT * FROM card_table where card_number = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, card_number);
			ResultSet rs = stmt.executeQuery();
			
			// データをリストに格納
			while(rs.next()) {
//				ProductCard card = rs2model(rs);
				card = rs2model(rs);
//				list.add(card);
				
//				System.out.println("true_get " +  list.add(item));
				System.out.println("true_get()  " + card.getId());
			
				return card;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
//		return list;
		return null;

		
	}
	
	public int findCardId(String card_number) {
//		List<ProductCard> list = new ArrayList<>();
			int card = 1;
		
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			String sql = "SELECT id FROM card_table where card_number = ?";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setString(1, card_number);
			ResultSet rs = stmt.executeQuery();
			
//			rs.next();
			
			// データをリストに格納
			while(rs.next()) {
//				ProductCard card = rs2model(rs);
				card = rs.getInt("id");
//			card = ((ProductCard) rs).getId();
//				int cardId = card.getId();
//				list.add(card);
				
//				System.out.println("true_get " +  list.add(item));
//				System.out.println("true_get()  " + card.getId());
			
				return card;
			}
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("error_get  " + e);
		}
//		return list;

		return card;
	}

	public boolean create( int userid,  String card_number, String card_nominee, String date_of_expiry) {
		int ret = -1;
		
		// できるなら存在確認
		
		
		// DBにデータを追加
		DBManager manager = DBManager.getInstance();
		try(Connection cn = manager.getConnection()) {
			// プレースホルダで変数部分を定義
			String sql = "INSERT INTO card_table (user_id, card_number, card_nominee, date_of_expiry, create_date,  update_date) VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt = cn.prepareStatement(sql);
			stmt.setInt(1, userid);
			stmt.setString(2, card_number);
			stmt.setString(3,  card_nominee);
			stmt.setString(4,  date_of_expiry);
			stmt.setTimestamp(5, Timestamp.valueOf(LocalDateTime.now()));
	        stmt.setTimestamp(6, Timestamp.valueOf(LocalDateTime.now()));
			
			ret = stmt.executeUpdate();
			System.out.println("card insert");
			System.out.println("");
			
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
	
	
	private  ProductCard rs2model(ResultSet rs) throws SQLException {
		/* 中略。rsの値を取得し、それぞれの変数に代入 */
		int id = rs.getInt("id");/* ⑨ */
		int user_id = rs.getInt("user_id");
		String card_number = rs.getString("card_number");
		String card_Nominee = rs.getString("card_Nominee");
		String date_of_expiry = rs.getString("date_of_expiry");
		Timestamp create_date = rs.getTimestamp("create_date");
		Timestamp update_date = rs.getTimestamp("update_date");
		
		
		return new ProductCard(id, user_id, card_number, card_Nominee, update_date, create_date, date_of_expiry);
	}
	
}
