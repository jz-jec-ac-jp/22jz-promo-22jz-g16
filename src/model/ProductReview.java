package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductReview implements Serializable{

	private int id, product_id, user_id, review_rating;
	private String pictur_movieUrl, review_text, review_title;
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
	public int getReview_rating() {
		return review_rating;
	}
	public void setReview_rating(int review_rating) {
		this.review_rating = review_rating;
	}
	public String getPictur_movieUrl() {
		return pictur_movieUrl;
	}
	public void setPictur_movieUrl(String pictur_movieUrl) {
		this.pictur_movieUrl = pictur_movieUrl;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
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
	
	public ProductReview() {}
	
	public ProductReview(int id, int product_id, int user_id, int review_rating, String pictur_movieUrl,
			String review_text, String review_title, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.user_id = user_id;
		this.review_rating = review_rating;
		this.pictur_movieUrl = pictur_movieUrl;
		this.review_text = review_text;
		this.review_title = review_title;
		this.create_date = create_date;
		this.update_date = update_date;
	}

	
}
