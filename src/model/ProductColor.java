package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductColor implements Serializable {
	private int id, product_id;
	private String purchase_color;
	private Timestamp  create_date, update_date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getPurchase_color() {
		return purchase_color;
	}
	public void setPurchase_color(String purchase_color) {
		this.purchase_color = purchase_color;
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
	
	public ProductColor() {}
	
	public ProductColor(int id, int product_id, String purchase_color, Timestamp create_date, Timestamp update_date) {
		this.id = id;
		this.product_id = product_id;
		this.purchase_color = purchase_color;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
}
