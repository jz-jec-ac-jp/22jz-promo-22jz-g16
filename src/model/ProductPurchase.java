package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductPurchase implements Serializable{

	private int id, Purchase_history, product_id, purchase_count, total_stock;
	private Timestamp  create_date, update_date;
	private String delivery_status;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPurchase_history() {
		return Purchase_history;
	}
	public void setPurchase_history(int purchase_history) {
		Purchase_history = purchase_history;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
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
	
	public String getDelivery_status() {
		return delivery_status;
	}
	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
	}
	public int getPurchase_count() {
		return purchase_count;
	}
	public void setPurchase_count(int purchase_count) {
		this.purchase_count = purchase_count;
	}
	
	public int getTotal_stock() {
		return total_stock;
	}
	public void setTotal_stock(int total_stock) {
		this.total_stock = total_stock;
	}
	public ProductPurchase() {}
	public ProductPurchase(int id, int purchase_history, int product_id, int user_id,int purchase_count, int total_stock, Timestamp create_date, Timestamp update_date,
			String delivery_status) {
//		super();
		this.id = id;
		this. Purchase_history = purchase_history;
		this.product_id = product_id;
		this.purchase_count = purchase_count;
		this.total_stock = total_stock;
		this.create_date = create_date;
		this.update_date = update_date;
		this.delivery_status = delivery_status;
	}
	

	
	
}
