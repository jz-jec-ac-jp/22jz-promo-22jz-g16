package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Item implements Serializable {
	private int id, product_price, product_stock;
	private String product_name, product_detail;
	private Timestamp  create_date, update_date;
	
	//カラーテーブル用
//	List<Item> colorTexts;
	Item colorText;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public Timestamp getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Timestamp create_date) {
		this.create_date = create_date;
	}
	public Timestamp getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Timestamp update_date) {
		this.update_date = update_date;
	}
	
	//カラーテーブル用
//	public void setColorTexts(List<Item> colorTexts) {
//		this.colorTexts = colorTexts;
//	}
	
	public void setColorText(Item color) {
		this.colorText = color;
	}
	
	public Item() {}
	
	// 画像のリストを持てるようにする　変数追加　追加用のセッター(addImage)
	
	public Item(int id, String product_name, String product_detail, int product_price, int product_stock, Timestamp create_date, Timestamp update_date) {
		this.id = id;
		this.product_name = product_name;
		this.product_detail = product_detail;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.create_date = create_date;
		this.update_date = update_date;
	}



	
	
}
