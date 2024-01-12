package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductFavorite implements Serializable{
	private int id, Purchase_history, user_id;
	private Timestamp  create_date, update_date;
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
	
	public ProductFavorite() {}
	
	public ProductFavorite(int id, int purchase_history, int user_id, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		Purchase_history = purchase_history;
		this.user_id = user_id;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
}
