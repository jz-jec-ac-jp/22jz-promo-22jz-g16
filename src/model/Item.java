package model;

import java.sql.Timestamp;

public class Item {
	private int id, price, stock;
	private String product_name, product_ditail;
	private Timestamp  create_date, update_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_ditail() {
		return product_ditail;
	}
	public void setProduct_ditail(String product_ditail) {
		this.product_ditail = product_ditail;
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
	
	public Item() {}
	
	public Item(int id, String product_name, String product_detail, int price, int stock) {
		this.id = id;
		this.product_name = product_name;
		this.product_ditail = product_detail;
		this.price = price;
		this.stock = stock;
//		this.create_date = create_date;
//		this.update_date = update_date;
	}
	
	
}
