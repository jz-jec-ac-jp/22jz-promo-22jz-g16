package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductHistory implements Serializable{
	private int id;
	private int user_id;
	private int pay_method;
	private Timestamp purchase_date;
	private int card_id;
	private String delivery_status;
	private Timestamp  create_date;
	private Timestamp update_date;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPay_method() {
		return pay_method;
	}
	public void setPay_method(int pay_method) {
		this.pay_method = pay_method;
	}
	public Timestamp getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(Timestamp purchase_date) {
		this.purchase_date = purchase_date;
	}
	public int getCard_id() {
		return card_id;
	}
	public void setCard_id(int card_id) {
		this.card_id = card_id;
	}
	public String getDelivery_status() {
		return delivery_status;
	}
	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
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
	
	
	public ProductHistory() {}
	
	public ProductHistory(int id, int user_id, int pay_method, Timestamp purchase_date, int card_id,
		String delivery_status, Timestamp create_date, Timestamp update_date) {
//		super();
		this.id = id;
		this.user_id = user_id;
		this.pay_method = pay_method;
		this.purchase_date = purchase_date;
		this.card_id = card_id;
		this.delivery_status = delivery_status;
		this.create_date = create_date;
		this.update_date = update_date;
	}
}
