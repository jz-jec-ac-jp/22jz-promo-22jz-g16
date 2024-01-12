package model;

import java.sql.Timestamp;

public class PurchaseGroup {
	private int id;
	private int Purchase_history;
	private int product_id;
	private Timestamp create_date;
	private Timestamp update_date;
	
	
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
	
	public PurchaseGroup() {}
	
	public PurchaseGroup(int id, int purchase_history, int product_id, Timestamp create_date, Timestamp update_date) {
//		super();
		this.id = id;
		Purchase_history = purchase_history;
		this.product_id = product_id;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
	
}
