package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductWeight implements Serializable{
	
	private int id, producr_id, siza_id;
	private String purchase_weight;
	private Timestamp  create_date, update_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProducr_id() {
		return producr_id;
	}
	public void setProducr_id(int producr_id) {
		this.producr_id = producr_id;
	}
	public int getSiza_id() {
		return siza_id;
	}
	public void setSiza_id(int siza_id) {
		this.siza_id = siza_id;
	}
	public String getPurchase_weight() {
		return purchase_weight;
	}
	public void setPurchase_weight(String purchase_weight) {
		this.purchase_weight = purchase_weight;
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
	
	public ProductWeight() {}
	
	public ProductWeight(int id, int producr_id, String purchase_weight, Timestamp create_date,
			Timestamp update_date) {
		super();
		this.id = id;
		this.producr_id = producr_id;
//		this.siza_id = siza_id;
		this.purchase_weight = purchase_weight;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
	
}
