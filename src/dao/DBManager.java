package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
	private static final String CN_STRING = "jdbc:oracle:thin:@//10.40.112.11:1521/dbsys";
	private static final String USER = "g2216";
	private static final String PASS = "g16";
	
	/* 中略。定数の定義。 */
	private static DBManager self; // 自分を管理する変数
	/**
	 * コンストラクタ
	 */
	private DBManager() {
		/* 中略。ODBCドライバのロード */
//		JDBCドライバのロード
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(ClassNotFoundException e) {
			System.out.println("JDBCドライバのロードに失敗しました");
			return;
		}
	}
	/**
	 * インスタンスを取得するメソッド-
	 */
	public static DBManager getInstance() {
		if (self == null) {// まだ一度もインスタンス化してなければ
			self = new DBManager();
		}
		return self;
	}

	/**
	 * コネクションを取得
	 */
	protected Connection getConnection() throws SQLException {
		return DriverManager.getConnection(CN_STRING, USER, PASS);
	}
}
