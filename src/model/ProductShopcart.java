package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductShopcart implements Serializable{

	private int id, product_id, user_id;
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
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
	
	
	public ProductShopcart() {}
	
	public ProductShopcart(int id, int product_id, int user_id, Timestamp create_date, Timestamp update_date) {
		this.id = id;
		this.product_id = product_id;
		this.user_id = user_id;
		this.create_date = create_date;
		this.update_date = update_date;
	}

	
}
