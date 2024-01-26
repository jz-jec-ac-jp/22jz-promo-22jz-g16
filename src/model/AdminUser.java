package model;

import java.io.Serializable;
import java.time.LocalDateTime;

public class AdminUser  implements Serializable {
	int id;
	String ad_mailadress;
	String ad_password;
	LocalDateTime create_date;
	LocalDateTime update_date;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAd_mailadress() {
		return ad_mailadress;
	}
	public void setAd_mailadress(String ad_mailadress) {
		this.ad_mailadress = ad_mailadress;
	}
	public String getAd_password() {
		return ad_password;
	}
	public void setAd_password(String ad_password) {
		this.ad_password = ad_password;
	}
	public LocalDateTime getCreate_date() {
		return create_date;
	}
	public void setCreate_date(LocalDateTime create_date) {
		this.create_date = create_date;
	}
	public LocalDateTime getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(LocalDateTime update_date) {
		this.update_date = update_date;
	}
	
	public AdminUser() {}
	
	public AdminUser(String ad_mailadress, String ad_password) {
		this.ad_mailadress = ad_mailadress;
		this.ad_password = ad_password;
	}
	
	public AdminUser(int id, String ad_mailadress, String ad_password, LocalDateTime create_date,
			LocalDateTime update_date) {
//		super();
		this.id = id;
		this.ad_mailadress = ad_mailadress;
		this.ad_password = ad_password;
		this.create_date = create_date;
		this.update_date = update_date;
	}	
	
}
