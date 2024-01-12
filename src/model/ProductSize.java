package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductSize implements Serializable {
	private int id, product_id;
	private String size_name;
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
	public String getSize_name() {
		return size_name;
	}
	public void setSize_name(String size_name) {
		this.size_name = size_name;
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
	
	public ProductSize() {}
	
	public ProductSize(int id, int product_id, String size_name, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.size_name = size_name;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
}
