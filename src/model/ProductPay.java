package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductPay implements Serializable{

	private int id;
	private String pay_mothod;
	private Timestamp  create_date, update_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPay_mothod() {
		return pay_mothod;
	}
	public void setPay_mothod(String pay_mothod) {
		this.pay_mothod = pay_mothod;
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
	
	public ProductPay() {}
	
	public ProductPay(int id, String pay_mothod, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		this.pay_mothod = pay_mothod;
		this.create_date = create_date;
		this.update_date = update_date;
	}

	
}
