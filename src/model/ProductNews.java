package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class ProductNews implements Serializable{
	private int id;
	private String news_text;
	private Timestamp news_date, create_date, update_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNews_text() {
		return news_text;
	}
	public void setNews_text(String news_text) {
		this.news_text = news_text;
	}
	public Timestamp getNews_date() {
		return news_date;
	}
	public void setNews_date(Timestamp news_date) {
		this.news_date = news_date;
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
	
	public ProductNews() {}
	
	public ProductNews(int id, String news_text, Timestamp news_date, Timestamp create_date, Timestamp update_date) {
		super();
		this.id = id;
		this.news_text = news_text;
		this.news_date = news_date;
		this.create_date = create_date;
		this.update_date = update_date;
	}
	
	
}
