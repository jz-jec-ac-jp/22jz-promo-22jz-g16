package model;

import java.io.Serializable;
import java.sql.Timestamp;

public class AdminUser implements Serializable{
		private int id;
		private String ad_mailadress , ad_password;
		private Timestamp  create_date, update_date;
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
		
		public AdminUser(){}
		
		public AdminUser(int id, String ad_mailadress, String ad_password, Timestamp create_date,
				Timestamp update_date) {
			super();
			this.id = id;
			this.ad_mailadress = ad_mailadress;
			this.ad_password = ad_password;
			this.create_date = create_date;
			this.update_date = update_date;
		}
		
		

}
