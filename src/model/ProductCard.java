package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductCard implements Serializable{

	private int id, user_id;
	private String card_number, card_Nominee;
	private Timestamp  create_date, update_date;
	private String date_of_expiry;
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
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	public String getCard_Nominee() {
		return card_Nominee;
	}
	public void setCard_Nominee(String card_Nominee) {
		this.card_Nominee = card_Nominee;
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
	public String getDate_of_expiry() {
		return date_of_expiry;
	}
	public void setDate_of_expiry(String date_of_expiry) {
		this.date_of_expiry = date_of_expiry;
	}
	
	public ProductCard() {}
	
	public ProductCard(int id) {
		this.id = id;
	}
	
	public ProductCard(int id, int user_id, String card_number, String card_Nominee, Timestamp create_date,
			Timestamp update_date, String date_of_expiry) {
//		super();
		this.id = id;
		this.user_id = user_id;
		this.card_number = card_number;
		this.card_Nominee = card_Nominee;
		this.create_date = create_date;
		this.update_date = update_date;
		this.date_of_expiry = date_of_expiry;
	}
	
	
	}
